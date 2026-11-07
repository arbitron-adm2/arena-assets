package §+%S§
{
   import § &5§.§=#P§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§@a§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2B§.§#&E§;
   import §3#T§.Boomerang;
   import §5!,§.§9$h§;
   import §6%2§.§#"B§;
   import §65§.§%%o§;
   import §9%W§.§&!P§;
   import §<!W§.§9%,§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginErrorType;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+m§ extends §%%o§
   {
      
      public static const NAME:String = "IMMOBILITY_FREEZE_DEBUFF";
      
      public static const §%!y§:uint = 3;
      
      private static const §]!M§:String = "IceWorm";
      
      private static const §3!q§:uint = 160;
      
      private const §5#D§:Array = [§2&>§.NAME,§,"R§.§5!d§,§1%I§.NAME,§+N§.NAME];
      
      private const §1$>§:Array = [§2&>§.NAME,§,"R§.§5!d§,§"$7§.NAME,§;!4§.NAME,§##B§.NAME];
      
      private var effectClip:MovieClip;
      
      private var §=#&§:uint = 0;
      
      private var owner:§+%]§;
      
      private var §4b§:Boolean;
      
      public function §+m§(param1:§+%]§, param2:uint = 3, param3:Boolean = false)
      {
         super(NAME,param2);
         this.owner = param1;
         this.§4b§ = param3;
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         unit.graphics.colorTransform(0,0,50);
         this.effectClip = §6#A§.§!&6§(§]!M§);
         unit.§#"%§(this.effectClip,0,5,false);
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.setSpeedXY(0,0);
         if(!unit.buffs.hasBuff(§,"R§.§5!d§))
         {
            unit.§3%1§(true);
         }
         if(unit.buffs.§%%b§(this.§1$>§))
         {
            unit.buffs.§6C§(NAME);
         }
         else if(!this.§4b§)
         {
            _loc1_ = unit.bonuses.getStatValue(Bonus.IMMOBILITY_REDUCTION);
            _loc2_ = this.owner ? this.owner.bonuses.getStatValue(Bonus.IMMOBILITY_ADDITION) : 0;
            if(_loc1_ != 0 || _loc2_ != 0)
            {
               duration.value = Math.max(1,duration.value + _loc1_ + _loc2_);
            }
         }
      }
      
      override protected function §0&"§() : void
      {
         this.owner = null;
         if(!unit)
         {
            return;
         }
         unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.graphics.colorTransform(0,0,-50);
         unit.§'$§(this.effectClip);
         this.effectClip = null;
         §1"-§.§8%8§(unit.x,unit.y,20);
         if(!unit.disposed && unit.isImmobile() && !unit.buffs.§%%b§(this.§5#D§))
         {
            unit.§3%1§(false);
         }
         §@%;§.play(§`!v§.§`'§);
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         this.§=#&§ += param1.power;
         if(Boolean(unit) && !unit.disposed)
         {
            if(this.§=#&§ >= §3!q§ || Boolean(param1.source.damageType == §&!E§.FIRE) && (Boolean(!unit.buffs.hasBuff(§9%,§.NAME) || param1.source.owner && param1.source.owner.§+&,§(unit))))
            {
               unit.buffs.§6C§(NAME);
            }
            else
            {
               unit.setSpeedXY(0,0);
            }
         }
      }
      
      override public function reset() : void
      {
         this.§=#&§ = 0;
         super.reset();
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            super.onNextTurn(param1);
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §+m§(null,§8#z§()));
      }
   }
}

