import { LightningElement, track, wire } from 'lwc';
import getLatestProperty from '@salesforce/apex/PropertyDetails.getLatestProperty';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class MyPropertyResult extends LightningElement {

    @track properties;
    propertiesFound;

    @wire(getLatestProperty)
    wiredProperties({ data, error }) {
        if (data) {
            this.properties = data;
            this.propertiesFound = true;

        }
        else if (error) {
            this.showToast('Error', error.body.message, 'error');
            this.propertiesFound = false;

        }
    }

    showToast(title, message, variant) {

        const evt = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant

        });
        this.dispatchEvent(evt);


    }

}