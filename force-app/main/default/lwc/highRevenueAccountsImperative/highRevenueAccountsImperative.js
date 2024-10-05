import { LightningElement } from 'lwc';
import highRevenueAccounts from '@salesforce/apex/AccountController.highRevenueAccounts';

export default class HighRevenueAccountsImperative extends LightningElement {
    listOfAccounts=[];
    // Wire means automatically.
    // Imperative means manually (needs an user interaction).
    setCount(event){
        let inputValue=event.target.value;
        if(inputValue == ''){
            inputValue=0;
        }
        highRevenueAccounts({count:inputValue}).then(response => {
            console.log(response);
            this.listOfAccounts=response;
        }).catch(error =>{
            console.log(error)
        })
    }
}