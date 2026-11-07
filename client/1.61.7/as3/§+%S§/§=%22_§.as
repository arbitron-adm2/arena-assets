package §+%S§
{
   import § %f§.Parasite;
   import §!$d§.§<$c§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §,$J§.§0%G§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §3"@§.§""m§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §="_§ extends §%%o§
   {
      
      public static const NAME:String = "PARASITE";
      
      private static const § &G§:int = 2;
      
      private static const §2"§:§&$2§ = new §&$2§(5);
      
      private static const §;%+§:§&$2§ = new §&$2§(48);
      
      private static const EXPLOSION_DELAY:§&$2§ = new §&$2§(66);
      
      private var ammoClass:Class;
      
      private var paramSet:§5$n§;
      
      private var blinkClip:String;
      
      private var attachedClip:String;
      
      private var §]"5§:Boolean;
      
      private var § #6§:Boolean;
      
      private var timer:FrameTimer;
      
      private var owner:§+%]§;
      
      private var effectClip:MovieClip;
      
      private var §&#y§:uint = 0;
      
      public function §="_§(param1:§+%]§, param2:Class, param3:§5$n§, param4:String, param5:String, param6:int = 2)
      {
         super(NAME,param6,1);
         this.ammoClass = param2;
         this.paramSet = param3;
         this.owner = param1;
         this.blinkClip = param4;
         this.attachedClip = param5;
      }
      
      override protected function §5#F§() : void
      {
         this.effectClip = §6#A§.§!&6§(this.attachedClip);
         unit.§#"%§(this.effectClip,0,0,false);
         if(!unit.bonuses.§^#5§(Bonus.SLOW_PROTECTION) && !unit.buffs.hasBuff(§"$7§.NAME) && !unit.buffs.hasBuff(§;!4§.NAME))
         {
            this.§ #6§ = true;
            unit.attributes.§8$e§.§5#l§(-§[&;§.§&! §);
            unit.attributes.jump.§]x§(-§[&;§.§0o§);
            unit.attributes.jump.§9"y§(-§[&;§.§1#?§);
         }
      }
      
      override protected function §0&"§() : void
      {
         unit.§'$§(this.effectClip);
         this.effectClip = null;
         Application.scene.removeEventListener(§0%v§.EOT,this.explode);
         if(this.timer)
         {
            this.timer.stop();
            this.timer.removeEventListener(FrameTimerEvent.§8$`§,this.explode);
            this.timer = null;
         }
         this.§]"5§ = true;
         this.owner = null;
         if(this.§ #6§)
         {
            unit.attributes.§8$e§.§5#l§(§[&;§.§&! §);
            unit.attributes.jump.§]x§(§[&;§.§0o§);
            unit.attributes.jump.§9"y§(§[&;§.§1#?§);
         }
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         this.timer = new FrameTimer(§2"§.value,EXPLOSION_DELAY.value);
         this.timer.addEventListener(FrameTimerEvent.§8$`§,this.onTimer);
         this.timer.start();
         Application.scene.addEventListener(§0%v§.EOT,this.explode);
      }
      
      private function onTimer(param1:Event = null) : void
      {
         if(!this.§]"5§)
         {
            ++this.§&#y§;
            if(this.§&#y§ == §;%+§.value)
            {
               unit.§'$§(this.effectClip);
               this.effectClip = §6#A§.§!&6§(this.blinkClip);
               unit.§#"%§(this.effectClip,0,0,false,false);
            }
            if(this.§&#y§ == EXPLOSION_DELAY.value)
            {
               this.explode();
            }
            else if(this.§&#y§ > §;%+§.value || this.§&#y§ % 6 == 0)
            {
               §`!v§.§[!o§(§`!v§.§^%§);
            }
         }
      }
      
      private function explode(param1:Event = null) : void
      {
         var _loc2_:Parasite = null;
         if(!this.§]"5§)
         {
            if(!unit.disposed)
            {
               _loc2_ = new this.ammoClass(this.owner,unit.x,unit.y,this.paramSet,0,0);
               _loc2_.inflictDamage(unit,this.paramSet.damage.value,0,0,false);
               _loc2_.disposed = true;
               §1"-§.explode(§;n§.§@"W§,unit.x,unit.y,0,§`!v§.§["s§);
            }
            clear();
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §="_§(this.owner,this.ammoClass,this.paramSet,this.blinkClip,this.attachedClip,§8#z§()));
      }
   }
}

