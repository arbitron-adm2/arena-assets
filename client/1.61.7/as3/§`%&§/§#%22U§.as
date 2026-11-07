package §`%&§
{
   import §!$d§.§<$c§;
   import §%Q§.§<&A§;
   import §-&5§.*;
   import §-I§.§'&,§;
   import §1!J§.§"t§;
   import §1#p§.§"Z§;
   import §1#p§.§=$G§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §<"?§.§3>§;
   import §<"?§.§6!8§;
   import §<$q§.§?!d§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.*;
   import §@&H§.§7"P§;
   import §@&H§.§?%V§;
   import §@&H§.CheatDetectedEvent;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §#"U§ implements §<&A§
   {
      
      private var §=$y§:uint;
      
      public function §#"U§(param1:uint)
      {
         super();
         this.§=$y§ = param1;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:Number = NaN;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:§+%]§ = null;
         var _loc7_:Number = Number.MAX_VALUE;
         for each(_loc8_ in _loc5_)
         {
            _loc9_ = Math.sqrt(Math.pow(_loc8_.x - param2,2) + Math.pow(_loc8_.y - param3,2));
            if(_loc9_ < _loc7_)
            {
               _loc6_ = _loc8_;
               _loc7_ = _loc9_;
            }
         }
         return {
            "angle":(_loc6_.x > param2 ? 0 : -Math.PI),
            "power":0,
            "clearPathPc":100,
            "rate":this.§=$y§
         };
      }
   }
}

