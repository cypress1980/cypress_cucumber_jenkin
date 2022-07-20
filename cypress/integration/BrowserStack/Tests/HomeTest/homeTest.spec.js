import homePage from "../../Pages/HomePage/homePage";

Given("I navigate to the Website", () => {
  cy.visit("http://automationpractice.com/");
});
When("I views links in Home Page of the Site", (datatable) => {
  datatable.hashes().forEach((element) => {
    homePage.searchItem(element);
  });
});
