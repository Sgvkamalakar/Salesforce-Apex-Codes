public class WeeklyAccountEmail implements Schedulable {
    public void execute(SchedulableContext sc){
        List<Account> acc=[select id,Name,owner.Email from Account where createdDate=Last_N_Weeks:1];
		List<Messaging.SingleEmailMessage> email=new List<Messaging.SingleEmailMessage>();
        for(Account ac:acc){
            Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
            mail.setToAddresses(new String []{ac.owner.Email});
            mail.setSubject('Weekly Account Email '+ac.name);
            mail.setPlainTextBody('This is your weekly update on Account object: '+ac.Name);
            email.add(mail);
        }
       messaging.sendEmail(email);
    }
}

//WeeklyAccountEmail emailJob=new WeeklyAccountEmail();
//Seconds Minutes Hours DayOfMonth Month DayOfWeek
//string cronExp=' 0 0 0 ? * 2';
//system.schedule('Weekly Account Email Job ',cronExp,emailJob);