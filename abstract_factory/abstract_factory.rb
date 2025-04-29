#isolate conditional instantiations objects

#Product interface
class Table
  def leg_count = raise('not implemented')
end

class Chair
  def material = raise('not implemented')
end

class ModernChair < Chair
  def leg_count = 5
end

class ModernTable < Table
  def material = 'Metal'
end

class VintageChair < Chair
  def leg_count = 4
end

class VintageTable < Table
  def material = 'wood'
end

#abstract factory, the abstract class defines the interface of the variant type
class FurnitureFactory
  def create_chair = raise('not implemented')
  def create_table = raise('not implemented')
end

#the variant type class decides the instance type
class ModernFurnitureFactory < FurnitureFactory
  def create_chair = ModernChair.new
  def create_table = ModernTable.new
end

class VintageFurnitureFactory < FurnitureFactory
  def create_chair = VintageChair.new
  def create_table = VintageTable.new
end

#Here is the magic, the methods are the same with different result after call any factory
def client_code factory
  chair = factory.create_chair
  table = factory.create_table

  puts "Chair #{chair.leg_count}"

  puts "Table #{table.material}"
end

modern_factory = ModernFurnitureFactory.new
vintage_factory = VintageFurnitureFactory.new

client_code(modern_factory)
puts "-" * 72
client_code(vintage_factory)