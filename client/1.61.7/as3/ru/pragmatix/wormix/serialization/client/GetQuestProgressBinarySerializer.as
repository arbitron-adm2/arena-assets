package ru.pragmatix.wormix.serialization.client
{
   import §##j§.§7,§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §4$b§.§2m§;
   import §7$t§.§^$E§;
   import §9%W§.§!7§;
   import §<%E§.§=$u§;
   import §=!p§.§8#x§;
   import §>%S§.§^!V§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.*;
   
   public class GetQuestProgressBinarySerializer implements §&"a§
   {
      
      public function GetQuestProgressBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 117;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:§^!V§ = new §^!V§();
         _loc3_.§@&I§(this.getCommandId());
         var _loc4_:ByteArray = new ByteArray();
         _loc3_.§<!§(_loc4_.length);
         _loc3_.§2$t§(param2);
         param2.writeBytes(_loc4_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

