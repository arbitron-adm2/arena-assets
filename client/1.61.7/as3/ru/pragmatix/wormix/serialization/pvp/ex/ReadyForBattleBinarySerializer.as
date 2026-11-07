package ru.pragmatix.wormix.serialization.pvp.ex
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §#"V§.§0%9§;
   import §##y§.§9§;
   import §&"c§.§5$n§;
   import §'$j§.§'-§;
   import §+$=§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §1#p§.§@$1§;
   import §3"@§.§##L§;
   import §3#a§.§<#_§;
   import §4#`§.*;
   import §7!B§.§&"T§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%E§.§;!y§;
   import §=&!§.§"!z§;
   import §=&!§.§<$!§;
   import §>%I§.§-#f§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BlurFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class ReadyForBattleBinarySerializer implements §&"a§
   {
      
      public function ReadyForBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ReadyForBattle.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ReadyForBattle = ReadyForBattle(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.battleId);
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

