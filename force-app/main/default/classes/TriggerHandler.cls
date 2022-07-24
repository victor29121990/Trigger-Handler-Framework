public virtual class TriggerHandler {

    public void routeRequest(){
        if(!this.isDeactivated()){
            if(Trigger.isBefore){
                if(Trigger.isInsert){
                    this.beforeInsert();
                }
                else if(Trigger.isUpdate){
                    this.beforeUpdate();
                }            
                else if(Trigger.isDelete){
                    this.beforeDelete();
                }
            }
            else if(Trigger.isAfter){
                if(Trigger.isInsert){
                    this.afterInsert();
                }
                else if(Trigger.isUpdate){
                    this.afterUpdate();
                }            
                else if(Trigger.isDelete){
                    this.afterDelete();
                }
                else if(Trigger.isUndelete){
                    this.afterDelete();
                }
            }
        }
    }

    public virtual void beforeInsert(){}
    public virtual void beforeUpdate(){}
    public virtual void beforeDelete(){}
    public virtual void afterInsert(){}
    public virtual void afterUpdate(){}
    public virtual void afterDelete(){}
    public virtual void afterUndelete(){}
    public virtual Boolean isDeactivated(){return false;}
}
