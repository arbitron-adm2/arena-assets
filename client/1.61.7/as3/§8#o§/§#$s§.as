package §8#o§
{
   import §&!m§.§-$6§;
   import §&#h§.*;
   import §7$t§.§&!e§;
   import config.achievements.*;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   
   public class §#$s§ extends §&!e§
   {
      
      public var prevUpgradeId:int = -1;
      
      public var upgradeId:int;
      
      public var count:int;
      
      public var reagents:Vector.<§-$6§>;
      
      public var level:int = 0;
      
      public var availableFromStart:Boolean = true;
      
      public function §#$s§()
      {
         super();
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         var _loc2_:Object = null;
         super.initFromConfig(param1);
         if(param1.prevUpgradeId)
         {
            this.prevUpgradeId = param1.prevUpgradeId;
         }
         if(param1.upgradeId)
         {
            this.upgradeId = param1.upgradeId;
         }
         if(param1.level)
         {
            this.level = param1.level;
         }
         if(param1.availableFromStart)
         {
            this.availableFromStart = param1.availableFromStart;
         }
         if(param1.craftCost)
         {
            _loc2_ = param1.craftCost;
            if(_loc2_.reagents)
            {
               this.reagents = _loc2_.reagents;
            }
            if(_loc2_.price >= 0 || _loc2_.realprice >= 0)
            {
               §8&;§(_loc2_.price,_loc2_.realprice);
            }
         }
         else
         {
            if(param1.reagents)
            {
               this.reagents = param1.reagents;
            }
            if(param1.count)
            {
               this.count = param1.count;
            }
         }
      }
      
      public function getCount() : int
      {
         return this.count;
      }
   }
}

