global class deleteaccount implements Database.Batchable<sObject>{
      
   global deleteaccount(){
              
   }

   global Database.QueryLocator start(Database.BatchableContext BC){
     String Query= 'select id from account where Name ='+'\'Jatin\'';
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC,List<Account> scope){
     
     delete scope;  
      
   }

   global void finish(Database.BatchableContext BC){

   }

}