public class ResetResourceSchedulable implements Schedulable {

    public void execute(SchedulableContext sc){
        ResetResources rr=new ResetResources();
        Database.executeBatch(rr);
    }
    
}

// CRON Expression
// Execute this in Anonymous Apex or within another class
// String cronExp = '0 0 0 * * ?'; // Runs daily at 12:00 AM
// ResetResourceSchedulable job = new ResetResourceSchedulable();
// System.schedule('Daily Resource Reset Job', cronExp, job);

/*
Breakdown of Cron Expression:
	0 (Seconds): Job triggers at the 0th second.
	0 (Minutes): Job triggers at the 0th minute.
	0 (Hours): Job triggers at midnight (00:00 hours).
	* (Day of Month): Every day of the month.
	* (Month): Every month.
	? (Day of Week): Any day of the week.
*/