package ru.pragmatix.wormix.serialization.client
{
   import § "L§.§`#r§;
   import § &5§.§=#P§;
   import §!"r§.*;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2#V§.§-#U§;
   import §4$b§.*;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.client.AssembleEquip;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class AssembleEquipBinarySerializer implements §&"a§
   {
      
      public function AssembleEquipBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:AssembleEquip = AssembleEquip(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.familyId);
         _loc5_.writeShort(_loc3_.moneyType);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
      
      public function getCommandId() : uint
      {
         return 99;
      }
   }
}

