package ru.pragmatix.wormix.serialization.clans.request.edit
{
   import § #m§.§[&H§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §0%[§.§1%"§;
   import §4'§.§`"q§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=;§.§>%>§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class ChangeClanEmblemRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ChangeClanEmblemRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ChangeClanEmblemRequest = ChangeClanEmblemRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         §!!"§.§8%O§(_loc3_,_loc2_.emblem);
         _loc3_.writeBoolean(_loc2_.fromTreas);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_EMBLEM_REQUEST;
      }
   }
}

