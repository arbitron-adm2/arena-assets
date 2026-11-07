package §7!y§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import § K§.§2""§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%&6§.§0%2§;
   import §&$Y§.§7#T§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §4!x§.§8#u§;
   import §6$z§.§%&&§;
   import §6$z§.BonusStat;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §<$2§.§+$9§;
   import §<%k§.§`!v§;
   import §?"j§.§]!<§;
   import §?$7§.§!§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§3!D§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.greensock.loading.core.*;
   import config.§#!"§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`$$§ extends BonusStat implements §%&&§
   {
      
      public function §`$$§()
      {
         super();
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         this.§3%<§(param1);
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         this.§3%<§(-param1);
      }
      
      private function §3%<§(param1:int) : void
      {
         var _loc2_:§+%]§ = null;
         owner.attributes.armor.§5#l§(param1);
         if(owner.squad)
         {
            for each(_loc2_ in owner.squad.§1!n§())
            {
               if(_loc2_ != owner)
               {
                  _loc2_.attributes.armor.§5#l§(param1);
               }
            }
         }
      }
      
      public function §[%x§(param1:§+%]§) : void
      {
         param1.attributes.armor.§5#l§(§]%&§.value);
      }
   }
}

