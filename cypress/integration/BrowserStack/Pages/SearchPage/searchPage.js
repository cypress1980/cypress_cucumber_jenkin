/// <reference types ="cypress"/>

class SearchPage {
  validateSearchResult(searchResult) {
    return cy.contains(searchResult);
  }
  clickOnSearchbutton() {
    return cy.get('[name="submit_search"]').click();
  }
}
const search = new SearchPage();
export default search;
