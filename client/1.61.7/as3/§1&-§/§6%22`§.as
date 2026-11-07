package §1&-§
{
   import § "%§.§0$[§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §"%H§.*;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§&!R§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§["4§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §4!!§.§'$V§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §65§.§5#A§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §9%W§.§&!P§;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=$#§.§`%u§;
   import §?#g§.§-!k§;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[!`§.VoidZone;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6"`§ extends §5#A§
   {
      
      public static const NAME:String = "INVERTER_BUFF";
      
      public static const §-$9§:String = "BonusInverter";
      
      private static const §2!C§:int = 15;
      
      private static const §[%7§:int = 3;
      
      private var §3"p§:int;
      
      private var §8<§:§]$q§;
      
      private var §#%o§:Vector.<§+%]§>;
      
      private var §<"-§:Boolean;
      
      public function §6"`§(param1:int)
      {
         super(NAME,§`"C§.§-"^§,param1);
      }
      
      override protected function §5#F§() : void
      {
         this.§#%o§ = new Vector.<§+%]§>(0);
         this.§`$s§();
         if(unit.squad)
         {
            this.§4""§();
         }
         else
         {
            Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         }
      }
      
      private function §4""§() : void
      {
         var _loc2_:§+%]§ = null;
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         var _loc1_:Vector.<§+%]§> = unit.squad.§1!n§();
         for each(_loc2_ in _loc1_)
         {
            _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            this.§#%o§.push(_loc2_);
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         if(this.§#%o§)
         {
            this.§4""§();
         }
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         this.§#%<§();
         this.§#%o§ = null;
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(this.§^"q§() && param1.unit.squad.getNumber() == unit.squad.getNumber() && !param1.unit.disposed && !param1.unit.isRevived())
         {
            param1.unit.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            this.§#%o§.push(param1.unit);
         }
      }
      
      private function §^"q§() : Boolean
      {
         return this.§3"p§ < §[%7§;
      }
      
      private function §#%<§() : void
      {
         var _loc1_:§+%]§ = null;
         if(Boolean(this.§#%o§) && this.§#%o§.length > 0)
         {
            for each(_loc1_ in this.§#%o§)
            {
               _loc1_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
            }
            this.§#%o§.length = 0;
         }
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
      }
      
      private function onDisposed(param1:Event) : void
      {
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         var _loc2_:§+%]§ = §+%]§(param1.target);
         _loc2_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         if(Boolean(this.§#%o§) && Boolean(this.§#%o§.length > 0) && this.§#%o§.indexOf(_loc2_) > -1)
         {
            this.§#%o§.splice(this.§#%o§.indexOf(_loc2_),1);
         }
         if(_loc2_.§,&&§())
         {
            return;
         }
         if(Boolean(unit) && this.§^"q§())
         {
            ++this.§3"p§;
            this.§`$s§();
            this.§`"4§();
            if(!this.§^"q§())
            {
               this.§#%<§();
            }
            §8"%§.§?!W§.§>$y§(_loc2_.record.getCharName() + " has been inverted to +" + this.§3"p§ * getValue() + "% shock damage for " + unit.record.getCharName());
         }
         else
         {
            this.§#%<§();
         }
      }
      
      private function §`$s§() : void
      {
         var _loc2_:Vector.<§@"I§> = null;
         if(this.§8<§)
         {
            unit.bonuses.§9=§(this.§8<§);
         }
         var _loc1_:int = this.getAppliedBonus();
         if(_loc1_ > 0)
         {
            var _temp_1:* = new <§@"I§>[new §@"I§(Bonus.SHOCK_DAMAGE,_loc1_)];
            _loc2_ = new <§@"I§>[new §@"I§(Bonus.SHOCK_DAMAGE,_loc1_)];
            this.§8<§ = §]$q§.§7!a§(§-$9§,_loc2_);
            unit.bonuses.§]!X§(this.§8<§);
         }
      }
      
      public function getAppliedBonus() : int
      {
         return this.§3"p§ * getValue();
      }
      
      public function getAppliedCount() : int
      {
         return this.§3"p§;
      }
      
      public function §^!,§(param1:int) : void
      {
         this.§3"p§ = param1;
         this.§`$s§();
         if(!this.§^"q§())
         {
            this.§#%<§();
         }
         §8"%§.§?!W§.§>$y§("added +" + this.§3"p§ * getValue() + "% shock damage for " + unit.record.getCharName());
      }
      
      private function §`"4§() : void
      {
         if(!this.§<"-§ && §8"%§.§?!W§.§4"m§.§=%g§() && !unit.squad.isAi())
         {
            this.§<"-§ = true;
            §`%u§.§5$+§(Bonus.INVERTER_BONUS,unit);
         }
      }
   }
}

