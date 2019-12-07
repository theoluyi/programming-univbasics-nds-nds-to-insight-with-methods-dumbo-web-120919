require 'directors_database'

# learn --fail-fast

# INSTRUCTIONS
# Write a method that, given an NDS creates a new Hash
# The return value should be like: { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  
  director_gross = {}
  director_index = 0
  director_data = nds[director_index]
  director_name = director_data[:name]
  
  while director_index < nds.count do
    new_director_gross = gross_for_director(director_data)
    director_gross[director_name] = new_director_gross
    
    director_index += 1
    
    puts director_index
    puts director_name
    puts gross_for_director(director_data)
    
  end
  
  director_gross
end



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


# Note to self: this is the first order method 

def gross_for_director(director_data)
    
  result = {}
  movie_gross = 0
  movie_index = 0
  
  director_movies = director_data[:movies] # this is pointing to an array of hashes
  puts director_movies
  director_name = director_data[:name] # √
  
  while movie_index < director_movies.count do
    movie_gross += director_movies[movie_index][:worldwide_gross]
    movie_index +=1
  end
  
  movie_gross 
end





#---------------------------------

# def directors_totals(nds)
  
#     director_gross = {}
#     movie_gross = 0
#     movie_index = 0
#     director_movies = nds[director_index][:movies]
#     director_name = nds[director_index][:name]
    
#     while movie_index < director_movies.count do
#       movie_gross += director_movies[movie_index][:worldwide_gross] 
#       movie_index +=1
#     end
    
#     director_gross[director_name] = movie_gross
    
# end