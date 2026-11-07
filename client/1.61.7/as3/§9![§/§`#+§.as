package §9![§
{
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §-@§.§5"4§;
   import §0!§.§8$Y§;
   import §0!Y§.*;
   import §0"L§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §3"_§.*;
   import §6$z§.BonusTrait;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §<%E§.§;!y§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §="z§.§<$t§;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.messages.client.SetMercenariesTeamMembers;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.AdrenalineInjection;
   
   public class §`#+§ extends BonusTrait
   {
      
      public static const THRESHOLD_03:Number = 0.3;
      
      public static const THRESHOLD_05:Number = 0.5;
      
      public static const THRESHOLD_06:Number = 0.6;
      
      private var threshold:Number;
      
      private var §7""§:int = 0;
      
      public function §`#+§(param1:Number = 1)
      {
         super();
         this.threshold = param1;
      }
      
      override protected function activate(param1:int) : void
      {
         this.§7""§ = param1;
         Application.scene.addEventListener(§0%v§.SOT,this.§,d§);
      }
      
      override protected function deactivate(param1:int) : void
      {
         this.clear();
      }
      
      private function §,d§(param1:Event) : void
      {
         var _loc2_:§8$Y§ = owner.attributes.hp;
         if(_loc2_.§9"H§() >= this.threshold)
         {
            return;
         }
         this.clear();
         var _loc3_:int = this.§7""§;
         var _loc4_:int = owner.bonuses.getStatValue(Bonus.§;#-§);
         _loc3_ += §-q§.§8$G§(_loc4_,_loc3_);
         this.§`&5§();
         _loc2_.§#1§(_loc3_);
      }
      
      private function §`&5§() : void
      {
         var _loc1_:§^%%§ = owner.§+!b§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = _loc1_.getId();
         var _loc3_:uint = 0;
         if(int(_loc2_ / 10) * 10 == §!#^§.HAM_MACE)
         {
            _loc3_ = §]!E§.GNAWED_BONE;
         }
         else if(_loc2_ == §!#^§.§5$_§ + 6)
         {
            _loc3_ = §!#^§.§5$_§ + 1;
         }
         else if(_loc2_ == §]!E§.GOLDEN_HORN)
         {
            _loc3_ = §]!E§.WINE_HORN;
         }
         else if(_loc2_ == §]!E§.GNAWED_BONE)
         {
            _loc3_ = §]!E§.§=%>§;
         }
         else if(_loc2_ == §]!E§.ARCHIDEMON_MUG)
         {
            _loc3_ = §]!E§.ARCHIDEMON_MUG_EMPTY;
         }
         if(_loc3_ > 0)
         {
            owner.§;"U§(§<$c§.§"$h§(_loc3_));
            §1"-§.explode(§;n§.§6#B§,owner.x,owner.y,30,§`!v§.§+#O§);
         }
      }
      
      private function clear() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§,d§);
      }
   }
}

