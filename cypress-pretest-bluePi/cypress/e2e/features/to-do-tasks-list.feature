Feature: To Do Tasks List

    Feature view to-do tasks list

    Background:
        Given Open browser and go to "https://abhigyank.github.io/To-Do-List/"

    Scenario: Check data to-do tasks correct
        When I view to-do tasks
        Then To Do Tasks list is correct

    Scenario: Select box list to-do tasks at complete
        When I select to-do tasks at complete
        Then To Do Tasks list is complete and Task list leave to complete tabs

    Scenario: Delete to-do task
        When I click button Delete at to-do task
        Then Delete at to-do task correct
