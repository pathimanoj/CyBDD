import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'

Given('I visit the {string} page', (url) => {
    cy.visit(url)
  })
