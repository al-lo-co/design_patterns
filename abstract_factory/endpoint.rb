require_relative "./furniture/factory.rb"

class Endpoint
  def self.category(params)
    category = params['category'].to_sym
    factory = Furniture::Factory.for(category)
    chair = factory.create_chair
    table = factory.create_table
  
    puts <<~TEXT 
      Chair legs #{chair.leg_count}
      Table material #{table.material}
    TEXT
  end
end

params = { "category" => 'modern' }

Endpoint.category(params)