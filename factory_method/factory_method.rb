# frozen_string_literal: true

require 'json'

# Abstract class from which all this user classes inherits from
class UserBase
  def first_name = raise('not implemented first name')
  def last_name = raise('not implemented last name')
end

# subclasses should have implemented parent methods
class Admin < UserBase; end

class Member < UserBase
  def first_name = 'John'
  def last_name = 'Doe'
end

class Guest < UserBase; end

# class Endpoint
#   def home(params)
#     if user_type == 'admin'
#       Admin.new
#     elsif user_type == 'member'
#       Member.new
#     else
#       Guest.new
#     end
#
#     full_name = [user.first_name, user.last_name].join(" ")
#     { name: full_name }.json
#   end
#
#   def contact(params)
#     if user_type == 'admin'
#       Admin.new
#     elsif user_type == 'member'
#       Member.new
#     else
#       Guest.new
#     end
#
#     user = UserFactory.call(params[:user_type])
#     { first_name: user.first_name }.to_json
#   end
# end
# =
# Refactor to this

class UserFactory
  # encapsulated logic in this method
  def self.call(user_type)
    if user_type == 'admin'
      Admin.new
    elsif user_type == 'member'
      Member.new
    else
      Guest.new
    end
  end
end

class Endpoint
  def home(params)
    user = UserFactory.call(params[:user_type])
    full_name = [user.first_name, user.last_name].join(' ')
    { name: full_name }.json
  end

  def contact(params)
    user = UserFactory.call(params[:user_type])
    { first_name: user.first_name }
  end
end

endpoint = Endpoint.new

# puts endpoint.home({ user_type: 'admin' })

puts endpoint.contact({ user_type: 'member' })

# puts endpoint.contact({ user_type: 'guest' })
