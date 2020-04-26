public class ContactSearch {
    
    public static List<Contact> searchForContacts(String Name , String Postal)
    {
        Contact[] con = [Select ID , Name From Contact where LastName = :Name and MailingPostalCode = :Postal];
        
        
        return con;
    }

}