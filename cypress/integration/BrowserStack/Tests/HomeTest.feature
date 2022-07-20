Feature:  I want open the Site and verify  links in Home Page 

    Background:
        Given I navigate to the Website

    Scenario: Verify content in Home Page
        When I views links in Home Page of the Site 
            | HomePageLinks                    |
            | Contact us                       |
            | Sign in                          |
            | Women                            |
            | Popular                          |
            | Best Seller                      |
            | Cart                             |
       