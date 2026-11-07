package ru.pragmatix.wormix.serialization.pvp.ex
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§1§;
   import §+$=§.§;!d§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §3"_§.§?#w§;
   import §3#a§.§-#M§;
   import §7"Q§.§0$L§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §;!J§.§8!a§;
   import §<$2§.§+$9§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=#g§.§&%5§;
   import §=$#§.§1!$§;
   import §>%I§.§`!g§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§6&'§;
   import §@!N§.§3!3§;
   import §@"x§.*;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^4§.§@#J§;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class CancelBattleBinarySerializer implements §&"a§
   {
      
      public function CancelBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return CancelBattle.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:CancelBattle = CancelBattle(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.battleId);
         _loc5_.writeShort(_loc3_.error);
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

