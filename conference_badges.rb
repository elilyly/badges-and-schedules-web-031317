def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.collect { |name| badge_maker(name) }
end

def assign_rooms(names)
  rooms = []
  names.each_with_index do |name, index|
    rooms.push "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  rooms
end

def printer(names)
  batch_badge_creator(names).each { |badge| puts badge }
  assign_rooms(names).each { |room_assignment| puts room_assignment }
end
