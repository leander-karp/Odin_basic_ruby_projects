def substrings(sequence_to_check="", valid_substrings=nil)
  sequence_to_check.downcase!

  if valid_substrings == nil
    valid_substrings = []
  end
  
  substring_counter = Hash.new(0)
  valid_substrings.each {|substring|
    ocurrences = sequence_to_check.scan(substring).length
    if ocurrences != 0
      substring_counter[substring] += ocurrences
    end 
  } 
  return substring_counter
end 

def test
  expected_result = {
    "down" => 1, "go" => 1, "going" => 1, 
    "how" => 2, "howdy" => 1, "it" => 2,
    "i" => 3, "own" => 1, "part" => 1, 
    "partner" => 1, "sit" => 1 }
  dictionary = [
    "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  result = substrings("Howdy partner, sit down! How's it going?", dictionary)

  p result
  p expected_result == result
end 

test