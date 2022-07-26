import { Given, When, And, Then } from "@badeball/cypress-cucumber-preprocessor";
const add_item = require("../../pages/addItem");

Given("Open browser and go to web {string}",(website)=>{
    cy.visit(website);
});

When("I key in too type {string}",(text)=>{
    add_item.inputItem(text);
});

And("Click the Add button",()=>{
    add_item.clickAdd();    
});

Then("Correct add item to to do list {string}",(text)=>{
    add_item.clickTabTasks();
    add_item.labelTasks(text);
});