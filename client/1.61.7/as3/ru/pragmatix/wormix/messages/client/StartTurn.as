package ru.pragmatix.wormix.messages.client
{
   import §%"1§.§@%;§;
   import §%L§.§'$T§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#H§.§>#M§;
   import §2#i§.§+%z§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<!W§.§1N§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#o§.*;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class StartTurn
   {
      
      public var missionId:int;
      
      public var battleId:int;
      
      public var turn:TurnStructure;
      
      public var sessionKey:String = "";
      
      public function StartTurn()
      {
         super();
      }
      
      public function toString() : String
      {
         return "StartTurn{" + "battleId=" + this.battleId + ",missionId=" + this.missionId + ",sessionKey=" + this.sessionKey + ",turn=" + this.turn + "}";
      }
   }
}

