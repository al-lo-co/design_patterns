# frozen_string_literal: true

ConstantSingleton = Struct.new(:name)

MY_SINGLETON = ConstantSingleton.new('John')

p MY_SINGLETON.name
