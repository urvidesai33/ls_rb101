Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

```ruby
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
```

## Problem
The method should convert a floating point number that represents the size of an angle, and convert it to a String that represents the angle size in Degrees, Minutes and Seconds. 

Input: Floating point number
Output: String that represents the angle size in Degrees, Minutes and Seconds. 

### Implicit Rules
- Output should be 2 digit integers for minutes and seconds

## Examples
```ruby
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

```

## Data Structures
CONSTANTS - DEGREES, # to convert to minutes/seconds
String - to concatenate the results and symbols

## Algorithm

CONSTANT DEGREE SYMBOL
CONSTANT MINUTE SYMBOL
CONSTANT SECOND SYMBOL
CONSTANT NUMBER CONVERSION_FACTOR = 60


START
METHOD DEFINITION dms(float)
  DEGREES =  float.to_i
  MINUTES_AS_FLOAT = (float - float.to_i) * CONVERSION_FACTOR
  Convert to INTEGER to get just MINUTES
  SECONDS = (MINUTES - MINUTES.to_i) * CONVERSION_FACTOR
  Convert SECONDS to Integer
  Concatenate DEGREES, MINUTES and SECONDS with their respective symbols
    Add Padding so Minutes and Seconds are always 2 digits
END
