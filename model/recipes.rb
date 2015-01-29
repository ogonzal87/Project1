require_relative './recipe'

class Recipes

  def self.all
    [
      Recipe.new(id: 1, 
        name: 'Gin Gimlet', 
        description: 'jjh', 
        ingredients: '1.25 oz Tanqueray gin, 1 oz Rose-s lime juice, 1 twist lime', 
        time: 'djh', 
        directions: 'Pour the gin and lime juice into a mixing glass half-filled with ice cubes. Stir well. Strain into a cocktail glass and garnish with the lime wedge.'),
      Recipe.new(id: 2, 
        name: 'Side Car', 
        description: 'kjh', 
        ingredients: '3/4 oz triple sec, 1/2 oz cognac, 3/4 oz lemon juice', 
        time: 'Less than 5 minutes!', 
        directions: 'Shake ingredients with ice and strain into a chilled cocktail glass. Garnish with a twist of lemon peel.'),
      Recipe.new(id: 3, 
        name: 'Old Fashioned', 
        description: 'mkjhg', 
        ingredients: '2 oz bourbon whiskey, 2 dashes Angostura® bitters, 1 splash water, 1 tsp sugar, 1 maraschino cherry, 1 orange wedge', 
        time: 'kh', 
        directions: 'Mix sugar, water and angostura bitters in an old-fashioned glass. Drop in a cherry and an orange wedge. Muddle into a paste using a muddler or the back end of a spoon. Pour in bourbon, fill with ice cubes, and stir.')
    ]
  end

  def self.find(id)
    all.find do |item|
      item.id == id
    end
  end

  def self.search(pattern)
    all.select do |item|
      item.category.downcase.include?(pattern.downcase) ||
      item.name.downcase.include?(pattern.downcase) ||
      item.description.downcase.include?(pattern.downcase)
    end
  end
end
