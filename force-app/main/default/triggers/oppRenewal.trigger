trigger oppRenewal on Opportunity (before update) {
      List<Opportunity> renewals = new List<Opportunity>();
// Check a checkbox only when an Opp is changed to Closed Won!
  for (Opportunity opp : Trigger.new) {
    // Access the "old" record by its ID in Trigger.oldMap
    Opportunity oldOpp = Trigger.oldMap.get(opp.Id);

    // Trigger.new records are conveniently the "new" versions!
    Boolean oldOppIsWon = oldOpp.StageName.equals('Closed Won');
    Boolean newOppIsWon = opp.StageName.equals('Closed Won');
    
    // Check that the field was changed to the correct value
    if (!oldOppIsWon && newOppIsWon) {
      Opportunity renewalopp = new Opportunity();
       renewalopp.Name        = opp.Name + 'Renewal';
       renewalopp.CloseDate   = opp.CloseDate.adddays(365); // Add a year
       renewalopp.StageName   = 'Prospecting';
       renewalopp.OwnerId     = oldOpp.OwnerId;
        renewals.add(renewalopp);
    }
  }
    
    upsert renewals ;
}