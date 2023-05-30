Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

```ruby
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
```

## Problem: 

**Input**: String 
**Output**: String that collapses consecutively occuring duplicate characters into one character
**Explicit Rules**: Collapse all consecutively occuring characters in the string into one character
**Implicit Rules**: Empty returns empty

## Examples: 

```ruby
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
```

## Data Structures: 

Input is a String
Intermediate DS : Array may be used
Output is a String

## Algorithm

START
METHOD DEFINITION crunch (String)
  Iterate throug the string starting at second char in string
    If the current char == previous char, then delete current char
    Repeat until reach end of string
END METHOD
END

# Further Exploration

You may have noticed that we continue iterating until index points past the end of the string. As a result, on the last iteration text[index] is the last character in text, while text[index + 1] is nil. Why do we do this? What happens if we stop iterating when index is equal to text.length?

**Answer** Need to iterate to the end of the string in order to ensure the last character that is being compared is included in the return string. Since we know that the character after the last will always be `nil` and therefore not the same as the character at [index], it will be included into the return String without any issue.

The output will be the same even if we stop iterating when index is equal to the text lenght. Because the index starts at zero, the object returned at the text length index will be nil. The object returned at the index + 1 will also be nil on that iteration. Because the last value is nil, it will be included as empty spot in the string, hence the entire string is returned without being affected by the `nil` objects returned on the extra iteration.

Can you determine why we didn't use String#each_char or String#chars to iterate through the string? How would you update this method to use String#each_char or String#chars?

String#each_char is a destructive method. In order to use this method effectively, the altered String object would need to be continuosly saved into a different variable. It would also be difficult to track the index of each String, if a character were to be deleted from it on every other iteration. 

String#chars can be used however, because Strings characters can already be accessed via index, it is not necessary to convert the String into an array first.