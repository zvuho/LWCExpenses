trigger expenseRecurrency on Expense__c (after insert) {
    System.debug('inTrigger ' + Trigger.New);
	for(Expense__c e : Trigger.New) {
        if (e.isFirstRecurrence__c){ //this if avoids trig loop
            expenseRecurrencyHelper.recurrentExpenseGen(e);
        }
    } 
}