package §4$"§
{
   import § &5§.§=#P§;
   import §!$Z§.§6=§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&%X§.§<$M§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#H§.§>#M§;
   import §4#`§.*;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §9%W§.§8#p§;
   import §<"?§.*;
   import §<%E§.§;!y§;
   import §?$7§.§6J§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§@&,§;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.RegenerateCandidates;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class FoulWatermelon extends Watermelon
   {
      
      private static const § !6§:int = 5;
      
      private var § !c§:uint = 2;
      
      public function FoulWatermelon(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:uint, param5:Number, param6:uint, param7:Number)
      {
         §=#Y§ = true;
         super(param1,param2,param3,param4,param5,param6,param7);
         §5!§ = FoulWatermelonPiece;
         §!r§ = §;n§.§8%a§;
         _damageType = §&!E§.POISON;
         addEventListener(§0%v§.§+&=§,this.onCollide);
      }
      
      override public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(this,§;n§.§&#b§,20,2);
         }
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         --this.§ !c§;
         if(this.§ !c§ == 0)
         {
            this.explode();
         }
      }
      
      override public function explode() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         if(!disposed)
         {
            super.explode();
            _loc1_ = owner ? owner.bonuses.getStatValue(Bonus.POISONING_ADDITION) : 0;
            _loc2_ = § !6§ + _loc1_;
            _loc3_ = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
            for each(_loc4_ in _loc3_)
            {
               §7%g§.§>!%§(_loc4_,owner,_loc2_);
            }
         }
      }
   }
}

