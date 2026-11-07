package §`%&§
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%Q§.§<&A§;
   import §+$=§.*;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §2!-§.DamageEvent;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §9%W§.§!7§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §="z§.§9%1§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.MeteorStrike;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §@&,§ implements §<&A§
   {
      
      private static const §3P§:int = 40;
      
      private var §=$y§:uint;
      
      public function §@&,§(param1:int = 45)
      {
         super();
         this.§=$y§ = param1;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc7_:§+%]§ = null;
         var _loc8_:Object = null;
         var _loc9_:Point = null;
         var _loc10_:int = 0;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Object = null;
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = MeteorStrike.§2"k§(_loc7_.x,_loc7_.y,MeteorStrike.§@!q§);
            _loc9_ = §0$a§.§;# §(_loc8_.x,_loc8_.y,_loc7_.x,Application.scene.height,_loc8_.vx,_loc8_.vy);
            if(_loc9_)
            {
               _loc10_ = §-q§.distance(_loc7_.x,_loc7_.y,_loc9_.x,_loc9_.y);
               if(Math.abs(_loc10_) <= §3P§)
               {
                  _loc6_ = {
                     "rate":this.§=$y§,
                     "point":new Point(_loc9_.x,_loc9_.y),
                     "additionalParams":_loc8_
                  };
                  break;
               }
            }
         }
         return _loc6_ != null ? {
            "angle":0,
            "power":0,
            "clearPathPc":100,
            "point":_loc6_.point,
            "additionalParams":_loc6_.additionalParams,
            "rate":_loc6_.rate
         } : null;
      }
   }
}

