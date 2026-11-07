package §1&-§
{
   import § &5§.§!$#§;
   import §!L§.§+"'§;
   import §!L§.§3%b§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §+5§.*;
   import §-%B§.*;
   import §-@§.*;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§^"5§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §2!-§.AttackDodgedEvent;
   import §2!-§.DamageEvent;
   import §2!-§.NextTurnEvent;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2#x§.§]s§;
   import §3#T§.Boomerang;
   import §3%?§.§=E§;
   import §4!!§.§6$V§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5#`§.§7%g§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §6%2§.§'"Y§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<$q§.§6%b§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§`%u§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §]$v§.§0"[§;
   import §]$v§.§1>§;
   import §^!"§.§^$F§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.*;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]%4§ extends §5#A§
   {
      
      public static const NAME:String = "BONUS.DODGE";
      
      public static const §;&D§:Number = 0.4;
      
      protected static const §9# §:uint = 8;
      
      private static const §-%R§:§&$2§ = new §&$2§(100);
      
      private var §?%B§:int;
      
      private var §-#;§:int = -1;
      
      protected var §[%A§:int = -1;
      
      public function §]%4§(param1:int, param2:int = -1, param3:int = 8, param4:String = "BONUS.DODGE")
      {
         this.§?%B§ = param3;
         super(param4,param2,param1);
      }
      
      override protected function §5#F§() : void
      {
         unit.addEventListener(§0%v§.§&!D§,this.§7!s§,false,§[!F§.§@!C§);
         unit.addEventListener(§0%v§.§`"S§,this.beforeHit);
      }
      
      override protected function §0&"§() : void
      {
         unit.removeEventListener(§0%v§.§&!D§,this.§7!s§);
         unit.removeEventListener(§0%v§.§`"S§,this.beforeHit);
         this.§=&+§();
      }
      
      protected function §0"y§() : Boolean
      {
         return !§5"O§.isSleep(unit);
      }
      
      private function beforeHit(param1:BeforeHitEvent) : void
      {
         if(!this.§0"y§())
         {
            return;
         }
         var _loc2_:§6#I§ = param1.§^w§ as §6#I§;
         if(Boolean(_loc2_) && Boolean(_loc2_.§4M§) && this.§5!z§(_loc2_))
         {
            param1.cancelCollision = true;
            this.§"%l§();
         }
      }
      
      private function §7!s§(param1:DamageEvent) : void
      {
         if(!this.§0"y§())
         {
            return;
         }
         if(param1.source.damageType != §&!E§.POISON && Math.abs(param1.power) > §<H§.§?O§ && param1.source.§4M§ && this.§5!z§(param1.source))
         {
            this.§"%l§();
         }
      }
      
      protected function §5!z§(param1:§6#I§ = null) : Boolean
      {
         if(param1 is Boomerang && param1.owner == unit && Boomerang(param1).canBeCaught)
         {
            return false;
         }
         if(param1 is §6$V§ && unit.§+&,§(param1.owner) && §6$V§(param1).healing)
         {
            return false;
         }
         if(this.§-#;§ == -1)
         {
            this.§-#;§ = §8"%§.randomSeed.§,!q§(0,§-%R§.value - 1);
         }
         var _loc2_:int = Application.scene.§@$I§.§<#[§();
         if(_loc2_ != this.§[%A§ && unit.§0"y§ && !unit.attributes.hp.§?!H§)
         {
            this.§[%A§ = _loc2_;
            this.§-#;§ += value.value;
            if(this.§-#;§ > §-%R§.value)
            {
               this.§-#;§ -= §-%R§.value;
               return true;
            }
         }
         return false;
      }
      
      private function §"%l§() : void
      {
         var effectDuration:uint;
         var effectClip:MovieClip = null;
         unit.attributes.hp.§?!H§ = true;
         unit.physParams.§0#0§ = §<#`§.NONE;
         effectClip = §1"-§.§`$Q§(unit.x,unit.y,§1"-§.§'$!§,2,false);
         effectDuration = 22;
         §8$a§.§%!E§(effectDuration,function():void
         {
            Application.scene.removeChild(effectClip);
         });
         unit.graphics.getClip().alpha = 0.2;
         §8$a§.§%!E§(this.§?%B§,this.§=&+§);
         Application.scene.dispatchEvent(new AttackDodgedEvent(unit));
         if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            §`%u§.§5$+§(Bonus.DODGE,unit);
         }
      }
      
      private function §=&+§(param1:Event = null) : void
      {
         if(unit)
         {
            unit.attributes.hp.§?!H§ = false;
            unit.physParams.§0#0§ = §<#`§.§[;§;
            unit.graphics.getClip().alpha = 1;
         }
      }
   }
}

