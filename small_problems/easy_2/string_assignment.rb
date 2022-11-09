name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name 
# => Alice
#    Bob

name = 'Bob' # Save the string 'Bob' in variable name
save_name = name # save_name is also pointing to name which contains string 'Bob'
name.upcase! # mutate the string in variable name to all uppercase
puts name, save_name # output the same string as both variables are pointing to the same string

# => BOB
#    BOB

# Can you explain these results?

#