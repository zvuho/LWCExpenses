import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import EXPENSE_OBJECT from '@salesforce/schema/Expense__c';
import Label_FIELD from '@salesforce/schema/Expense__c.Label__c';
import Category_FIELD from '@salesforce/schema/Expense__c.Category__c';
import Expense_date_FIELD from '@salesforce/schema/Expense__c.Expense_date__c';
//import Amount_FIELD from '@salesforce/schema/Expense__c.Amount__c';

export default class ExpenseCreator extends LightningElement {
    objectApiName = EXPENSE_OBJECT;
    fields = [Label_FIELD, Category_FIELD, Expense_date_FIELD]; //, Amount_FIELD];
    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
            title: "Expense created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}