package ru.pragmatix.wormix.serialization.clans.request.edit
{
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §2#i§.§+%z§;
   import §6#Z§.§&!Z§;
   import §7$t§.§^$E§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §?$L§.§&$9§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import flash.display.DisplayObjectContainer;
   import flash.globalization.DateTimeFormatter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.IncreaseLevelClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class IncreaseLevelClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function IncreaseLevelClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:IncreaseLevelClanRequest = IncreaseLevelClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.level);
         _loc3_.writeBoolean(_loc2_.fromTreas);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.INCREASE_LEVEL_CLAN_REQUEST;
      }
   }
}

