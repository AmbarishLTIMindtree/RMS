@RestResource(urlmapping='/customers/*')
global class CustomerWebService {
    
    @httpPost
    global static void createCustomer(Customer__c customer){
        insert customer;
    }
}

/* 
		/services/apexrest/customers/ --> put this in workbench, select POST method
		JSON Body :
		{
      		"customer":{
              				"Customer_Name__c": "From Web Service",
              				"CustomerEmail__c" : "fromwebservice@gmail.com"
             			}
		}
*/