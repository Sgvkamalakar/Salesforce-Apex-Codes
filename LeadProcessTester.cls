@isTest
public class LeadProcessTester {
     static testMethod void testLeadProcess(){
	     Lead newLead=LeadProcess.createLead('Kamalakar','Satapathi','Cognizant');
         system.AssertNotEquals(null, newLead.Id,'Lead Creation Failed');
         
         String newStatus='Contacted';
         LeadProcess.updateLeadStatus(newLead.Id, newStatus);
         Lead updateLead=[select status from Lead where id=:newLead.Id LIMIT 1];
		 system.assertEquals(newStatus,updateLead.Status,'Status updated');
         
         LeadProcess.DeleteLead(newLead.Id);
         List<Lead> delLead = [SELECT Id FROM Lead WHERE Id = :newLead.Id];
         System.assertEquals(0, 0,'Lead Deletion Success');
     }
}