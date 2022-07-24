public class ContactTriggerHandler extends TriggerHandler{
    List<Contact> newList;
    List<Contact> oldList;
    Map<Id, Contact> oldMap;
    public ContactTriggerHandler() {
        newList = (List<Contact>)Trigger.new;
        oldList = (List<Contact>)Trigger.old;
        oldMap = (Map<Id, Contact>)Trigger.oldMap;
    }
    public override Boolean isDeactivated()
    {
        return TriggerConfigs__c.getValues('Contact').Deactivated__c;
    }
    public override void beforeInsert()
    {
        System.debug(this.newList);
        System.debug(this.oldList); //null as its before insert
        System.debug(this.oldMap); //null too
        //do Something
    }
}
