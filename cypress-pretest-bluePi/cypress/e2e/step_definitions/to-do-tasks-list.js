import { Given, When, And, Then } from "@badeball/cypress-cucumber-preprocessor";
const add_item = require("../../pages/addItem");

When("I view to-do tasks",()=> {
    add_item.inputItem("Test Automate");
    add_item.clickAdd();
    add_item.clickTabTasks();

});
Then("To Do Tasks list is correct",()=> {
    add_item.labelTasks("Test Automate");
});


When("I select to-do tasks at complete",()=> {
    add_item.inputItem("Test Automate");
    add_item.clickAdd();
    add_item.clickTabTasks();
    add_item.clickComplete();
});
Then("To Do Tasks list is complete and Task list leave to complete tabs",()=> {
    add_item.clickTabComplete();
    add_item.labelComplete("Test Automate");
});


When("I click button Delete at to-do task",()=> {
    add_item.inputItem("Test Automate");
    add_item.clickAdd();
    add_item.clickTabTasks();
});

Then("Delete at to-do task correct",()=> {
    add_item.clickDeleteToDo();
});