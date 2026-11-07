package ru.pragmatix.wormix.model.rewards
{
   import §2#i§.§+%z§;
   import §7$t§.§&!e§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@!N§.§-!Y§;
   import §@<§.§+%]§;
   import §`%&§.§,L§;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §]+§
   {
      
      public var money:int;
      
      public var realMoney:int;
      
      public var battleToken:int;
      
      public var wagerToken:int;
      
      public var bossToken:int;
      
      public var items:Dictionary = new Dictionary();
      
      public var §2&4§:Dictionary = new Dictionary();
      
      public var reagents:Dictionary = new Dictionary();
      
      public var reaction:int;
      
      public var exp:int;
      
      public var pack:§1%z§;
      
      public var §,k§:String;
      
      public var §8%T§:String;
      
      public var postMessage:String;
      
      public var § +§:§&!e§;
      
      public var attach:Object;
      
      public var type:§8"_§;
      
      public function §]+§()
      {
         super();
      }
      
      public function toString() : String
      {
         return "LoginBonusStructure{" + "money=" + this.money + ",realMoney=" + this.realMoney + ",reaction=" + this.reaction + ",exp=" + this.exp + ",battlesCount=" + this.battleToken + ",wagerToken=" + this.wagerToken + ",bossToken=" + this.bossToken + ",bonusMessage=" + this.§8%T§ + "}";
      }
      
      public function §@>§(param1:int) : Boolean
      {
         var _loc2_:String = null;
         if(§-!Y§.§&%Y§(this.items) > 0)
         {
            for(_loc2_ in this.items)
            {
               if(param1 == int(_loc2_))
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}

