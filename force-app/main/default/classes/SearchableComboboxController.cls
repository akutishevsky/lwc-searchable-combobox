public with sharing class SearchableComboboxController {
    @AuraEnabled
    public static List<Map<String, String>> getAccounts() {
        List<Map<String, String>> accounts = new List<Map<String, String>>();
        for (Account a : [SELECT Id, Name FROM Account]) {
            accounts.add(
                new Map<String, String>{ 'label' => a.Name, 'value' => a.Id }
            );
        }
        return accounts;
    }
}
