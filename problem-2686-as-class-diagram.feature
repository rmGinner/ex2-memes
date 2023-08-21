@smoke @atm
Feature: Julius get time from degrees
  
Scenario Outline: Valid degree
  Given the degree is between $<minimum-degree> and $<maximum-degree>
   When the Julius sends $<degree>
   Then the system gives $<time>
  Examples: 
    | minimum-degree | maximum-degree| degree | time     |
    | 0              | 360           | 1.50   | 06:06:00 | 
    
Scenario Outline: Invalid degree
  Given the degree is not between $<minimum-degree> and $<maximum-degree>
   When the Julius sends $<degree>
   Then the system gives $<invalid-degree-message-error>
  Examples: 
    | minimum-degree | maximum-degree| invalid-degree | invalid-degree-message-error |
    | 0              | 360           | -1.00          | The degree is invalid.       | 
  
  
  
  
