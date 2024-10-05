public class ResetResources implements Database.Batchable<sObject>{

    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT id FROM Resource__c');
    }
    
    public void execute(Database.BatchableContext bc,List<Resource__c> resources){
        List<ResourceMetaData__mdt> resourceMetas= ResourceMetaData__mdt.getAll().values();
        List<Resource__c> resourceList=new List<Resource__c>();
        for(Resource__c resource:resources){
            for(ResourceMetaData__mdt resourceMeta:resourceMetas){
                if(resource.Name == resourceMeta.label){
                    resource.Quantity__c = resourceMeta.Resource__c;
                    resourceList.add(resource);
                }
            }
        }
        update resourceList;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
    
}