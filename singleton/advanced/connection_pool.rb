# frozen_string_literal: true

equire 'singleton'

class ConnectionPool
  include Singleton

  def initialize
    @available_connections = []
    @in_use_connections = []
    5.times { @available_connections << "DBConnection-#{rand(1000)}" }
  end

  def checkout
    conn = @available_connections.pop
    if conn
      @in_use_connections << conn
      puts "Checked out: #{conn}"
      conn
    else
      puts 'No available connections!'
      nil
    end
  end

  def checkin(conn)
    if @in_use_connections.delete(conn)
      @available_connections << conn
      puts "Checked in: #{conn}"
    else
      puts 'Connection not recognized.'
    end
  end

  def status
    {
      available: @available_connections.count,
      in_use: @in_use_connections.count
    }
  end
end

# Usage
pool = ConnectionPool.instance
conn1 = pool.checkout
pool.checkout
puts pool.status
pool.checkin(conn1)
puts pool.status
