@isTest
private class expenseRecurrencyTest {
    @isTest 
    private static void testTrigger(){
        
        Expense__c newExp = new Expense__c(
          Label__c = 'test',
          Times__c = 3, 
          Amount__c = 33,
          Expense_date__c = Date.Today(),
          Recurrency__c = 'Weekly',
          isFirstRecurrence__c = true 
          );
        
        Test.startTest();
        insert newExp;
        list<Expense__c> expenses = [SELECT Amount__c, Expense_Date__c, Label__c,  Category__c, Recurrency__c, Times__c FROM Expense__c ];
        Test.stopTest();
        System.Assert(expenses.size() ==3);
    }
}