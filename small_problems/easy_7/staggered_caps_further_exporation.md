Further Exploration

Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state. That is, you want a method that can perform the same actions that this method does, or operates like the previous version.

Hint: Use a keyword argument.


# Problem

Be able to select how to stagger the caps
  - either ignore the non alphabetical characters (alter every letter)
  - alter with every character (of course case of character will not change if it's not alphabetical)

# Algorithm

     Stagger1 - Alter every letter
     Stagger2 - Alter every character

     Use a keyword argument in the method to select the stagger style - keyword is a boolean

     staggered_case(string, stagger_by_letter)

     if stagger_by_letter
      then stagger1
    else 
      stagger2
    end
