cases = parse(Int64,readline())
# read the first line for the cases
cases = collect(1:cases)
# create a collection to readlines for all cases
faulty_statement = map(x -> readline(), cases)

# we need the last value in the string to get the power
# use anonymous function to parse to ints and get the power from the collection
powers = map(x -> parse(Int64, last(x)), faulty_statement)
# Remember: I'm still holding the original array in memory

original_numbers = map(x -> parse(Int64, chop(x)), faulty_statement)
# We have the original strings but we don't need the last character, so we just chop it

# Finally, we can map one array over another array with a function of our choosing
# This says: For every element in this array, apply this function over the other:
# We need to apply our exponential function, so that's what we do on line 19
final_set = map(original_numbers, powers) do original_numbers, powers
    original_numbers ^ powers
end

# The reduce function lets us collapse an array to one value by calling it recursively
reduce(+, final_set) |> print
