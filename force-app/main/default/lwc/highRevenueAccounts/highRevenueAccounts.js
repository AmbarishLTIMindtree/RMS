import { LightningElement, wire } from 'lwc';
// '@salesforce/apex/' is a module like 'lwc' in above import.
import highRevenueAccounts from '@salesforce/apex/AccountController.highRevenueAccounts';

export default class HighRevenueAccounts extends LightningElement {
    listOfAccounts=[];

    @wire(highRevenueAccounts)
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