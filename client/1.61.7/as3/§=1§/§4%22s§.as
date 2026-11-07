package §=1§
{
   import §"%H§.§'%u§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.§0_§;
   import §'!Z§.§;n§;
   import §-%B§.§-"o§;
   import §0&F§.§!!c§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §4&F§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §7$1§.PushingMine;
   import §7$t§.§2& §;
   import §9&+§.§>&5§;
   import §;!Z§.MercsQuestGiftMenu;
   import §<"?§.§@&#§;
   import §<%k§.*;
   import §="z§.§9%1§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!i§.*;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class §4"s§ extends §@&#§
   {
      
      public function §4"s§()
      {
         super(91);
         resource = new §@#%§("psionic.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§2$&§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §0_§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:§,'§ = null;
         super.§2!9§();
         _loc1_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
         var _loc2_:Array = §""L§.§6$6§([mapRecord.§8$2§[5],mapRecord.§?$&§[0]],_loc1_);
         var _loc3_:Array = §""L§.§6$6§([mapRecord.§8$2§[1],mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§8$2§[8],mapRecord.§?$&§[2]],_loc1_);
         var _loc4_:Array = §""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§8$2§[9],mapRecord.§?$&§[3]],_loc1_);
         §5"N§ = [[_loc4_[0],_loc4_[1],_loc4_[2],_loc4_[3]],[_loc2_[0]],[_loc3_[0],_loc3_[1],_loc3_[2]]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§!!c§.SPHERE_DAMAGE,this.§9%3§);
         script.addEventListener(§!!c§.PSIONIC_SKIP_TELEPORT,this.§1#Z§);
         §'#G§();
      }
      
      private function §1#Z§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.TELEPATHIST_PSIONIC);
         if(_loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      private function §9%3§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.TELEPATHIST_PEDANT);
         if(_loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc4_:§2R§ = null;
         var _loc2_:§+%]§ = param1.source.owner;
         var _loc3_:§+%]§ = §+%]§(param1.victim);
         if(Boolean(param1.power > 0 && _loc2_ && _loc3_) && Boolean(!_loc2_.squad.isAi()) && _loc2_.squad.§&!G§() != _loc3_.squad.§&!G§())
         {
            _loc4_ = §]%!§(BossAchieves.TELEPATHIST_LIFESAVER);
            if(_loc4_.available)
            {
               _loc4_.§#"!§();
               §5X§(_loc4_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.TELEPATHIST_PEDANT).§,%,§();
         §]%!§(BossAchieves.TELEPATHIST_LIFESAVER).§,%,§();
         §]%!§(BossAchieves.TELEPATHIST_PSIONIC).§,%,§();
      }
      
      override public function clear() : void
      {
         script.removeEventListener(§!!c§.SPHERE_DAMAGE,this.§9%3§);
         script.removeEventListener(§!!c§.PSIONIC_SKIP_TELEPORT,this.§1#Z§);
         §>%A§();
         super.clear();
      }
   }
}

