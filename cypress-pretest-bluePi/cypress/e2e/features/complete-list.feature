Feature: To Do Tasks List

    Feature view to-do tasks list

    Background:
        Given Open browser and go to "https://abhigyank.github.io/To-Do-List/"

    Scenario: Check data to-do tasks completed
        When I view to-do tasks completed
        Then Completed Tasks list is correct

    Scenario: Delete tasks completed
        When I click button Delete at task completed
        Then Delete at task completed correct