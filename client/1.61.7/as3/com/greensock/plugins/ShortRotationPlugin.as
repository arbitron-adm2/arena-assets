package com.greensock.plugins
{
   import § &5§.§@N§;
   import §'"N§.*;
   import §0%[§.§0%§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@<§.§+%]§;
   import com.greensock.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class ShortRotationPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      public function ShortRotationPlugin()
      {
         super();
         this.propName = "shortRotation";
         this.overwriteProps = [];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:String = null;
         if(typeof param2 == "number")
         {
            return false;
         }
         for(_loc4_ in param2)
         {
            initRotation(param1,_loc4_,param1[_loc4_],typeof param2[_loc4_] == "number" ? Number(param2[_loc4_]) : param1[_loc4_] + Number(param2[_loc4_]));
         }
         return true;
      }
      
      public function initRotation(param1:Object, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = (param4 - param3) % 360;
         if(_loc5_ != _loc5_ % 180)
         {
            _loc5_ = _loc5_ < 0 ? _loc5_ + 360 : _loc5_ - 360;
         }
         addTween(param1,param2,param3,param3 + _loc5_,param2);
         this.overwriteProps[this.overwriteProps.length] = param2;
      }
   }
}

