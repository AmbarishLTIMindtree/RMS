public class DeleteRejectedReservations implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query='SELECT id FROM Reservation__c WHERE Reservation_Status__c	= \'Rejected\'';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<Reservation__c> reservations){
        delete reservations;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}