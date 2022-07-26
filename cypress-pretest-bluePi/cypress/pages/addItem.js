class addItem{
 clickComplete(){
   cy.get("#text-1").click();
   //this.element.itemInput().click({ force: true });
 }

 copyPlaceItem(text){
   cy.get("input#new-task").invoke('val', text)
 }
 inputItem(text){
   cy.get("input#new-task").type(text);
 }

 clickAdd() {
   cy.get(".mdl-button > .material-icons").click();
 };

 clickTabAdd(){
   cy.get(".mdl-tabs__tab:nth-child(1) > .mdl-tabs__ripple-container").contains("ADD ITEM").click()
 };

 clickTabTasks(){
   cy.get(".mdl-tabs__tab:nth-child(2) > .mdl-tabs__ripple-container").click()
 
};

 clickTabComplete(){
     cy.contains("Completed").click();
 };

 clickIncompleteTasks(){
   cy.get("#incomplete-tasks").click();
 };

 clickDelete(){
   cy.get("#1").click();
 };

 labelTasks(text){
   cy.get("#incomplete-tasks").contains(text);
 }

 labelComplete(text){
        cy.get(".mdl-list").contains(text);
 }

 blankSpaces(){
   cy.get("input#new-task").type("blank spaces");
 }

 clickDeleteToDo(){
     cy.contains("Delete").click();
 }
} module.exports = new addItem();