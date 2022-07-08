def sub_string(string, array)
  lowered_string = string.downcase
  result = Hash.new(0)
  array.each do |word|
    matches = lowered_string.scan(word).count
    result[word] = matches
  end
  puts result
end

dict = %w[below down go going horn how howdy it i low own part partner sit]

sub_string('below low siti it', dict)
