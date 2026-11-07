package ru.pragmatix.wormix.serialization.clans.response
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#h§.§!"b§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §3#T§.§+&F§;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §9%W§.§!"G§;
   import §;!Z§.*;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import com.adobe.images.JPGEncoder;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class LoginClanEnterAccountBinarySerializer implements §&"a§
   {
      
      public function LoginClanEnterAccountBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc3_:LoginClanEnterAccount = new LoginClanEnterAccount();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.sessionKey = param1.readUTF();
         param1.readShort();
         _loc3_.clan = ClanTO(§<!h§.§@%$§(ClanTO).deserializeStructure(param1,null));
         _loc5_ = param1.readUnsignedShort();
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.chat.push(§<!h§.§@%$§(ClanChatMessageTO).deserializeStructure(param1,null));
            _loc4_++;
         }
         _loc5_ = param1.readUnsignedShort();
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.newsBoard.push(§<!h§.§@%$§(ClanNewsTO).deserializeStructure(param1,null));
            _loc4_++;
         }
         _loc3_.startSeasonDate = param1.readInt();
         _loc3_.finishSeasonDate = param1.readInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.LOGIN_RESPONSE;
      }
   }
}

