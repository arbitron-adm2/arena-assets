package ru.pragmatix.wormix.weapons
{
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §&%X§.§5F§;
   import §1#p§.§"Z§;
   import §;$%§.§#&H§;
   import §<!G§.§&!;§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.events.MouseEvent;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   
   public class SnowflakeStrike extends §&!;§
   {
      
      private static const §-$G§:int = 50;
      
      public function SnowflakeStrike()
      {
         super(true);
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         if(Boolean(property["dontMindWind"]) && §?"&§(property["dontMindWind"]).value)
         {
            §-g§ = new §@&,§();
         }
      }
      
      override protected function §^M§(param1:int, param2:int, param3:int) : Number
      {
         return param2;
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         var _loc8_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:§#&H§ = null;
         _loc8_ = int(property["missiles"].value);
         var _loc9_:Number = _loc8_ / 2;
         var _loc10_:int = int(property["freezingDuration"].value);
         var _loc11_:Boolean = property["dontMindWind"] ? !§?"&§(property["dontMindWind"]).value : true;
         var _loc12_:Boolean = property["ignoreMagnet"] ? §?"&§(property["ignoreMagnet"]).value : false;
         var _loc13_:int = §-$G§ * _loc8_ >> 1;
         var _loc14_:int = 0;
         while(_loc14_ < _loc8_)
         {
            _loc15_ = _loc11_ ? int(§-$G§ * (_loc14_ - _loc9_)) : (_loc14_ > 0 ? int(§8"%§.randomSeed.§,!q§(-_loc13_,_loc13_)) : 0);
            _loc16_ = new §#&H§(param1,param2,param3 + _loc15_,param4,_loc11_);
            _loc16_.§;";§(_loc10_);
            if(_loc12_)
            {
               _loc16_.§8%t§(true);
            }
            if(getProperty("trailLength"))
            {
               _loc16_.trailLength = property["trailLength"];
            }
            if(getProperty("trailWidth"))
            {
               _loc16_.trailWidth = property["trailWidth"];
            }
            if(getProperty("trailColor"))
            {
               §§push(_loc16_);
               var _loc17_:*;
               _loc16_.§?$z§ = _loc17_ = property["trailColor"];
               §§pop().trailColor = _loc17_;
            }
            _loc16_.attachTrail();
            _loc14_++;
         }
         super.§2",§(param1,param2,param3,param4,param5,param6);
      }
   }
}

