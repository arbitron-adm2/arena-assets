package §+%S§
{
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&%X§.§5F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §,#_§.FrameTimer;
   import §,$J§.§0%G§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$1§.*;
   import §8#<§.§!#^§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9&+§.§>&5§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§%!x§;
   import §?"j§.§]!<§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §"$7§ extends §%%o§
   {
      
      public static const NAME:String = "ANTIFREEZE";
      
      private var poisonProtection:Boolean;
      
      private var burstAttack:uint;
      
      private var burstArmor:uint;
      
      private var §>J§:Boolean;
      
      private var §-!5§:Boolean;
      
      public function §"$7§(param1:uint, param2:Boolean, param3:uint, param4:uint, param5:Boolean = false)
      {
         this.poisonProtection = param2;
         this.burstAttack = param3;
         this.burstArmor = param4;
         this.§>J§ = param5;
         super(NAME,param1);
      }
      
      override protected function §5#F§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         unit.buffs.§6C§(§+m§.NAME);
         unit.buffs.§6C§(§[&;§.NAME);
         if(this.poisonProtection)
         {
            unit.buffs.§6C§(§ !!§.NAME);
         }
         var _loc1_:§]!<§ = unit.record.§5"L§().getRecord();
         if(this.burstAttack > 0)
         {
            if(!§5"O§.§4#+§(unit))
            {
               this.§-!5§ = true;
               _loc2_ = unit.attributes.attack.value;
               if(_loc2_ > 0)
               {
                  unit.attributes.attack.§7K§(this.burstAttack);
               }
               this.§,">§(unit.attributes.attack.value - _loc2_,§0$N§.BONUS_ATTACK,§2!H§.§8"<§);
            }
            unit.graphics.§&$=§(_loc1_.defrostAttack);
         }
         else if(this.burstArmor > 0)
         {
            _loc3_ = unit.attributes.armor.value;
            if(_loc3_ > 0)
            {
               unit.attributes.armor.§7K§(this.burstArmor);
            }
            this.§,">§(unit.attributes.armor.value - _loc3_,§0$N§.BONUS_ARMOR,§2!H§.§@!]§);
            unit.graphics.§&$=§(_loc1_.defrostArmory);
         }
         else
         {
            unit.graphics.§&$=§(_loc1_.defrost);
         }
      }
      
      private function §,">§(param1:uint, param2:String, param3:String) : void
      {
         var _loc4_:String = null;
         if(!this.§>J§)
         {
            _loc4_ = §0%§.format(param2,{"value":param1});
            §2!H§.§'!i§(_loc4_,param3,unit.x + §<H§.§-#C§,unit.y + §<H§.§-#C§,20);
         }
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:§]!<§ = unit.record.§5"L§().getRecord();
         if(this.burstAttack > 0)
         {
            if(this.§-!5§)
            {
               unit.attributes.attack.§7K§(-this.burstAttack);
            }
            unit.graphics.§<%C§(_loc1_.defrostAttack);
         }
         else if(this.burstArmor > 0)
         {
            unit.attributes.armor.§7K§(-this.burstArmor);
            unit.graphics.§<%C§(_loc1_.defrostArmory);
         }
         else
         {
            unit.graphics.§<%C§(_loc1_.defrost);
         }
         §@%;§.play(§`!v§.§0&C§);
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
         var _loc2_:§"$7§ = new §"$7§(counter.value,this.poisonProtection,this.burstAttack,this.burstArmor,true);
         if(this.§-!5§)
         {
            _loc2_.§+%,§();
         }
         param1.buffs.place(_loc2_);
      }
      
      public function §+%,§() : void
      {
         this.§-!5§ = true;
      }
   }
}

