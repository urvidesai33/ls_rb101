Longest Sentence

Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

Example text:
```ruby
"Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."
```

  # Problem
  - Separate the text into sentences
  - Determine the longest sentence by counting the number of words in each.

  - Input: Long Text
  - Output: Longest sentence, number of words in it

  # Examples

  The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

  # Data Structure
  Strings, Arrays


  # Algorithm
   Separate out the sentences from the text
    - full stop (".", "!", "?") is the separator
   Store the sentences in an array
   Go over each sentence and count the words
    - space (" ") is the separator
    Print out the element (sentence) in the array with the most number of words
    Print out the number of words.
  # Code
```