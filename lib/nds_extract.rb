$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  # pp  source
  while director_index < source.size do
    director = source[director_index]
    # pp director
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  # pp result
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  # puts total
  total
end

def list_of_directors(source)
  pp source
  directors = []
  
  # source.each { |name|
  #   directors << 
  # }
  
  row_index = 0 
  while row_index < source.length do
    directors << source[row_index][:names]
    row_index += 1
  end
  puts directors
  directors
  
  # Write this implementation
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  # gross_total = 0
  # index = 0 
  # len = list_of_directors(source).length 
  # while index < len do 
  #   gross_total += gross_for_director(list_of_directors(source)[index])
  # end
  
  # gross_total += 
  
  

end


