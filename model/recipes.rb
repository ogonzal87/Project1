require_relative './recipe'

class Recipes

  def self.all
    [
      Recipe.new(id: 1, 
        name: 'Gin Gimlet', 
        description: 'jjh', 
        ingredients: '2 dashes Angostura® bitters, 1 splash water, 1 tsp sugar, 1 maraschino cherry, 1 orange wedge', 
        time: 'Less than 5 minutes!', 
        directions: 'Pour the gin and lime juice into a mixing glass half-filled with ice cubes. Stir well. Strain into a cocktail glass and garnish with the lime wedge.',
        image_file: '4_person_tent.jpg'
        ),
      Recipe.new(id: 2, 
        name: 'Side Car', 
        description: 'kjh', 
        ingredients: 'test', 
        time: 'Less than 5 minutes!', 
        directions: 'Shake ingredients with ice and strain into a chilled cocktail glass. Garnish with a twist of lemon peel.',
        image_file: 'sidecar.jpg'
        ),
      Recipe.new(id: 3, 
        name: 'Old Fashioned', 
        description: 'mkjhg', 
        ingredients: 'heloe', 
        time: 'Less than 5 minutes!', 
        directions: 'Mix sugar, water and angostura bitters in an old-fashioned glass. Drop in a cherry and an orange wedge. Muddle into a paste using a muddler or the back end of a spoon. Pour in bourbon, fill with ice cubes, and stir.',
        image_file: '4_person_tent.jpg')
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
