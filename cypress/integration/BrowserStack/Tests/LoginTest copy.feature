Feature:  I want to login into the site with valid and invalid data

Scenario Outline: Login Validation

        Given I navigate to the Website
        When I enter "<email>" and "<validpassword>" to login Page
        And  User click on sign in button
        Then Validate the "<title>" after login


        Example: 
            | email                    | validpassword |title|
            | qatubeupdate@yopmail.com | 12345         | Home   |
            | qatubeupdate@yopmail.com | 12345         | Home   |
            | qatubeupdate@yopmail.com | 12345         | Home   |
            | qatubeupdate@yopmail.com | 12345         | Home   |