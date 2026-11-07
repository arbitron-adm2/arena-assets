package §6$z§
{
   import §65§.§%%o§;
   import §65§.§5#A§;
   import §65§.§`"C§;
   import §?$K§.§=z§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   
   public class BonusBuff extends BonusStat
   {
      
      public static const NAME:String = "BonusBuff";
      
      protected var buff:§%%o§;
      
      public function BonusBuff()
      {
         super(NAME);
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         if(count.value == 1)
         {
            activate(param1);
            this.buff.sourceItemId = §^%'§.§8!4§(owner,getType());
            owner.buffs.place(this.buff);
         }
         else if(this.buff is §5#A§)
         {
            if(this.buff is §=z§)
            {
               §=z§(this.buff).setDuration(getValue() + 1);
            }
            else
            {
               §5#A§(this.buff).setValue(getValue());
            }
         }
      }
      
      override public function subtract(param1:int) : void
      {
         var _loc2_:§`"C§ = null;
         super.subtract(param1);
         if(count.value == 0 || owner.disposed)
         {
            this.deactivate(param1);
         }
         else if(this.buff)
         {
            _loc2_ = owner.buffs.getBuff(this.buff.§7%z§());
            if(_loc2_)
            {
               if(_loc2_ is §=z§)
               {
                  §=z§(_loc2_).setDuration(_loc2_.§8!t§() - param1);
               }
               else
               {
                  _loc2_.addValue(-param1);
               }
            }
         }
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.buffs.§6C§(this.buff.§7%z§());
      }
   }
}

