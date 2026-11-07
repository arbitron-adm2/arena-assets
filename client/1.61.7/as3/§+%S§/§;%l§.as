package §+%S§
{
   import § &5§.§%$O§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §-G§.*;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.HpChangeEvent;
   import §2#W§.§ #,§;
   import §3"@§.§""m§;
   import §4%_§.ZombieGrave;
   import §4'§.§^"p§;
   import §4u§.§#"d§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8!Y§.§`#Q§;
   import §9![§.§#$k§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;%l§ extends §3#j§
   {
      
      private static const §%i§:Number = 0.1;
      
      private var §?"L§:int;
      
      public function §;%l§(param1:int, param2:Boolean = false)
      {
         super();
         this.§?"L§ = param1;
         this.§ "Y§ = param2;
      }
      
      override protected function §5#F§() : void
      {
         if(§ "Y§)
         {
            this.activate();
         }
      }
      
      override protected function §0&"§() : void
      {
         if(§ "Y§)
         {
            super.§0&"§();
         }
      }
      
      override protected function activate() : void
      {
         super.activate();
         if(§8,§)
         {
            § "Y§ = true;
         }
         unit.attributes.armor.§5#l§(this.§?"L§);
         this.§,">§(this.§?"L§,§0$N§.BONUS_ARMOR,§2!H§.§@!]§);
      }
      
      override protected function deactivate() : void
      {
         this.§,">§(-this.§?"L§,§0$N§.BONUS_ARMOR,§2!H§.§8"<§);
         unit.attributes.armor.§5#l§(-this.§?"L§);
         super.deactivate();
         if(§8,§)
         {
            § "Y§ = false;
            return;
         }
         §#$k§.§;%$§(unit);
      }
      
      override protected function onSink(param1:Event) : void
      {
         if(§8,§)
         {
            return;
         }
         super.onSink(param1);
         if(§8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            if(unit.weapon)
            {
               unit.weapon.§?!K§();
            }
         }
         var _loc2_:int = int(Math.floor((unit.record.stats.§8+§.value + unit.record.stats.§3$L§.value) * §%i§));
         §'"$§.§]#I§(unit,unit.x,unit.y,unit,_loc2_,0,0,true,true,null,false,false,false);
         §%$O§.§4%s§(Application.scene,unit,true);
         if(!unit.disposed)
         {
            unit.setSpeedXY(0,0);
         }
         §@%;§.play(§`!v§.TELEPORT);
         clear();
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         if(!§ "Y§ && !unit.disposed)
         {
            this.activate();
         }
      }
      
      private function §,">§(param1:int, param2:String, param3:String) : void
      {
         var _loc4_:String = §0%§.format(param2,{"value":param1});
         if(param1 < 0)
         {
            _loc4_ = _loc4_.replace("+","");
         }
         §2!H§.§'!i§(_loc4_,param3,unit.x - §<H§.§-#C§,unit.y - §<H§.§-#C§,20);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §;%l§(this.§?"L§,§ "Y§));
      }
   }
}

