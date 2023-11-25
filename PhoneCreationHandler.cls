public class PhoneCreationHandler {
    public static void fun(List<Contact> conList){
        for(Contact con: conList){
            if(con.AccountId!=null){
                Account acc=[select phone from Account where Id=:con.AccountId Limit 1];
                if(acc!=null && acc.Phone!=null){
				con.Phone=acc.Phone;
                }
            }
        }
    }
}