package §%$n§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §?,§ extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      public function §?,§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,false);
         this.paramSet = param2;
         §,%S§ = true;
         §6""§ = true;
         §@%;§.play(§`!v§.§["p§);
         initialize(§"$C§(param3,0),param2.ammoClassName);
         this.clip.rotation = param3 * 180 / Math.PI;
         physParams.addForce(§]%G§.§-4§);
         §^"F§(param3,param4);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         Application.scene.§@$I§.§1$+§(this);
         §@%;§.play(§`!v§.§["p§);
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
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.§8!-§,x,y,this.paramSet.damageRadius.value,§`!v§.§4"t§);
         inflictDamage(param1,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
      }
   }
}

