require_relative './recipe'

class Recipes

  def self.all
    [
      Recipe.new(id: 1, 
        name: 'test 1', 
        description: 'test', 
        ingredients: 'test', 
        time: 'test', 
        directions: 'test'
        ),
      Recipe.new(id: 2, 
        name: 'test 2', 
        description: 'test', 
        ingredients: 'test', 
        time: 'test', 
        directions: 'test'
        ),
      Recipe.new(id: 3, 
        name: 'test', 
        description: 'test', 
        ingredients: 'test', 
        time: 'test', 
        directions: 'test'
        )
    ]
  end

  def self.find(id)
    self.all.find do |item|
      item.id == id
    end
  end

#   def self.search(pattern)
#     all.select do |item|
#       item.name.downcase.include?(pattern.downcase) ||
#       item.description.downcase.include?(pattern.downcase)
#     end
#   end
end
