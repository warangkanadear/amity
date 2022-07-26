import { Given, When, And, Then } from "@badeball/cypress-cucumber-preprocessor";
const add_item = require("../../pages/addItem");

Given("Open browser and go to {string}", (website)=> {
    cy.visit(website);
});

When("I view to-do tasks completed",()=>{
    add_item.inputItem("Test Automate");
    add_item.clickAdd();
    add_item.clickTabTasks();
    add_item.clickComplete();
});

Then("Completed Tasks list is correct",()=>{
    add_item.clickTabComplete();
    add_item.labelComplete("Test Automate");
});

When("I click button Delete at task completed",()=>{
    add_item.inputItem("Test Automate");
    add_item.clickAdd();
    add_item.clickTabTasks();
    add_item.clickComplete();
    add_item.clickTabComplete();
    add_item.labelComplete("Test Automate");
    add_item.clickDelete();
});

Then("Delete at task completed correct",()=>{
    //
});