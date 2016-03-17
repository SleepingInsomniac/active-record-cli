puts "Things:"
Thing.find_each do |thing|
  puts "#{thing.id}: #{thing.name}"
end

thing = Thing.new(name: 'a thing')
thing.save

puts "#{thing.id}: #{thing.name}"
