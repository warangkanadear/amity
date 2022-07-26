Feature: Add Items

    Feature Add item for To Do List

    Background:
        Given Open browser and go to web "https://abhigyank.github.io/To-Do-List/"

    Scenario Outline: Add item is type Thai language
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"
        Examples:
            | text |
            | ทดสอบระบุข้อมูลเป็นภาษาไทย |

    Scenario Outline: Add item is type English language
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"
     Examples:
         | text |
         | Testing is Type English language |
         
    Scenario Outline: Add item is type special characters
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"      
     Examples:
         | text |
         | /*=/+-&&^^$\#%$/</br><b>Test++</b> |
         | <P>This is a paragraph.</P> |

    Scenario Outline: Add item is type maximum characters
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"  
     Examples:
         | text |
         | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|

    Scenario Outline: Add item is type minimum characters
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"  
     Examples:
         | text |
         | A |

    Scenario Outline: Add item is type numbers
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"  
     Examples:
         | text |
         | 12323121231234334314 |

     Scenario Outline: Add item is type numbers minus
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"  
     Examples:
         | text |
         | -59 |    
         | -0.5 |
         | 0.18 |
         
     Scenario Outline: Add item is type numbers percent
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"  
     Examples:
         | text |
         | 60% |    
         | 99.6% |

#     Scenario Outline: Add item is type blank spaces
#         When I key in too type "<text>"
#         And Click the Add button
#         Then Correct add item to to do list "<text>"
#      Examples:
#          | text |
#          |  |

    Scenario Outline: Add item is copy place item
        When I key in too type "<text>"
        And Click the Add button
        Then Correct add item to to do list "<text>"  
        Examples:
         | text |
        | ทดสอบระบุข้อมูลเป็นภาษาไทย ๑ |
        | Testing is Type English language |
