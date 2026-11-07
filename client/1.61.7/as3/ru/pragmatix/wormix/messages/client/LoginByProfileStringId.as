package ru.pragmatix.wormix.messages.client
{
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §6",§.§[%w§;
   import §6%2§.§'"Y§;
   import §7"Q§.*;
   import §;#O§.§+%7§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §?>§.§0!7§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.SelectStuffResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class LoginByProfileStringId extends LoginCommon
   {
      
      public var id:String;
      
      public var referrerId:String;
      
      public function LoginByProfileStringId(param1:String, param2:String)
      {
         super();
         this.id = param1;
         this.referrerId = param2;
      }
      
      override public function toString() : String
      {
         return "LoginByProfileStringId{socialUserId=" + this.id + ", auth_key=" + String(authKey) + ", socialId=" + String(socialCode) + "}";
      }
   }
}

