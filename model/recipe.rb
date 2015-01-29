class Recipe

  attr_reader :id, :name, :description, :ingredients, :time, :directions

  def initialize(args)
    @id           = args[:id]
    @name         = args[:name]
    @description  = args[:description]
    @ingredients  = args[:ingredients]
    @time         = args[:time]
    @directions   = args[:directions]
  end

  def to_s
    "ID: #{@id}, Name: #{@name}, Description: #{@description}, Ingredients: #{@ingredients}, Time: #{@time}, Directions: #{@directions}."
  end
end
