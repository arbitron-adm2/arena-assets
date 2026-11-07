package com.greensock.easing
{
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §'"N§.*;
   import §0"L§.§+# §;
   import §7$t§.§^$E§;
   import §<"L§.*;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class Bounce
   {
      
      public function Bounce()
      {
         super();
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / param4;
         if(param1 < 1 / 2.75)
         {
            return param3 * (7.5625 * param1 * param1) + param2;
         }
         if(param1 < 2 / 2.75)
         {
            return param3 * (7.5625 * (param1 = param1 - 1.5 / 2.75) * param1 + 0.75) + param2;
         }
         if(param1 < 2.5 / 2.75)
         {
            return param3 * (7.5625 * (param1 = param1 - 2.25 / 2.75) * param1 + 0.9375) + param2;
         }
         return param3 * (7.5625 * (param1 = param1 - 2.625 / 2.75) * param1 + 0.984375) + param2;
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 - easeOut(param4 - param1,0,param3,param4) + param2;
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         if(param1 < param4 * 0.5)
         {
            return easeIn(param1 * 2,0,param3,param4) * 0.5 + param2;
         }
         return easeOut(param1 * 2 - param4,0,param3,param4) * 0.5 + param3 * 0.5 + param2;
      }
   }
}

