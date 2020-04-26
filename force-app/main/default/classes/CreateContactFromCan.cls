public class CreateContactFromCan {
    public void createContact(List<Candidate__c> candsFromTrigger) {
        
        Account candAcct = [Select Id From Account Where Name = 'Recruiting'];
        
        List<Contact> conList = new List<Contact> () ;
        
        for(Candidate__c currentCandidate : candsFromTrigger)
        {
          Contact con = new Contact();
            con.AccountId = candAcct.Id ;
            con.FirstName = currentCandidate.First_Name__c ;
            con.LastName = currentCandidate.Last_Name__c ;
            con.Email = currentCandidate.Email__c ;
         
            conList.add(con);
        }
        
        Database.insert(conList);
        
            }
}