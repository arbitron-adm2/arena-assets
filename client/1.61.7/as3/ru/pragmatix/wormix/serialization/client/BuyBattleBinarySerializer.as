package ru.pragmatix.wormix.serialization.client
{
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#!5§.§>S§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §+%S§.§[0§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%[§.§1%"§;
   import §2!-§.UnitKilledEvent;
   import §2"L§.§,'§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §65§.§`"C§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §=;§.§>%>§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class BuyBattleBinarySerializer implements §&"a§
   {
      
      public function BuyBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 11;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyBattle = BuyBattle(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.moneyType);
         _loc5_.writeBoolean(_loc3_.bulk);
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

