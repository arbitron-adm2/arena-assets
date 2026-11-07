package ru.pragmatix.wormix.serialization.client
{
   import §#!5§.§>S§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §+$=§.*;
   import §+%S§.§[0§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.FrameTimerEvent;
   import §2B§.§#&E§;
   import §4!!§.*;
   import §4#2§.*;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §>%S§.§^!V§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.AchieveLogin;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class AchieveLoginBinarySerializer implements §&"a§
   {
      
      public function AchieveLoginBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 3001;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:AchieveLogin = AchieveLogin(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.applicationId);
         _loc5_.writeUTF(_loc3_.socialNetworkId);
         _loc5_.writeUTF(_loc3_.id);
         _loc5_.writeUTF(_loc3_.authKey);
         _loc5_.writeBoolean(_loc3_.sendAchievements);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:AchieveLogin = new AchieveLogin();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.applicationId = _loc4_.readUTF();
         _loc3_.socialNetworkId = _loc4_.readUTF();
         _loc3_.id = _loc4_.readUTF();
         _loc3_.authKey = _loc4_.readUTF();
         _loc3_.sendAchievements = _loc4_.readBoolean();
         return _loc3_;
      }
   }
}

