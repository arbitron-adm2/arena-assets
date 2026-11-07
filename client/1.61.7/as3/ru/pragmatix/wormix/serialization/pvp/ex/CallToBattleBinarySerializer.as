package ru.pragmatix.wormix.serialization.pvp.ex
{
   import §!K§.§"%$§;
   import §#"V§.§!&5§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'"N§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §4'§.§`"q§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§2§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%§.*;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class CallToBattleBinarySerializer implements §&"a§
   {
      
      public function CallToBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return CallToBattle.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:CallToBattle = new CallToBattle();
         _loc4_.profileId = _loc3_.readUnsignedInt();
         _loc4_.battleWager = §<#&§.valueOf(_loc3_.readShort());
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.mapId = _loc3_.readUnsignedInt();
         _loc4_.missionIds = new Vector.<int>(0);
         §!!"§.§[L§(_loc3_,_loc4_.missionIds);
         _loc4_.playerStructs = new Vector.<PvpProfileStructure>(0);
         var _loc5_:uint = _loc3_.readUnsignedShort();
         var _loc6_:uint = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_.readShort();
            _loc4_.playerStructs[_loc6_] = PvpProfileStructure(§<!h§.§@%$§(PvpProfileStructure).deserializeStructure(_loc3_,null));
            _loc6_++;
         }
         var _loc7_:String = _loc3_.readUTF();
         _loc4_.params = JSON.parse(_loc7_);
         return _loc4_;
      }
   }
}

