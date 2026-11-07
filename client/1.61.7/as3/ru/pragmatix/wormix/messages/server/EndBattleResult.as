package ru.pragmatix.wormix.messages.server
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §4'§.§^"p§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §9"^§.§,Q§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.§-!k§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class EndBattleResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const CHEAT:int = 1;
      
      public static const DUPLICATED:int = 2;
      
      public static const INVALID_REQUEST:int = 3;
      
      public var validateResult:int;
      
      public var result:int;
      
      public var battleId:int;
      
      public var missionId:int;
      
      public var sessionKey:String;
      
      public var isSecure:Boolean;
      
      public var reagents:Vector.<int> = new Vector.<int>(0);
      
      public var awards:Array;
      
      public function EndBattleResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "EndBattleResult{" + "validateResult=" + this.validateResult + ",result=" + this.result + ",battleId=" + this.battleId + ",missionId=" + this.missionId + ",reagents=" + this.reagents + ",awards=" + this.awards + ",sessionKey=" + this.sessionKey + ",isSecure=" + this.isSecure + "}";
      }
   }
}

