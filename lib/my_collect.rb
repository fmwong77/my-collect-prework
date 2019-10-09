def my_collect(array)
  i = 0
  while i < array.size do
    yield(array[i]) if block_given?
    i += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

