package §]$v§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §<#1§ extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      public function §<#1§(param1:Point, param2:§5$n§, param3:Number, param4:uint, param5:Boolean = true)
      {
         super(null,param1.x,param1.y,false);
         this.paramSet = param2;
         §,%S§ = true;
         §6""§ = true;
         §@%;§.play(§`!v§.§["p§);
         initialize(param1,param2.ammoClassName);
         this.clip.rotation = param3 * 180 / Math.PI;
         §^"F§(param3,param4);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
         §@%;§.play(§`!v§.§["p§);
         if(!param5)
         {
            physParams.§"%<§(§]%G§.§5$r§.name);
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(!disposed)
         {
            this.explode(param1.other);
            disposed = true;
         }
      }
      
      protected function explode(param1:§&"T§) : void
      {
         inflictDamage(param1,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§8!-§,x,y,40,§`!v§.§4"t§);
         super.§[$u§(param1);
      }
   }
}

