package ru.pragmatix.wormix.serialization.client
{
   import § #m§.§;#^§;
   import § &5§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1&-§.§4!s§;
   import §2#H§.§3$p§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#T§.*;
   import §3%?§.§=E§;
   import §4#`§.BattleInterface;
   import §6"'§.§9$Z§;
   import §6%2§.§#"B§;
   import §8$V§.TeamController;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §=#g§.§&%5§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import config.§;"I§;
   import config.§^"2§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BuyGroupSlotBinarySerializer implements §&"a§
   {
      
      public function BuyGroupSlotBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 122;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyGroupSlot = BuyGroupSlot(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeByte(_loc3_.newSlotIndex);
         _loc5_.writeShort(_loc3_.moneyType);
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

