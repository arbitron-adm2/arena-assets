package ru.pragmatix.wormix.serialization.pvp.ex
{
   import § &5§.§0&$§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&!@§.§5"`§;
   import §&#h§.§?B§;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §6$z§.§!"§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §8#o§.§1@§;
   import §9![§.*;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §=#g§.§&%5§;
   import §>%S§.§^!V§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^"I§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`$T§.*;
   import com.greensock.TweenLite;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.JoinToBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class JoinToBattleBinarySerializer implements §&"a§
   {
      
      public function JoinToBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return JoinToBattle.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:JoinToBattle = JoinToBattle(param1);
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
         §!!"§.§[$k§(_loc5_,_loc3_.backpackConf);
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

