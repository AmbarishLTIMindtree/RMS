public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> highRevenueAccounts(Integer count ){
        try {
            return [SELECT id, Name, AnnualRevenue FROM Account ORDER BY AnnualRevenue DESC LIMIT: count];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}