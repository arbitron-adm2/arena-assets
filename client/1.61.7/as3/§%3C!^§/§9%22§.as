package §<!^§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §9"§ extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      public function §9"§(param1:§+%]§, param2:Number, param3:Number, param4:§5$n§, param5:Number, param6:uint)
      {
         super(param1,param2,param3,false,§&i§,§&!E§.COLD);
         §-"e§ = false;
         this.paramSet = param4;
         initialize(new Point(param2,param3),param4.ammoClassName);
         §^"F§(param5,param6);
         if(clip)
         {
            clip.rotation = param5 * 180 / Math.PI;
         }
         clip.scaleX = clip.scaleY = 0.8;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.attachTrail(this,10,3,4381183,4381183,1);
         }
         Application.scene.§@$I§.§1$+§(this);
         §,%S§ = true;
         physParams.addForce(§]%G§.§-4§);
         physParams.§`#&§ = false;
         physParams.ignoresTerrain = true;
         var _loc7_:§8!U§ = new §8!U§(this,200,3);
         var _loc8_:§%%2§ = new §%%2§(this,20,Math.PI / 60);
         _loc8_.§!$s§(_loc7_);
         §=l§.push(_loc7_,_loc8_);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:Boolean = false;
         _loc2_ = param1.other;
         _loc3_ = _loc2_ is §+%]§;
         var _loc4_:§+%]§ = _loc3_ ? §+%]§(_loc2_) : null;
         var _loc5_:Boolean = _loc3_ && _loc4_.buffs.§%%b§([§+m§.NAME,§+N§.NAME,§[&;§.NAME]);
         var _loc6_:Number = 1 * this.paramSet.damage.value;
         if(_loc5_)
         {
         }
         var _loc7_:Boolean = _loc3_ && §8"%§.§?!W§.§4"m§.§="T§(owner).indexOf(_loc4_) != -1;
         if(!_loc7_)
         {
            inflictDamage(param1.other,_loc6_,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,true);
         }
         §1"-§.explode(§;n§.§7q§,x,y,15,§`!v§.§ !h§);
         disposed = true;
         removeEventListener(§0%v§.§+&=§,this.onCollide);
      }
   }
}

