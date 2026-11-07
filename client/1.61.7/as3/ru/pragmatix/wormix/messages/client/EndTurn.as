package ru.pragmatix.wormix.messages.client
{
   import § !P§.§9%Z§;
   import § #m§.§;#^§;
   import § $N§.§<%j§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§2!H§;
   import §-%B§.*;
   import §0%"§.§[!^§;
   import §0&F§.UpgradeEvent;
   import §1#p§.§"Z§;
   import §7$t§.§[!X§;
   import §=&!§.§<$Z§;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class EndTurn
   {
      
      public var missionId:int;
      
      public var battleId:int;
      
      public var turn:TurnStructure;
      
      public var turnV2:TurnStructureV2;
      
      public var banType:int;
      
      public var banNote:String = "";
      
      public var sessionKey:String = "";
      
      public function EndTurn(param1:int = 0, param2:int = 0)
      {
         super();
      }
      
      public function toString() : String
      {
         return "EndTurn{" + "battleId=" + this.battleId + ",missionId=" + this.missionId + ",banType=" + this.banType + ",banNote=" + this.banNote + ",sessionKey=" + this.sessionKey + (this.turn ? ",turn=" + this.turn : "") + (this.turnV2 ? ",turnV2=" + this.turnV2 : "") + "}";
      }
   }
}

