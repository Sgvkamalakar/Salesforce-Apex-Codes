public class AccountHandler {
    public static Account insertNewAccount(String accountName) {
        try {
            if (String.isNotBlank(accountName)) {
                Account newAccount = new Account(Name = accountName);
                insert newAccount;
                return newAccount;
            } else {
                return null; // Empty accountName, return null
            }
        } catch (DmlException e) {
            return null; // Catch DML exception and return null
        }
    }
}