trigger ProductHistoryTracking on Product2 (after update) { 
    for (Product2 newOpp : Trigger.New) {
        Product2 oldOpp = Trigger.oldMap.get(newOpp.Id);
        if (newOpp.Name != oldOpp.Name) 
        {
           Product_History_Tracking__c objPTH=new Product_History_Tracking__c();
           objPTH.New_Value__c=newOpp.Name;
           objPTH.Old_Value__c=oldOpp.Name;
           objPTH.Field_Name__c='Programme Title';
           objPTH.Date__c=date.today().format();
           objPTH.User__c=UserInfo.getName();
           objPTH.ProductId__c=newOpp.Id;
           insert objPTH;
      
        }
      /*  if (newOpp.AKA_Title__c != oldOpp.AKA_Title__c) 
        {
           Product_History_Tracking__c objPTH=new Product_History_Tracking__c();
           objPTH.New_Value__c=newOpp.AKA_Title__c;
           objPTH.Old_Value__c=oldOpp.AKA_Title__c;
           objPTH.Field_Name__c='Alternate Name';
           objPTH.Date__c=date.today().format();
           objPTH.User__c=UserInfo.getName();
           objPTH.ProductId__c=newOpp.Id;
           insert objPTH;
      
        }
        if (newOpp.First_TX_Date__c != oldOpp.First_TX_Date__c) 
        {
           Product_History_Tracking__c objPTH=new Product_History_Tracking__c();
           objPTH.New_Value__c=string.valueOfGmt(newOpp.First_TX_Date__c);
           objPTH.Old_Value__c=string.valueOfGmt(oldOpp.First_TX_Date__c);
           objPTH.Field_Name__c='First Tx Date';
           objPTH.Date__c=date.today().format();
           objPTH.User__c=UserInfo.getName();
           objPTH.ProductId__c=newOpp.Id;
           insert objPTH;
      
        }
        if (newOpp.Estimated_TX_Date__c != oldOpp.Estimated_TX_Date__c) 
        {
           Product_History_Tracking__c objPTH=new Product_History_Tracking__c();
           objPTH.New_Value__c=newOpp.Estimated_TX_Date__c;
           objPTH.Old_Value__c=oldOpp.Estimated_TX_Date__c;
           objPTH.Field_Name__c='Estimated TX Date';
           objPTH.Date__c=date.today().format();
           objPTH.User__c=UserInfo.getName();
           objPTH.ProductId__c=newOpp.Id;
           insert objPTH;
      
        }
        if (newOpp.Estimated_Delivery_Date__c != oldOpp.Estimated_Delivery_Date__c) 
        {
           Product_History_Tracking__c objPTH=new Product_History_Tracking__c();
           objPTH.New_Value__c=newOpp.Estimated_Delivery_Date__c;
           objPTH.Old_Value__c=oldOpp.Estimated_Delivery_Date__c;
           objPTH.Field_Name__c='Delivery Date';
           objPTH.Date__c=date.today().format();
           objPTH.User__c=UserInfo.getName();
           objPTH.ProductId__c=newOpp.Id;
           insert objPTH;
      
        }
        if (newOpp.Actual_Delivery_Date__c != oldOpp.Actual_Delivery_Date__c) 
        {
           Product_History_Tracking__c objPTH=new Product_History_Tracking__c();
           objPTH.New_Value__c=string.valueOfGmt(newOpp.Actual_Delivery_Date__c);
           objPTH.Old_Value__c=string.valueOfGmt(oldOpp.Actual_Delivery_Date__c);
           objPTH.Field_Name__c='Estimated Delivery Date';
           objPTH.Date__c=date.today().format();
           objPTH.User__c=UserInfo.getName();
           objPTH.ProductId__c=newOpp.Id;
           insert objPTH;
      
        } */ 
    }
}