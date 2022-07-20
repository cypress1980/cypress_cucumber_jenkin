Feature:  I want to login into the site with valid and invalid data and search T-shirt

    Background:
        Given I navigate to the Website

    Scenario: Login as new sign up user with valid data
        When I entered valid credential
            | email                    | validpassword |
            | qatubeupdate@yopmail.com | 12345         |
        When User click on sign in button
    Scenario: Search T-shirts from the site
        When I entered the search criteria
            | serachtext |
            | T-shirts   |
        And Click on serach button
        Then Validate the T-shirt name
            | tshirtName                  |
            | Faded Short Sleeve T-shirts |