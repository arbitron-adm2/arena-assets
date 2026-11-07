package ru.pragmatix.wormix.serialization.client
{
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §3#T§.§;#Q§;
   import §4!!§.§'$V§;
   import §4f§.§-&§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=#g§.§&%5§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§6J§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`#x§.*;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.SearchTheHouse;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class SearchTheHouseBinarySerializer implements §&"a§
   {
      
      public function SearchTheHouseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 81;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SearchTheHouse = SearchTheHouse(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _temp_2:* = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.sessionKey);
         _loc5_.writeUnsignedInt(_loc3_.friendId);
         _loc5_.writeByte(_loc3_.keyNum);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:SearchTheHouse = new SearchTheHouse();
         _loc4_.sessionKey = _loc3_.readUTF();
         _loc4_.friendId = _loc3_.readUnsignedInt();
         _loc4_.keyNum = _loc3_.readByte();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
   }
}

