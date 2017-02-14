json.array! @heroes.each do |hero|
  json.partial! 'hero.json.jbuilder', hero: hero
end