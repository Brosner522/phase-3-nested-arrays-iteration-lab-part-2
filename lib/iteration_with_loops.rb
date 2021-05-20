require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results = []
  row = 0
  while row < src.count do
    element_place = 0
    inner_results = []
    lowest_value = 100
    while element_place < src[row].count do
      if src[row][element_place] < lowest_value
        lowest_value = src[row][element_place]
      end
      element_place += 1
    end
    outer_results << lowest_value
    row += 1
  end
  outer_results
  # binding.pry
end
