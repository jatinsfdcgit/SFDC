public with sharing class DefaultStage {


public string Oppid{get;set;}
public opportunity opp{get;set;}


public  DefaultStage(ApexPages.StandardController controller) {
 this.opp = (Opportunity)controller.getRecord();
                                 
             }
             
             
            
public pagereference save()
{
       upsert opp; 
     PageReference ref = new PageReference('/apex/Newopp');
  ref.setRedirect(true);
  return ref;

}


List<Opportunity> oppo1 = [Select Name, CloseDate , StageName From Opportunity];
    
    Public List<Opportunity> getoppo1(){
    return oppo1;
    }
    
   
 public pageReference delopp()
 {
 
 String Oppid = Apexpages.currentpage().getParameters().get('delopp');

 Opportunity oppdlt = [Select Name, Id From Opportunity Where Id = :Oppid];
 delete oppdlt;
  PageReference ref = new PageReference('/apex/Newopp');
  ref.setRedirect(true);
  return ref;
   }
   
   public pageReference EditOpp()
 {
 
 String Oppid = Apexpages.currentpage().getParameters().get('editopp');

 Opportunity oppedit = [Select ID, Name , CloseDate, StageName From Opportunity Where Id = :Oppid];
  opp.ID = oppedit.ID; 
  opp.Name = oppedit.Name;
  opp.CloseDate = oppedit.CloseDate;
  opp.StageNAme =oppedit.StageName; 
   return null;
   }
        }