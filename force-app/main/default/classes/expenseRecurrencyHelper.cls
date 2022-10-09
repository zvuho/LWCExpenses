public class expenseRecurrencyHelper {
    public static void recurrentExpenseGen(Expense__c e){
            System.debug('inRecurrentGen ' + e);

        if(e.Times__c > 1) {
                      Expense__c newExp = new Expense__c(
          Label__c = e.Label__c,
          Times__c = e.Times__c-1, //one less time to go
          Amount__c = e.Amount__c,
          Expense_date__c = e.Expense_date__c,
          Category__c = e.Category__c,
          Recurrency__c = e.Recurrency__c,
          isFirstRecurrence__c = false //needs to be false to avoid trig loop

          ); 
            if(e.Recurrency__c == 'Weekly'){
 			newExp.Expense_Date__c = e.Expense_Date__c.addDays(7);
            } else //monthly
            {
            newExp.Expense_Date__c = e.Expense_Date__c.addMonths(1);
            }
			insert newExp;
          recurrentExpenseGen(newExp); 
        }
    }
}