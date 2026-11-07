package ru.pragmatix.wormix.serialization.clans.response.treasury
{
   import § !8§.§`!d§;
   import § #k§.*;
   import § $q§.§-%f§;
   import § &5§.§0&$§;
   import §!L§.§3%b§;
   import §"$+§.§@C§;
   import §#%!§.§ §;
   import §%"1§.§=#?§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §+$=§.§9"%§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-&5§.*;
   import §-@§.§0"e§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4'§.§`"q§;
   import §6"'§.§9$Z§;
   import §7"Q§.§0$L§;
   import §;#O§.§+%7§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^"<§.§+%E§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.treasury.DonateClanResponse;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class DonateClanResponseBinarySerializer implements §&"a§
   {
      
      public function DonateClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:DonateClanResponse = new DonateClanResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.DONATE_RESPONSE;
      }
   }
}

