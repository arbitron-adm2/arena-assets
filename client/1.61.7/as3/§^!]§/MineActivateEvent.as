package §^!]§
{
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&!?§.*;
   import §&$N§.§7!e§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §;#O§.§+%7§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<$2§.§<%>§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §?%J§.*;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.messages.server.EndBattleResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class MineActivateEvent extends Event
   {
      
      public var mine:§6#I§;
      
      public var triggered:Boolean;
      
      public function MineActivateEvent(param1:§6#I§, param2:Boolean, param3:Boolean = false, param4:Boolean = false)
      {
         super(§0%v§.MINE_ACTIVATE,param3,param4);
         this.mine = param1;
         this.triggered = param2;
      }
      
      override public function clone() : Event
      {
         return new MineActivateEvent(this.mine,this.triggered,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("MineActivateEvent","type","bubbles","cancelable","eventPhase","triggered");
      }
   }
}

