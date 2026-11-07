package §+%S§
{
   import § !P§.*;
   import § #m§.§2#P§;
   import § #m§.§?A§;
   import § %f§.Puppet;
   import § &5§.§@N§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#%!§.§[%U§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§5"<§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§%#w§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.§^!9§;
   import §2"L§.§,'§;
   import §2#H§.§,"R§;
   import §2#x§.*;
   import §3"@§.§##L§;
   import §4$b§.§8D§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §<!W§.§9%,§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2!I§ extends §%%o§
   {
      
      public static const NAME:String = "MECH_PUPPET_DEBUFF";
      
      private static const §!!b§:uint = 100;
      
      private static const §?&<§:uint = 100;
      
      private static const §5!X§:uint = 20;
      
      private var hp:§&$2§;
      
      private var ammoClass:Class;
      
      private var paramSet:§5$n§;
      
      private var attachedClip:String;
      
      private var §]"5§:Boolean;
      
      private var owner:§+%]§;
      
      private var effectClip:MovieClip;
      
      private var back:DisplayObject;
      
      private var textField:TextField;
      
      public var §8!h§:§]$q§;
      
      public function §2!I§(param1:§+%]§, param2:Class, param3:§5$n§, param4:String, param5:int)
      {
         super(NAME,§-"^§,1);
         this.ammoClass = param2;
         this.paramSet = param3;
         this.owner = param1;
         this.attachedClip = param4;
         this.hp = new §&$2§(param5);
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:uint = 0;
         var _loc3_:uint = 0;
         this.effectClip = §6#A§.§!&6§(this.attachedClip);
         this.textField = TextField(this.effectClip.getChildByName("text"));
         this.back = this.effectClip.getChildByName("back");
         unit.§#"%§(this.effectClip,0,0,false);
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.addEventListener(§0%v§.§3G§,this.onStable);
         unit.addEventListener(§0%v§.UNIT_ACTIVATION,this.§0c§);
         Application.scene.addEventListener(§0%v§.DAMAGE,this.§"!K§);
         this.§[#0§();
         unit.buffs.place(new §[&;§(§`"C§.§-"^§,true));
         _loc1_ = uint(unit.bonuses.getStatValue(Bonus.SHOCK_DEFENSE));
         var _loc2_:uint = -1 * Math.min(§!!b§,_loc1_);
         _loc3_ = uint(unit.bonuses.getStatValue(Bonus.SHOCK_DAMAGE));
         var _loc4_:uint = Math.min(§5!X§,§?&<§ - _loc3_);
         this.§8!h§ = new §]$q§(NAME);
         this.§8!h§.§3%<§(new §@"I§(Bonus.SHOCK_DEFENSE,_loc2_));
         this.§8!h§.§3%<§(new §@"I§(Bonus.SHOCK_DAMAGE,_loc4_));
         unit.bonuses.§]!X§(this.§8!h§);
      }
      
      private function onStable(param1:Event) : void
      {
         unit.removeEventListener(§0%v§.§3G§,this.onStable);
         §1"-§.§7",§(unit,"MechPuppetStealHP",unit.direction > 0 ? 0 : 0,-10);
      }
      
      private function §0c§(param1:Event) : void
      {
         unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§0c§);
         unit.addEventListener(§0%v§.UNIT_DEACTIVATION,this.§-!L§);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      private function §-!L§(param1:Event) : void
      {
         unit.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§-!L§);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         if(this.textField)
         {
            this.textField.visible = this.back.visible = true;
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         if(this.textField)
         {
            this.textField.visible = this.back.visible = unit.stable && !unit.crawling && unit.speed == 0;
         }
      }
      
      private function §[#0§() : void
      {
         if(this.textField)
         {
            this.textField.visible = this.back.visible = true;
            §7&5§.§?$k§(this.textField,this.hp.value.toString());
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(Boolean(param1.source) && Boolean(param1.source.owner != unit) && param1.source.damageType == §&!E§.§=$-§)
         {
            this.§?!_§(param1);
         }
      }
      
      private function §"!K§(param1:DamageEvent) : void
      {
         if(Boolean(param1.source) && Boolean(param1.source.owner == unit) && param1.source.damageType == §&!E§.§=$-§)
         {
            this.§?!_§(param1);
            this.§0"T§();
         }
      }
      
      private function §?!_§(param1:DamageEvent) : void
      {
         this.hp.value -= param1.power;
         this.§[#0§();
         if(this.hp.value <= 0)
         {
            this.explode();
         }
      }
      
      private function §0"T§() : Boolean
      {
         if(Boolean(unit) && !unit.buffs.§%%b§([§2&>§.NAME,§,"R§.§5!d§]))
         {
            if(unit.hp - this.paramSet.damage.value <= 0)
            {
               §'"$§.§]#I§(null,unit.x,unit.y,unit,this.paramSet.damage.value,0,0,false,true,null,false,false,false);
               return true;
            }
            unit.attributes.hp.change(-this.paramSet.damage.value);
            unit.attributes.hp.§@#§(this.paramSet.damage.value);
            §2!H§.§;!x§(String(this.paramSet.damage.value),§2!H§.§8"<§,unit.x,unit.y - 10,20);
            DamageEvent.§!"2§(null,unit,this.paramSet.damage.value,§0%v§.§'%e§);
            return true;
         }
         return false;
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.DAMAGE,this.§"!K§);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         unit.bonuses.§9=§(this.§8!h§);
         unit.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§-!L§);
         unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§0c§);
         unit.removeEventListener(§0%v§.§3G§,this.onStable);
         unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.§'$§(this.effectClip);
         this.back = null;
         this.textField = null;
         this.effectClip = null;
         this.§]"5§ = true;
      }
      
      private function explode(param1:Event = null) : void
      {
         var _loc2_:Puppet = null;
         if(!this.§]"5§)
         {
            this.§]"5§ = true;
            if(Boolean(unit) && !unit.disposed)
            {
               _loc2_ = new this.ammoClass(this.owner,unit.x,unit.y,this.paramSet,0,0,0);
               _loc2_.inflictDamage(unit,this.paramSet.damage.value,0,0,false);
               _loc2_.disposed = true;
               §1"-§.explode(§;n§.§@"W§,unit.x,unit.y,0,§`!v§.§4"t§);
            }
            clear();
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(this.§3$h§());
      }
      
      public function §3$h§() : §2!I§
      {
         return new §2!I§(this.owner,this.ammoClass,this.paramSet,this.attachedClip,this.hp.value);
      }
   }
}

