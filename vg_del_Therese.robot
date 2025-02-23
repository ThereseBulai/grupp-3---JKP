
*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords_Therese.robot
Variables    variables.py

Test Setup    Open Browser To Home Page   ${url}    ${browser}
Test Teardown    Close Browser   

Documentation    The first 2 test are designed to test the booking of Safari Tour.
        ...      The next 3 are testing the registration function. To test the minimum and maximum limit of characters and what characters that are allowed in the password when user register new account.
        ...      The last one is just a extra testcase to book a ticket without being logged in.




*** Test Cases ***


#Book Safari
Try To Add Safari Tour To Cart Without Buying Ticket To Park
    [Tags]    Therese
    [Documentation]    Given that the user is on the website and logged in,
    ...                When the user tried to book a Safari tour before buying a ticket to the park, 
    ...                Then they should be presented with a message that they need to buy a ticket first
 
   Given User Is Logged In
   When User Try To Book Safari Tour Before Buying A Ticket To The Park
   Then User Should Be Presented With Error Message That They Need To Buy Ticket






Try To Book Safari Tour On Weekend With Regular Ticket 
    [Tags]    Therese
    [Documentation]    Given that the user is on the website and logged in 
    ...                When the user try to book a Safari tour on the weekend with a regular ticket, 
    ...                Then they should be presented with a message that they need VIP-ticket.

    Given User Is Logged In
    When User Try To Book Safari Tour On The Weekend With A Regular Ticket
    Then User Should Be Presented With Error Message That They Need A Vip Ticket




#Register new account - test password
Try To Register New Account - What Is the Minimum Limit Of Characters
   [Tags]    Therese
    [Documentation]    Note: The minimum limit of charactes the users need is 8 in order to register a new account.

    ...                Given that the user is on the webpage
                ...    When the user register a new account
                ...    And type in username and the password shorter than 8
                ...    Then they should be presented with an error message

    Given User is On The Page To Register
    When User Try To Register New Account And Type in A Password Shorter Than Eight
    Then User Should Be Presented With an Error Message





Try To Register New Account - What Is the Maximim Limit Of Characters
    [Tags]    Therese
    [Documentation]    Note: There is no limit for how many charactes a user can have in their password.

    ...                Given that the user is on the webpage
                ...    When the user register a new account
                ...    And type in username and the password longer than 8
                ...    Then they should be able to register the account

    Given User is On The Page To Register
    When User Try To Register New Account And Type in A Password Longer Than Eight
    Then User Should Be Presented With Message That Registration Was Successful




Try To Register New Account - What Characters are allowed
    [Tags]    Therese
    [Documentation]    Note: There is no limit what charactes that are not allowed in the users password.

    ...                Given that the user is on the webpage
                ...    When the user register a new account
                ...    And type in a password of their choice
                ...    Then they should be able to register the account

    Given User is On The Page To Register
    When User Try To Register New Account And Type in A Password With Different Characters
    Then User Should Be Presented With Message That Registration Was Successful






#Test to try to book a ticket if user is not logged in.
# Added one extra test just for fun

Try To Book A Ticket Without Being Logged In
    [Tags]    Therese
    [Documentation]    Given that the user is on the website, 
    ...                When the user try to buy a ticket without being logged in, 
    ...                Then they should be presented with a message that they need to be logged in
    
    Given User Is On Buy Tickets On The Website
    When User Try To Buy Ticket Without Being Logged In
    Then User Should Be Presented With An Error Message That They Need To Be Logged In
