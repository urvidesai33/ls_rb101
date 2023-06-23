Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

Example:

```ruby
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."
```

  # Problem
  Input: Array of Strings, Hash with String values
  Output: String
  ## Rules
  ### Explicit
  - Use the strings in the array to create a greeting using full name
  - Use the title and occupation in the string as well
  - the return value is a greeting  using all the strings from the inputs.

  # Examples
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."


  # Data Structure

  String, Hash, Array

  # Algorithm

  greetings(name_strings_array, occupation_strings_hash)
  concatenate the strings from array to create the full name and use it in the greeting.
  interpolate the title and occupation from the hash into the greeting
  END

  # Code