package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§`#p§;
   import §"$+§.§,!<§;
   import §#5§.§!&"§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#h§.§5f§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-G§.*;
   import §0%[§.§1%"§;
   import §7"Q§.§"&=§;
   import §<%E§.§,$2§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §>!_§.§'#m§;
   import §>%S§.§^!V§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import com.adobe.serialization.json.JSONDecoder;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class SellStuffBinarySerializer implements §&"a§
   {
      
      public function SellStuffBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 137;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SellStuff = SellStuff(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         §!!"§.§-%Y§(_loc5_,_loc3_.stuffIds);
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

