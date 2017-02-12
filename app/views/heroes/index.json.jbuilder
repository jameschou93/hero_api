json.array! @heroes.each do |hero|
  json.id hero.id
  json.name hero.name
  json.power hero.power
  json.bad_guy hero.bad_guy
end