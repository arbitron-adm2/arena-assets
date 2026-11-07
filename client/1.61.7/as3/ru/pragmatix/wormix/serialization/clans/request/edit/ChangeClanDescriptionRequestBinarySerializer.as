package ru.pragmatix.wormix.serialization.clans.request.edit
{
   import § m§.§9!^§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §0%[§.§""n§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#o§.§-#d§;
   import §2!-§.DamageEvent;
   import §2#H§.§3$p§;
   import §2#W§.PvpChestBox;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9"-§.§?!s§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §[!`§.SolarSphere;
   import §[%§.*;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class ChangeClanDescriptionRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ChangeClanDescriptionRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ChangeClanDescriptionRequest = ChangeClanDescriptionRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTF(_loc2_.description);
         _loc3_.writeBoolean(_loc2_.fromTreas);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_DESCRIPTION_REQUEST;
      }
   }
}

