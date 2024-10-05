public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> highRevenueAccounts(){
        try {
            return [SELECT id, Name, AnnualRevenue FROM Account ORDER BY AnnualRevenue DESC];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}