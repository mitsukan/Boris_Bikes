London's Boris Bikes (well, 'Santander Cycles') are awesome. Anyone can hire out a bike and ride it around London.
Welcome to being a developer

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

To help structure your work, here are 22 challenges. They all build on one another. They require you to research things, to get stuck, and to find your own solutions. This is on purpose. A developer is a 'knowledge worker' - someone who will spend the majority of their time researching and learning how to solve problems. It'll suck for a bit, but with practice, you will get faster: and there's no better feeling than finding the answer to a problem that's been standing in your way for hours.



Day 4 Jihin and Mona
Challenge 11: Using instance variables

As Mona has not done this, we are going to do this from scratch. Firstly, we will be creating another table of Object and Messages to work out the 2 user stories:

First user story:
Objects 	Messages
Person 	Return bike
Bike 	
Docking station 	Dock bike

Second user story:
Objects 	Messages
Person 	Check if bike docked
Bike 	
Docking station 	

We then went through the process of TDD to hammer in the concept while we were working on this challenge:

    We go into irb and go through the lines of code to meet the specification. In this case, we wanted to see if we can "dock a bike at a docking station", or station.dock.
    We get an error message explaining the issue (there is no method)
    We write an rspec to test whether a method exists
    Run the RSpec. This test should have an error code that is the same as the error message in step 3.
    Once we have matching errors, we can now go into the code and fix BOTH the errors that were established.
    PASS THOSE TESTS!

Once those tests have been passed, we can then move onto the next step.
