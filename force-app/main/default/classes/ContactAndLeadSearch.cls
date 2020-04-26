public class ContactAndLeadSearch {
 
    public static List<List< SObject>> searchContactsAndLeads( string str )
        
    {
       List<List<sObject>> searchList = [FIND :str IN Name FIELDS RETURNING Contact , Lead];
        
        return searchlist ;
        
    }
}