cuisines = ["Australian", "American", "Brazilian", "British", "Caribbean", "Chinese", "Ethiopian", "French", "German", "Greek", "Indian", "Italian", "Japanese", "Korean", "Kosha", "Lebanese", "Mexican", "Philippines", "Spanish", "Thai", "Turkish", "Vietnamese", "Other"]

if Cuisine.count == 0
    cuisines.each do |cuisine|
        Cuisine.create(name: cuisine)
        puts "created with #{cuisine} cuisine"
    end
end
