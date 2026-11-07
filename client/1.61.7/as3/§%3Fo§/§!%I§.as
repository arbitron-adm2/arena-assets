package §?o§
{
   import § !8§.§`!d§;
   import § %f§.§=!z§;
   import §!$d§.§<$c§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   
   public class §!%I§ extends §=!z§
   {
      
      protected var § %m§:uint;
      
      protected var blinkClassName:String = null;
      
      protected var counter:§%%a§;
      
      protected var §!r§:Class = §;n§.§8!-§;
      
      protected var §7#J§:Boolean;
      
      public function §!%I§(param1:§+%]§, param2:§5$n§, param3:uint, param4:Number, param5:uint, param6:Number, param7:String, param8:int = 0, param9:int = 300)
      {
         super(param1,param1.x,param1.y,param2,param4,param5,param6,param8,param9);
         §@%;§.play(§`!v§.§7#O§);
         this.counter = new §%%a§(param3 / 30,2);
         this.counter.attach(this,0,-35);
         this.blinkClassName = param7;
         this.§ %m§ = param3;
      }
      
      public function §^"S§() : void
      {
         physParams.§5N§ |= §9%1§.§@%h§;
         addEventListener(§0%v§.§+&=§,this.§5#5§);
      }
      
      private function §5#5§(param1:CollisionEvent) : void
      {
         if(param1.other != null && param1.other is §+%]§ && owner.squad.getTeamId() != §+%]§(param1.other).squad.getTeamId())
         {
            this.explode();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         removeEventListener(§0%v§.§+&=§,this.§5#5§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§"#<§();
      }
      
      protected function §"#<§() : void
      {
         if(!this.disposed && Boolean(this.counter))
         {
            this.counter.tick(1 / 30);
            if(frames == this.§ %m§ - 29 && Boolean(this.blinkClassName))
            {
               swapClip(§6#A§.§!&6§(this.blinkClassName));
            }
            if(frames == this.§ %m§)
            {
               this.explode();
            }
         }
      }
      
      override public function explode() : void
      {
         if(!disposed)
         {
            inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            §1"-§.§&!C§(x,y,12);
            §1"-§.explode(this.§!r§,this.x,this.y,paramSet.damageRadius.value,§`!v§.§["s§);
            disposed = true;
         }
      }
      
      public function §^&&§() : void
      {
         if(this.counter)
         {
            this.counter.§?!K§();
         }
         this.counter = null;
      }
      
      public function explodeOnStopMoving() : void
      {
         this.§7#J§ = true;
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         if(this.§7#J§ && !disposed)
         {
            this.explode();
         }
      }
   }
}

