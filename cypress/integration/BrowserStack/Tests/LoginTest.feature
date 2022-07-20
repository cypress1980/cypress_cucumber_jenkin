Feature:  I want to login into the site with valid and invalid data

    Background:
        Given I navigate to the Website
    @SmokeTest
    Scenario: Login as new sign up user with valid data : QA-135,QA-156
        When I entered valid credential
            | email                    | validpassword |
            | qatubeupdate@yopmail.com | 12345         |
        When User click on sign in button
        Then Validate the title after login

    @SanityTest
    Scenario: Login with invalid data by entering invalid password : QA-56,QA-156
        When I entered invalid credential
            | email                    | invalidpassword |
            | qatubeupdate@yopmail.com | 123456          |
        When User click on sign in button
        Then Error message should display
            | errormessage          |
            | Authentication failed |