public class AccountCount implements Schedulable{
    public void execute(SchedulableContext sc){
        //Use case: logic to get the count of Accounts on evey weekend
       Integer accCount=[select count() from Account];
       messaging.SingleEmailMessage mail=new messaging.SingleEmailMessage();
        mail.setToAddresses(new String[]{'sgvkamalakar@gmail.com'});
        mail.setSubject('Account count');
        mail.setPlainTextBody('The count of the account objects for this weekend is: '+accCount);
        messaging.sendEmail(new messaging.SingleEmailMessage[] {mail});
    }
}