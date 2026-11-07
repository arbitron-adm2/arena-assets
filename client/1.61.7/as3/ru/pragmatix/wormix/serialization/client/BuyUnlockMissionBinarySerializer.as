package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §#"V§.§0%9§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1#p§.Team;
   import §3"@§.§##L§;
   import §4f§.§-&§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §@!i§.§@$&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyUnlockMission;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BuyUnlockMissionBinarySerializer implements §&"a§
   {
      
      public function BuyUnlockMissionBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 58;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyUnlockMission = BuyUnlockMission(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.missionId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyUnlockMission = new BuyUnlockMission();
         _loc3_.missionId = param1.readShort();
         return _loc3_;
      }
   }
}

