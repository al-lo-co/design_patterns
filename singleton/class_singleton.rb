class ClassSingleton
  def self.name=(name)
    @name = name
  end

  def self.name
    @name
  end
end

p ClassSingleton.name = 'John'
p ClassSingleton.name