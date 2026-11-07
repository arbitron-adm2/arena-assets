package com.greensock.plugins
{
   import § &5§.§9X§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §0%[§.§0%§;
   import §2"L§.*;
   import §<"L§.*;
   import §@!i§.§!m§;
   import §^"y§.§]#i§;
   import §`%&§.§,%§;
   import com.greensock.*;
   import flash.geom.ColorTransform;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class HexColorsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected var _colors:Array;
      
      public function HexColorsPlugin()
      {
         super();
         this.propName = "hexColors";
         this.overwriteProps = [];
         _colors = [];
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc2_:* = int(_colors.length - 1);
         while(_loc2_ > -1)
         {
            if(param1[_colors[_loc2_][1]] != undefined)
            {
               _colors.splice(_loc2_,1);
            }
            _loc2_--;
         }
         super.killProps(param1);
      }
      
      public function initColor(param1:Object, param2:String, param3:uint, param4:uint) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param3 != param4)
         {
            _loc5_ = param3 >> 16;
            _loc6_ = param3 >> 8 & 0xFF;
            _loc7_ = param3 & 0xFF;
            _colors[_colors.length] = [param1,param2,_loc5_,(param4 >> 16) - _loc5_,_loc6_,(param4 >> 8 & 0xFF) - _loc6_,_loc7_,(param4 & 0xFF) - _loc7_];
            this.overwriteProps[this.overwriteProps.length] = param2;
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc3_:Array = null;
         var _loc2_:int = int(_colors.length);
         while(--_loc2_ > -1)
         {
            _loc3_ = _colors[_loc2_];
            _loc3_[0][_loc3_[1]] = _loc3_[2] + param1 * _loc3_[3] << 16 | _loc3_[4] + param1 * _loc3_[5] << 8 | _loc3_[6] + param1 * _loc3_[7];
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:String = null;
         for(_loc4_ in param2)
         {
            initColor(param1,_loc4_,uint(param1[_loc4_]),uint(param2[_loc4_]));
         }
         return true;
      }
   }
}

