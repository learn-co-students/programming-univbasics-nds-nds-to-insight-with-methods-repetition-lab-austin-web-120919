$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
#retuns an array of :name =>, gross_for_director
def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end
#totaling all movies per director
def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end
# returns an array of directors ["Shpeilberg", "Julio", etc...]
def list_of_directors(source)
  # Write this implementation
  list = []
  director_list = 0
  while director_list < source.size do
    list << source[director_list][:name]
    director_list += 1
  end
  list
end

def total_gross(source)
  # Write this implementation
  total = 0
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
# use list_of_directors to find the key in director totals.
  list_of_directors(source).each do |var|
    # var.each do
      total += directors_totals(source)[var]



      # binding.pry

  end
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  total
end
