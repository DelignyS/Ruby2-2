require_relative "./Big_data.rb"

def count_handles_with_length(handles, length)
  count = handles.count { |handle| handle.length - handle.count('@') == length }
  return count
end

# Length I want
length = 5

# Call of the method
count = count_handles_with_length(handles_tweutteur, length)

puts "There are #{count} handles that contain #{length} without '@' in front."

def count_handles_starting_with_capital(handles)
  count = handles.count do |handle|
    handle[1] == handle[1].upcase && ('A'..'Z').include?(handle[1])
  end
  return count
end

count = count_handles_starting_with_capital(handles_tweutteur)

puts " #{count} Handles that begins with an uppercase"
