# Boris Bikes

*The first project in the Makers Bootcamp, Week 1*

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

# 7. 


  
 





