public class DeleteOpps{

public string Oppid{get;set;}

    public DeleteOpps() {

    }


    public DeleteOpps(ApexPages.StandardController controller) {

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
 }