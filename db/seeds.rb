
Pokemon.destroy_all

(1..151).each do |n|
  poke_data = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{n}")

  Pokemon.create! do |p|
    p.name = poke_data['name'].capitalize
    p.type = poke_data['types'].map{|t| t['type']['name'].capitalize}
    p.sprite = poke_data['sprites']['front_shiny']
    p.height = poke_data['height']
    p.weight = poke_data['weight']
  end
end
