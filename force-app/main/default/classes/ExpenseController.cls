public class ExpenseController {
    @AuraEnabled (cacheable = true)
    public static list<Expense__c> getExpenses(){
        list<Expense__c> expenses= [SELECT Amount__c, Expense_Date__c, Label__c,  Category__c, Recurrency__c, Times__c FROM Expense__c ];
        return expenses;
    }
}