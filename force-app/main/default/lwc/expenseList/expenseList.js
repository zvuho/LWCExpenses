
import { LightningElement, wire } from 'lwc';
import getExpenses from '@salesforce/apex/ExpenseController.getExpenses';
import { refreshApex } from '@salesforce/apex';


const table_columns = [
    {label:'Label', fieldName: 'Label__c', type: 'text' },
    {label:'Expense date', fieldName: 'Expense_date__c', type: 'Date' },
    {label:'Amount', fieldName: 'Amount__c', type: 'Currency' },
    {label:'Recurrency', fieldName: 'Recurrency__c', type: 'Picklist' },

];

export default class ExpenseList extends LightningElement {

    @wire(getExpenses) expenses;
    columns = table_columns;
    
}