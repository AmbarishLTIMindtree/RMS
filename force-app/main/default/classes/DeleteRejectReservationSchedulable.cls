public class DeleteRejectReservationSchedulable implements Schedulable {

    public void execute(SchedulableContext sc){
        DeleteRejectedReservations drr=new DeleteRejectedReservations();
        database.executebatch(drr);
    }
    
}