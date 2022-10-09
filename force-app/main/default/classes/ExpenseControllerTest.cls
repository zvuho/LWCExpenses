@isTest
private class ExpenseControllerTest {
    @isTest 
    private static void testgetExpenses(){
        
          Expense__c newExp = new Expense__c(
          Label__c = 'test',
          Times__c = 1, 
          Amount__c = 33,
          Expense_date__c = date.Today(),
          Recurrency__c = 'Weekly',
          isFirstRecurrence__c = true 
          );        
        insert newExp;
        
        Test.startTest();
        list<Expense__c> expenses = ExpenseController.getExpenses();
        Test.stopTest();
        System.Assert(expenses.size() == 1);
    }
}