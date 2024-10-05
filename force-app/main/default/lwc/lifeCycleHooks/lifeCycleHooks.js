import { LightningElement } from 'lwc';

export default class LifeCycleHooks extends LightningElement {

    constructor(){
        super();
        alert('Constructor called');
    }

    connectedCallback(){
        alert('Connected Callback');
    }

    renderedCallback(){
        alert('Rendered Call back');
    }

    disconnectedCallback(){
        alert('Disconnected Callback');
    }
    errorCallback(){
        console.log('Error Callback');
    }
}