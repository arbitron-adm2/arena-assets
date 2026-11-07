package ru.pragmatix.wormix.serialization.pvp.ex
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=&6§.*;
   import §?>§.§]!V§;
   import §@!N§.§&#Z§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@"s§.§]!>§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^!]§.WeaponShootEvent;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   
   public class StartPvpBattleBinarySerializer implements §&"a§
   {
      
      public function StartPvpBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return StartPvpBattle.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:StartPvpBattle = new StartPvpBattle();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.sessionKey = _loc3_.readUTF();
         _loc4_.playerNum = _loc3_.readByte();
         _loc4_.turnElapsedBeforeOutageMs = _loc3_.bytesAvailable >= 4 ? _loc3_.readUnsignedInt() : 0;
         return _loc4_;
      }
   }
}

