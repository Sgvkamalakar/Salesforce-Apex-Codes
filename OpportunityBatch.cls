public class OpportunityBatch implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // Query for the opportunity records with specific StageNames
        String query = 'SELECT Id, Name, StageName, Probability FROM Opportunity ' +
                       'WHERE StageName IN (\'Qualification\', \'Needs Analysis\', \'Value Proposition\', \'Perception Analysis\')';
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext bc, List<Opportunity> oppRec) {
        // Logic for processing the records in the batch
        List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();
        
        for (Opportunity opp : oppRec) {
            if (opp.StageName == 'Qualification') {
                opp.Probability = 15;
            } else if (opp.StageName == 'Needs Analysis') {
                opp.Probability = 30;
            } else if (opp.StageName == 'Value Proposition') {
                opp.Probability = 60;
            } else if (opp.StageName == 'Perception Analysis') {
                opp.Probability = 80;
            }
            opportunitiesToUpdate.add(opp);
        }

        // Update the opportunities in a single DML operation
        if (!opportunitiesToUpdate.isEmpty()) {
            update opportunitiesToUpdate;
        }
    }

    public void finish(Database.BatchableContext bc) {
        // Optional: Add any post-processing logic here after batch processing is complete.
    }
}

//OpportunityBatch var = new OpportunityBatch();
//Database.executeBatch(var);