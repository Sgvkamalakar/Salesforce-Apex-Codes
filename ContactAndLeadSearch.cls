public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String searchString) {
        List<List<sObject>> searchResults = new List<List<sObject>>();
        
        if (String.isNotBlank(searchString)) {
            List<List<SObject>> searchList = [FIND :searchString IN ALL FIELDS RETURNING Contact(Id, FirstName, LastName), Lead(Id, FirstName, LastName)];
            
            // Iterate through the search results to filter out specific objects (Contact and Lead)
            for (List<SObject> sObjects : searchList) {
                List<SObject> filteredList = new List<SObject>();
                for (SObject x : sObjects) {
                    if (x instanceof Contact || x instanceof Lead) {
                        filteredList.add(x);
                    }
                }
                searchResults.add(filteredList);
            }
        }
        
        return searchResults;
    }
}