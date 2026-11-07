package ru.pragmatix.wormix.serialization.client
{
   import §"!C§.§3#n§;
   import §#"V§.§<"4§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §'!Z§.*;
   import §+$=§.§6#A§;
   import §+%S§.§73§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0&F§.UpgradeEvent;
   import §2!-§.HpChangeEvent;
   import §2"v§.*;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4#2§.*;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §<!W§.§;#A§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetColiseumState;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class GetColiseumStateBinarySerializer implements §&"a§
   {
      
      public function GetColiseumStateBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 110;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetColiseumState = GetColiseumState(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.profileId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

