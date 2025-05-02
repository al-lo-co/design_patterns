# frozen_string_literal: true

require 'singleton'

# Fixes two issues, Ensure that a class has just a single instance and Provide a global access point to that instance
class SingletonModule
  include Singleton

  attr_accessor :name
end

sdb_users = SingletonModule.instance
sdb_users.name = ('users')

puts sdb_users.name

sbd_emails = SingletonModule.instance
puts sbd_emails.name
