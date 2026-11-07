package §=1§
{
   import § !P§.*;
   import §&"c§.§!!q§;
   import §&&6§.§7$§;
   import §'!Z§.§2!H§;
   import §-%B§.§-"o§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §4$b§.*;
   import §6"'§.§&"3§;
   import §8#o§.§#$s§;
   import §8$V§.*;
   import §<"?§.§@&#§;
   import §=#g§.§&%5§;
   import §=#g§.§`G§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!i§.*;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   
   public class Hacker extends §@&#§
   {
      
      public static const §7$M§:§&$2§ = new §&$2§(4);
      
      public function Hacker()
      {
         super(89);
         resource = new §@#%§("hacker.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§<!Z§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §7$§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([§#$J§(1481,502),§#$J§(334,673),§#$J§(2087,732),§#$J§(1077,106)],new §,'§(4 * 99)),[§#$J§(1667,255)],[§#$J§(909,653),§#$J§(889,1176)]];
         §§push(§7$§(§6%D§[0]));
         var _temp_2:* = new <Point>[§#$J§(524,192),§#$J§(1083,1259),§#$J§(2023,1092),§#$J§(2381,262)];
         §§pop().generatorPosition = new <Point>[§#$J§(524,192),§#$J§(1083,1259),§#$J§(2023,1092),§#$J§(2381,262)];
      }
      
      override protected function §!"V§() : void
      {
         Application.scene.addEventListener(§0%v§.MASSIVE_DAMAGE,this.§=#u§);
         script.addEventListener(§!!c§.HACKER_ABSORB_REACTIVATED,this.§'$G§);
         §'#G§();
      }
      
      private function §=#u§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.HACKER_DO_MONSTER);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            §=$I§(_loc2_,§7$M§.value);
         }
      }
      
      private function §'$G§(param1:Event) : void
      {
         script.removeEventListener(§!!c§.HACKER_ABSORB_REACTIVATED,this.§'$G§);
         var _loc2_:§2R§ = §]%!§(BossAchieves.HACKER_NUMERATOR);
         if(_loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc3_:§2R§ = null;
         var _loc2_:§+%]§ = param1.source.owner;
         if(Boolean(param1.power > 0 && _loc2_) && Boolean(_loc2_.squad.isAi()) && _loc2_ != §7$§(script).getBoss())
         {
            _loc3_ = §]%!§(BossAchieves.HACKER_FIREWALL);
            if(_loc3_.available)
            {
               _loc3_.§#"!§();
               §5X§(_loc3_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.HACKER_FIREWALL).§,%,§();
         §]%!§(BossAchieves.HACKER_NUMERATOR).§,%,§();
      }
      
      override public function clear() : void
      {
         Application.scene.removeEventListener(§0%v§.MASSIVE_DAMAGE,this.§=#u§);
         script.removeEventListener(§!!c§.HACKER_ABSORB_REACTIVATED,this.§'$G§);
         §>%A§();
         super.clear();
      }
   }
}

