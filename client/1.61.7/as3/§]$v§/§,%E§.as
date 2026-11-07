package §]$v§
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §3#T§.§5!M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§7o§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §,%E§ extends §6#I§
   {
      
      private static const §+#1§:§&$2§ = new §&$2§(30);
      
      private static const §3%H§:§&$2§ = new §&$2§(12);
      
      private static const §"!Q§:§&$2§ = new §&$2§(16);
      
      private var damage:uint;
      
      private var §@&$§:§&$2§;
      
      private var §0!l§:uint = 0;
      
      private var §!##§:Number;
      
      public function §,%E§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         var self:§,%E§ = null;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var angle:Number = param3;
         var power:uint = param4;
         this.§@&$§ = new §&$2§(3);
         super(owner,owner.x,owner.y,false);
         §,%S§ = true;
         this.damage = paramSet.damage.value;
         this.§!##§ = -Math.PI / 2 + owner.direction * Math.PI / 6;
         initialize(§"$C§(angle),paramSet.ammoClassName);
         §@%;§.play(§`!v§.§["p§);
         physParams.§5N§ |= §9%1§.§`$R§;
         §^"F§(angle,power);
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            self.inflictDamage(param1.other,self.damage,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            self.disposed = true;
            §1"-§.explode(§;n§.MEDIUM,self.x,self.y,paramSet.explosionRadius.value,§`!v§.§4"t§);
         });
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,10,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function §^&'§() : void
      {
         var _loc1_:uint = uint(Application.scene.§@$I§.§<#[§());
         if(this.§@&$§.value > 0 && _loc1_ > this.§0!l§ + §3%H§.value)
         {
            this.§0!l§ = _loc1_;
            --this.§@&$§.value;
            this.damage += §+#1§.value;
            §^"F§(this.§!##§,§"!Q§.value);
            §@%;§.play(§`!v§.§="6§);
         }
      }
   }
}

