package §[%§
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §##y§.§9§;
   import §&!m§.§-$6§;
   import §+#U§.§#%D§;
   import §+&<§.*;
   import §-!U§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §4!!§.§6$V§;
   import §5!,§.§?!P§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§8#p§;
   import §<!W§.§3#M§;
   import §<!W§.§[2§;
   import §<"L§.§##-§;
   import §="z§.§1!c§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$P§.§@%F§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import §`%&§.§`§;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Cat extends §+%]§
   {
      
      public static const §##R§:§&$2§ = new §&$2§(20);
      
      private static const §+!F§:Number = 180 / Math.PI;
      
      private var §0!Z§:§1!c§;
      
      private var §`$h§:§@%F§;
      
      public function Cat(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         attributes.jump = this.§`$h§ = new §@%F§(this,attributes.jump);
         if(param1.getRace().§%§(§`!a§.§9$4§).getLevel() <= param1.getLevel())
         {
            buffs.place(new §[2§());
            buffs.place(new §3#M§());
         }
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         this.§0!Z§ = new §1!c§(physParams);
         this.§0!Z§.addEventListener(§9#1§.STABLE,onStable);
         this.§0!Z§.addEventListener(§0%v§.§^$3§,§1$Z§);
      }
      
      public function §?!N§() : void
      {
         §<!6§(this.§0!Z§);
         this.§0!Z§.crawling = 0;
      }
      
      override public function §#&5§() : void
      {
         super.§#&5§();
         this.§`$h§.§!%N§();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == this)
         {
            this.§`$h§.§%%g§(true);
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.§`$h§.§%%g§();
      }
      
      public function deactivateNow() : void
      {
         super.deactivate();
         this.§`$h§.§%%g§(true);
      }
      
      override public function §3C§() : Boolean
      {
         return Boolean(super.§3C§()) && !this.§`$h§.isClimbing;
      }
      
      public function isClimbing() : Boolean
      {
         return Boolean(this.§`$h§) && this.§`$h§.isClimbing;
      }
      
      override protected function §-"m§(param1:Boolean) : void
      {
         if(Boolean(this.§`$h§) && this.§`$h§.isClimbing)
         {
            graphics.getClip().rotation = 0;
            graphics.§6w§("CatClimbs");
            graphics.§"?§().stop();
            this.§<#8§();
         }
         else
         {
            super.§-"m§(param1);
         }
      }
      
      override protected function §@&?§() : void
      {
         if(physicModel is §1!c§)
         {
            graphics.§6w§("CatClimbs");
            graphics.getClip().rotation = 0;
            graphics.§"?§().play();
            this.§<#8§();
         }
         else
         {
            graphics.go();
         }
      }
      
      private function §<#8§() : void
      {
         if(physicModel is §1!c§)
         {
            graphics.getClip().rotation = §+!F§ * §1!c§(physicModel).slopeAngle - 90;
         }
      }
      
      override protected function §>!X§() : void
      {
         if(!this.§`$h§.isClimbing)
         {
            super.§>!X§();
         }
      }
   }
}

