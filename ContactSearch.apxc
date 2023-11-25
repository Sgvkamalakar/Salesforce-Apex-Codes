public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String mailingPostalCode) {
        List<Contact> matchingContacts = new List<Contact>();
        
        if (String.isNotBlank(lastName) && String.isNotBlank(mailingPostalCode)) {
            matchingContacts = [SELECT Id, Name FROM Contact WHERE LastName = :lastName AND MailingPostalCode = :mailingPostalCode];
        }
        
        return matchingContacts;
    }
}