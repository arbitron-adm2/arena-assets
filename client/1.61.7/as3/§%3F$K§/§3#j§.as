package §?$K§
{
   import § "L§.§`#r§;
   import § $q§.*;
   import §!!!§.§7&%§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §%Q§.*;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+#U§.*;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§2!I§;
   import §+%S§.§;!4§;
   import §+%S§.§=$2§;
   import §+%S§.§[&;§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.*;
   import §2#i§.§!$A§;
   import §3#T§.§+&F§;
   import §3#T§.§;'§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §4B§.§=%8§;
   import §5#`§.§7%g§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §9"-§.§?!s§;
   import §9%W§.§!7§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5%8§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import §`#x§.§"$r§;
   import §`%&§.§2z§;
   import api.com.adobe.json.JSON;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.filters.BlurFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.Girder;
   
   public class §3#j§ extends §%%o§ implements §^c§
   {
      
      public static const NAME:String = "DROWNING_PROTECTION_BUFF";
      
      private var §'# §:Boolean;
      
      private var points:Vector.<Point>;
      
      private var §8"l§:MovieClip;
      
      private var §]#5§:§+%]§;
      
      protected var § "Y§:Boolean;
      
      protected var §8,§:Boolean = §8"%§.§?!W§.§^!U§().§6"3§();
      
      private var §-#Y§:§=$2§;
      
      private var §@M§:§2!I§;
      
      public function §3#j§(param1:Boolean = false, param2:String = "DROWNING_PROTECTION_BUFF")
      {
         super(param2,§-"^§,0);
         this.§'# § = param1;
      }
      
      override protected function §5#F§() : void
      {
         this.activate();
      }
      
      override protected function §0&"§() : void
      {
         this.deactivate();
      }
      
      protected function activate() : void
      {
         if(this.§8,§)
         {
            return;
         }
         this.§ "Y§ = true;
         unit.addEventListener(§0%v§.§^$3§,this.onSink);
         unit.addEventListener(§0%v§.§^$3§,this.§9c§,false,§[!F§.§&$§);
         unit.addEventListener(§0%v§.§^$3§,this.§?%R§,false,§[!F§.§4K§);
         this.§8"l§ = unit.graphics.§&$=§(unit.record.§5"L§().getRecord().darkAura,true);
         if(§8"%§.§&S§.§41§())
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
      }
      
      protected function deactivate() : void
      {
         if(this.§8,§)
         {
            return;
         }
         this.§ "Y§ = false;
         unit.removeEventListener(§0%v§.§^$3§,this.onSink);
         unit.removeEventListener(§0%v§.§^$3§,this.§9c§);
         if(unit.disposed || !this.§]#5§)
         {
            unit.removeEventListener(§0%v§.§^$3§,this.§?%R§);
         }
         unit.graphics.§<%C§(unit.record.§5"L§().getRecord().darkAura);
         this.§8"l§ = null;
      }
      
      protected function onSink(param1:Event) : void
      {
         if(this.§8,§)
         {
            return;
         }
         if(!this.§'# § || §8"%§.§?!W§.§4"m§.activeSquad.getTeamId() != unit.squad.getTeamId())
         {
            if(unit.hp > 0)
            {
               unit.disposed = false;
               unit.physParams.§8B§();
               §-#M§.§[&F§(unit,2704583,1053157,80,true,this.points);
               unit.setSpeedXY(0,unit.speedY);
            }
         }
      }
      
      private function §9c§(param1:Event) : void
      {
         var _loc2_:§=$2§ = unit.buffs.getBuff(§=$2§.NAME) as §=$2§;
         if(_loc2_)
         {
            this.§-#Y§ = _loc2_.§3$h§();
         }
         var _loc3_:§2!I§ = unit.buffs.getBuff(§2!I§.NAME) as §2!I§;
         if(_loc3_)
         {
            this.§@M§ = _loc3_.§3$h§();
         }
         if(Boolean(this.§-#Y§) || Boolean(this.§@M§))
         {
            this.§]#5§ = unit;
         }
      }
      
      private function §?%R§(param1:Event) : void
      {
         if(!this.§]#5§ || this.§]#5§.disposed)
         {
            if(this.§]#5§)
            {
               this.§]#5§.removeEventListener(§0%v§.§^$3§,this.§?%R§);
            }
            this.§-#Y§ = null;
            this.§@M§ = null;
            this.§]#5§ = null;
            return;
         }
         if(Boolean(this.§-#Y§) && !this.§]#5§.buffs.hasBuff(§=$2§.NAME))
         {
            this.§]#5§.buffs.place(this.§-#Y§);
         }
         if(Boolean(this.§@M§) && !this.§]#5§.buffs.hasBuff(§2!I§.NAME))
         {
            this.§]#5§.buffs.place(this.§@M§);
         }
         this.§-#Y§ = null;
         this.§@M§ = null;
         this.§]#5§ = null;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §3#j§(this.§'# §));
      }
      
      public function §?$e§(param1:Vector.<Point>) : void
      {
         this.points = param1;
      }
      
      public function get activated() : Boolean
      {
         return this.§ "Y§;
      }
      
      public function playAnimations() : void
      {
         if(Boolean(this.§8"l§) && §8"%§.§&S§.§41§())
         {
            §3!3§.§<%W§(§3!3§.§#"R§(this.§8"l§));
         }
      }
      
      public function stopAnimations() : void
      {
         if(Boolean(this.§8"l§) && !§8"%§.§&S§.§41§())
         {
            §3!3§.§>!j§(§3!3§.§#"R§(this.§8"l§,true,true),null,true);
         }
      }
   }
}

