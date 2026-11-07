package ru.pragmatix.wormix.serialization.pvp.ex
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § $q§.BagMenu;
   import § &5§.§0&$§;
   import §!!!§.§<!j§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2o§.§]#@§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!b§.§8#W§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9z§.§>"d§;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[" §.§ #a§;
   import §[" §.§3$y§;
   import §[" §.§^"c§;
   import §]#[§.§"!I§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.window.§4W§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.RejectBattleOffer;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class RejectBattleOfferBinarySerializer implements §&"a§
   {
      
      public function RejectBattleOfferBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return RejectBattleOffer.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:RejectBattleOffer = RejectBattleOffer(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.profileId);
         _loc5_.writeUTF(_loc3_.profileSocialId);
         _loc5_.writeByte(_loc3_.socialNetworkId);
         _loc5_.writeUTF(_loc3_.authKey);
         _loc5_.writeUTF(_loc3_.playerNames);
         _loc5_.writeShort(_loc3_.mainServerId);
         _loc5_.writeUnsignedInt(_loc3_.battleId);
         _loc5_.writeBoolean(_loc3_.manual);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return {};
      }
   }
}

