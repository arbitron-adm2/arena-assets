package ru.pragmatix.wormix.serialization.clans.response
{
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&!@§.§>"B§;
   import §&"R§.§`&7§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §+%S§.§["4§;
   import §+&<§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-!U§.*;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §;!Z§.*;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import com.greensock.TweenLite;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.InviteToClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class InviteToClanResponseBinarySerializer implements §&"a§
   {
      
      public function InviteToClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:InviteToClanResponse = new InviteToClanResponse();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.interopCode = param1.readInt();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.invites.push(§<!h§.§@%$§(ClanInviteTO).deserializeStructure(param1,null));
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.INVITE_TO_CLAN_RESPONSE;
      }
   }
}

