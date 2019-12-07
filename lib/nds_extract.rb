require 'directors_database'

# learn --fail-fast

# INSTRUCTIONS
# Write a method that, given an NDS creates a new Hash
# The return value should be like: { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  
  director_gross = {}
  nil ### idk what this is
  director_index = 0
  
  while director_index < nds.count do
    director_data = nds[director_index] ### relocated
    director_gross[director_data[:name]] = gross_for_director(director_data) ### reduced number of variables and lines of code
    
    director_index += 1
  end
  
  director_gross
end



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


# Note to self: this is the first order method 

def gross_for_director(director_data)
  movie_gross = 0
  movie_index = 0
  
  director_movies = director_data[:movies] # this is pointing to an array of hashes
  
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