# Boris Bikes

The first project in the Makers Bootcamp, Week 1

-------------------------

THe idea behind this 22 step challenge is to familiarize ourselves with practical Test Driven Development using RSpec, Ruby, the command line (pry or irb), git, and GitHub. We also track our progress, learning experiences and goals on Diode.

I wrote out my process in this README file, as a reminder for when I attempt the air traffic controller challenge.

-----------------------------

## 1. Set up Project

## 2. User Stories

Translate two user stories -  

*As a person,  
So that I can use a bike,  
I'd like a docking station to release a bike.*    

*As a person,  
So that I can use a good bike,  
I'd like to see if a bike is working*  

into a functional representation inside a table, sorted by nouns and verbs  

**NOUNS**
person, docking station, bike

**VERBS**
use, release, see (if working)

**TABLE**

| Objects | Messages |
|---|---|
docking_station|release|
|bike|bike_works?|

## Visual Representation of how objects communicate

**docking_station --> release_bike --> bike --> person**  
**person --> bike_works? --> use_bike**

## 3 & 4. Feature test errors

In 3. we created this error:

`2.4.1 :001 > docking_station = DockingStation
  NameError: uninitialized constant DockingStation
  from (irb):1
  from /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in '<main>'`
  
**Type of error:** Name error  

**File path:** /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in '<main>'  

**Line number:** 1  

**What does it mean?:** the name we wrote down is undefined  

**How to solve error?:** Define or initialize the name  
  
## 5. Unit tests

Although we ran Rspec, we got a Ruby error only.
This is because we have not written any Rspec rules/tests for our code yet (we think).

## 6. Pass first unit test

Created new file for DockingStation class, and defined the class.
Used require to link files.
Explained difference in rspec findings.

## 7. Ran feature test & fixed code for unit test

## 8. Added release_bike method

## 9. Built a bike

## 10. Actioned release_bike method

## 11. Used instance variables & attribute reader

## 12. Raising exceptions (error tests)

New user story:

*As a member of the public,  
So that I am not confused and charged unnecessarily,  
I'd like docking stations not to release bikes when there are none available.*

Learnt new Ruby `fail` method, and RSpec {} syntax for exceptions

## 13. Limit the capacity

New user story:

*As a maintainer of the system,      
So that I can control the distribution of bikes,    
I'd like docking stations not to accept more bikes than their capacity.*

Added error message if docking station ran out of space (full capacity) and stops user from docking bike there.

## 14. Complex attributes

New user story:

*As a system maintainer,  
So that I can plan the distribution of bikes,  
I want a docking station to have a default   capacity of 20 bikes.*  

Wrapped collections

## 15. Single responsibility

## 16. Defining constants

## 17. 
