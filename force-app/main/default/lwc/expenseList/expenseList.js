
import { LightningElement, wire } from 'lwc';
import getExpenses from '@salesforce/apex/ExpenseController.getExpenses';
//import { refreshApex } from '@salesforce/apex';


const table_columns = [
    {label:'Label', fieldName: 'Label__c', type: 'text' },
    {label:'Expense date', fieldName: 'Expense_Date__c', type: 'anyType' },
    {label:'Amount', fieldName: 'Amount__c', type: 'Currency' },
    {label:'Recurrency', fieldName: 'Recurrency__c', type: 'Picklist' },
    {label:'Times', fieldName: 'Times__c', type: 'Number' },
    {label:'Category', fieldName: 'Category__c', type: 'Picklist' },

];

export default class ExpenseList extends LightningElement {

    @wire(getExpenses) expenses;
    columns = table_columns;
    
}