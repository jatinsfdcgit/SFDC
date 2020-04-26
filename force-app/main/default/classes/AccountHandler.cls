public class AccountHandler {

   public static Account insertNewAccount(String AccName)
    {
        if(String.isBlank(AccName))
        {
           try {
                  Account acct1 = new Account();
                    acct1.Name = AccName;
                   insert acct1;
               return Null ;
                } 
          catch (DmlException e) 
              {
                System.debug('A DML exception has occurred: ' +e.getMessage());
                  return Null;
              }
         
          }
      else
        {
        Account acc2 = new Account();
        acc2.Name = AccName ;
            insert acc2;
            return acc2;
            }
        
        
    }
       
}