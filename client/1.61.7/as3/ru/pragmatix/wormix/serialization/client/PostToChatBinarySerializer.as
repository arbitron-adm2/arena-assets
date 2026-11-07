package ru.pragmatix.wormix.serialization.client
{
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §4%_§.§%%D§;
   import §4%_§.§3§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class PostToChatBinarySerializer implements §&"a§
   {
      
      public function PostToChatBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 302;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:PostToChat = PostToChat(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.action);
         _loc5_.writeUTF(_loc3_.profileName);
         _loc5_.writeUTF(_loc3_.message);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new PostToChat();
      }
   }
}

