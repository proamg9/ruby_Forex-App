# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

Please include instructions on how to setup and run your solution here.

I used Rubymine IDE to test my code during development.

I did run the test file on Mac terminal with the following command:

1. Cd into the tests folder within the package and then run the following

bundle exec ruby run_tests.rb

Please let me know if you need more information about how executed this etc..

## Your Design Decisions

I've tried to keep as much of the controller/services logic away from the entry point.
This should mean changing feeds or even to a response api source shouldn't require too much work.
  
The services module holds the source Feedfile init methods and handles the logic for grabbing data from it.

Currency exchange file holds the application logic.

I would assume a proper framework would handle this better but being Ruby novice, a framework will require more time.

##
We'd love to hear your thoughts around any design decisions you made while coding your solution.
# WebScraper
