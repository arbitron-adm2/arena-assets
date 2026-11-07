package §`%&§
{
   import § "d§.§,!c§;
   import §#$e§.*;
   import §%Q§.§<&A§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §6$0§.§<!o§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §<%k§.§`!v§;
   import §=!p§.§#_§;
   import §?#g§.Race;
   import §?%J§.*;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §6#"§ implements §<&A§
   {
      
      private static const §'t§:uint = 600;
      
      private static const § #y§:uint = 100;
      
      private var §7"v§:uint;
      
      private var §'s§:uint;
      
      private var §=$y§:uint;
      
      public function §6#"§(param1:uint, param2:uint, param3:uint)
      {
         super();
         this.§7"v§ = param1;
         this.§'s§ = param2;
         this.§=$y§ = param3;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc10_:Point = null;
         var _loc12_:Object = null;
         var _loc13_:§+%]§ = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:Object = null;
         var _loc17_:Point = null;
         var _loc18_:Array = null;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Vector.<Point> = new Vector.<Point>(0);
         var _loc7_:Dictionary = new Dictionary();
         var _loc8_:Number = Math.PI / 100;
         var _loc9_:Number = -Math.PI;
         var _loc11_:Number = 0;
         for each(_loc13_ in _loc5_)
         {
            _loc11_ += _loc13_.attributes.hp.§9"H§();
         }
         _loc11_ /= _loc5_.length;
         _loc14_ = (1 - _loc11_) * this.§=$y§;
         _loc15_ = 0;
         while(_loc15_ < 100)
         {
            _loc17_ = §>#9§.§3%2§(param2,param3,_loc9_,§'t§);
            if((Boolean(_loc17_)) && §-q§.distance(_loc17_.x,_loc17_.y,param2,param3) >= § #y§)
            {
               _loc6_.push(_loc17_);
            }
            _loc9_ += _loc8_;
            _loc15_++;
         }
         for each(_loc17_ in _loc6_)
         {
            _loc18_ = §0$a§.§<"8§(param2,param3,_loc17_.x,_loc17_.y,this.§7"v§,this.§'s§);
            if(_loc18_.length > 0)
            {
               _loc7_[_loc17_] = _loc18_;
               if(!_loc10_ || §-q§.distance(_loc17_.x,_loc17_.y,param2,param3) > §-q§.distance(_loc10_.x,_loc10_.y,param2,param3))
               {
                  _loc10_ = _loc17_;
               }
            }
         }
         for each(_loc16_ in _loc7_[_loc10_])
         {
            if(!_loc12_ || _loc16_.power > _loc12_.power)
            {
               _loc12_ = _loc16_;
            }
         }
         return _loc10_ != null ? {
            "angle":_loc12_.angle,
            "power":_loc12_.power,
            "rate":_loc14_
         } : null;
      }
   }
}

