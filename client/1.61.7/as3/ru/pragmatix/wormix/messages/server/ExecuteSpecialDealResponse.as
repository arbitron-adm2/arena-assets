package ru.pragmatix.wormix.messages.server
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§;%q§;
   import §,#c§.ArenaMenu;
   import §-!U§.§&%j§;
   import §0%[§.Cookie;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §3#T§.§?$q§;
   import §5!,§.§-§;
   import §5"J§.*;
   import §7"Q§.§0$L§;
   import §<!W§.§>&@§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §]$&§.§3$%§;
   import §^"y§.§]#i§;
   import §`%c§.*;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   
   public class ExecuteSpecialDealResponse
   {
      
      public var result:int;
      
      public var itemId:int;
      
      public var rubyPrice:int;
      
      public var sessionKey:String;
      
      public function ExecuteSpecialDealResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ExecuteSpecialDealResponse{result=" + this.result + ", itemId=" + this.itemId + ", rubyPrice=" + this.rubyPrice + "}";
      }
   }
}

