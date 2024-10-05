import { LightningElement, wire } from 'lwc';
// '@salesforce/apex/' is a module like 'lwc' in above import.
import highRevenueAccounts from '@salesforce/apex/AccountController.highRevenueAccounts';

export default class HighRevenueAccounts extends LightningElement {
    listOfAccounts=[];
    countOfRecords=10;

    // for wire we should use '$' for referencing the property.
    // for imperative call we use {count: this.countOfRecords}
    @wire(highRevenueAccounts,{count: '$countOfRecords'})
    highRevenueAccountsHandler(response){
        const {data,error}=response;
        if(error){
            console.log(error);
            return;
        }else{
            console.log(data);
            this.listOfAccounts=data;
        }
    }
}