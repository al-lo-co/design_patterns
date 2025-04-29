module ModuleSingleton
  def self.name=(name)
    @name = name
  end

  def self.name
    @name
  end
end

p ModuleSingleton.name = 'Pepe'
p ModuleSingleton.name