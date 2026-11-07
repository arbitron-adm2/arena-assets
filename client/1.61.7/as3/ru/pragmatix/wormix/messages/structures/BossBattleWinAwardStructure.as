package ru.pragmatix.wormix.messages.structures
{
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §+#U§.§&#u§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§6J§;
   import §^#[§.§&$2§;
   import flash.display.SimpleButton;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BossBattleWinAwardStructure
   {
      
      public var money:int;
      
      public var realMoney:int;
      
      public var experience:int;
      
      public var awardItems:Vector.<AwardBackpackItemStructure> = new Vector.<AwardBackpackItemStructure>(0);
      
      public function BossBattleWinAwardStructure()
      {
         super();
      }
      
      public static function getAwardsArray(param1:BossBattleWinAwardStructure) : Array
      {
         var _loc3_:AwardBackpackItemStructure = null;
         var _loc2_:Array = [];
         if(param1.money)
         {
            _loc2_.push(new §#$!§(§+$A§.INGAME,param1.money));
         }
         if(param1.realMoney)
         {
            _loc2_.push(new §#$!§(§+$A§.REAL,param1.realMoney));
         }
         if(param1.experience)
         {
            _loc2_.push(new §'"%§(param1.experience));
         }
         for each(_loc3_ in param1.awardItems)
         {
            if(_loc3_.stuffId)
            {
               _loc2_.push(new §]$X§(_loc3_.stuffId,_loc3_.expireHours));
            }
            if(_loc3_.weaponId)
            {
               _loc2_.push(new §`%g§(_loc3_.weaponId,_loc3_.count));
            }
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         return "BossBattleWinAwardStructure{" + "money=" + this.money + ";realMoney=" + this.realMoney + ";experience=" + this.experience + ";awardItems=" + this.awardItems + "}";
      }
   }
}

