public with sharing class PropertyDetails {
    
    @AuraEnabled(cacheable= true)
    public static List<Property__c> getLatestProperty(){
        List<Property__c> allPropertyList = new List<Property__c>();
        allPropertyList= [SELECT Id, 
                                    IsDeleted, Name, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, SystemModstamp, LastActivityDate, Additional_Room__c, Area__c, Available_form__c, Carpet_Area_sqrt__c, Country__c, Covered_Area_sqrt__c, Electricity_Status__c, Facing__c, Floor__c, Property_Main_Image__c,For_Bachelore__c, For_Family__c, Furnished_Type__c, Furnishing_Available__c, Geo_Map__Latitude__s, Geo_Map__Longitude__s, Geo_Map__c, Land_Mark__c, Location__c, Maintenance_Charge__c, Number_of_Bedrooms__c, Number_of_Balconies__c, Number_of_bathrooms__c, Owner__c FROM Property__c 
                                    LIMIT 50
                        ];

        return allPropertyList;
  
    }
}
