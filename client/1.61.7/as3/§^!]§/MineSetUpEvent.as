package §^!]§
{
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§>!I§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §4$b§.§2m§;
   import §5#`§.§7%g§;
   import §7!B§.§6#I§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §?#g§.*;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class MineSetUpEvent extends Event
   {
      
      public var mine:§6#I§;
      
      public var triggered:Boolean;
      
      public function MineSetUpEvent(param1:§6#I§, param2:Boolean, param3:Boolean = false, param4:Boolean = false)
      {
         super(§0%v§.MINE_SET_UP,param3,param4);
         this.mine = param1;
         this.triggered = param2;
      }
      
      override public function clone() : Event
      {
         return new MineSetUpEvent(this.mine,this.triggered,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("MineSetUpEvent","type","bubbles","cancelable","eventPhase","triggered");
      }
   }
}

