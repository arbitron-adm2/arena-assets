package ru.pragmatix.wormix.messages.server
{
   import § "d§.§,!c§;
   import §!#g§.MD5;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§6"%§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §&$Y§.§6[§;
   import §&&6§.*;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§]2§;
   import §1#p§.§"Z§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §<!W§.*;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?%J§.*;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §`%c§.§<%D§;
   import api.com.forticom.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class GetColiseumRewardResponse
   {
      
      public var reward:Array;
      
      public var sessionKey:String;
      
      public var isSecure:Boolean;
      
      public function GetColiseumRewardResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "GetColiseumReward{" + this.reward + "}";
      }
   }
}

