require_relative './recipe'

class Recipes

  def self.all
    [
      Recipe.new(id: 1, 
        name: 'Gin Gimlet', 
        description: 'jjh', 
        ingredients: 'test', 
        time: 'djh', 
        directions: 'test'
        ),
      Recipe.new(id: 2, 
        name: 'Side Car', 
        description: 'kjh', 
        ingredients: 'test', 
        time: 'Less than 5 minutes!', 
        directions: ''
        ),
      Recipe.new(id: 3, 
        name: 'Old Fashioned', 
        description: 'mkjhg', 
        ingredients: '', 
        time: 'kh', 
        directions: 'test')
    ]
  end

  def self.find(id)
    all.find do |item|
      item.id == id
    end
  end

 def self.search(pattern)
    all.select do |item|
      item.name.downcase.include?(pattern.downcase) ||
      item.description.downcase.include?(pattern.downcase)
    end
  end

end
