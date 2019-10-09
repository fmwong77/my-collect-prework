def my_collect(array)
  i = 0
  first_name = []
  while i < array.size do
    first_name.push(yield(array[i])) if block_given?
    i += 1
  end

  first_name
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

