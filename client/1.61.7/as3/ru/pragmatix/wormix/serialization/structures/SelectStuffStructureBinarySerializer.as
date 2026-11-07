package ru.pragmatix.wormix.serialization.structures
{
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §,"v§.§@#&§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §4!!§.§%$$§;
   import §4B§.§=%8§;
   import §5!9§.§6$,§;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.social.Social;
   
   public class SelectStuffStructureBinarySerializer implements §@#&§
   {
      
      public function SelectStuffStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:SelectStuffStructure = SelectStuffStructure(param1);
         param2.writeInt(_loc4_.profileId);
         param2.writeShort(_loc4_.hatId);
         param2.writeShort(_loc4_.artifactId);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         return null;
      }
   }
}

