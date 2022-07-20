import login from "../../Pages/LoginPage/loginPage";
import search from "../../Pages/SearchPage/searchPage";

// Scenario 1 : Login with Valid crediential
Given("I navigate to the Website", () => {
  cy.visit("http://automationpractice.com/");
});
When("I entered valid crediential", (datatable) => {
  datatable.hashes().forEach((element) => {
    login.enterUserNamePassword(element.email, element.validpassword);
  });
});
When("User click on sign in button", () => {
  login.clickOnSignInButton();
});
// Scenario 2 : Do Search
When("I entered the search criteria", (datatable) => {
  datatable.hashes().forEach((element) => {
    cy.get("#searchbox").type(element.serachtext);
  });
});
And("Click on serach button", () => {
  search.clickOnSearchbutton();
});
Then("Validate the T-shirt name", (datatable) => {
  datatable.hashes().forEach((element) => {
    search.validateSearchResult(element.tshirtName);
  });
});
