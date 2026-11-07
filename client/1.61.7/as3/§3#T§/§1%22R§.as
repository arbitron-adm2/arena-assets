package §3#T§
{
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%J§.RopeRaceGiftMenu;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1"R§ extends §6#I§
   {
      
      private static const §3"B§:uint = 2;
      
      private static const §]"O§:uint = 15;
      
      private static const §+!p§:uint = 23;
      
      private static const §;%G§:§&$2§ = new §&$2§(40);
      
      protected var paramSet:§5$n§;
      
      public function §1"R§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint)
      {
         super(param1,param2,param3,false,90,§&!E§.§=$-§);
         §-"e§ = false;
         initialize(§"$C§(param5,5),param4.ammoClassName);
         this.paramSet = param4;
         §^"F§(param5,param6);
         §`4§ = §]$S§;
         physParams.§"%<§(§]%G§.§="u§);
         physParams.§`#&§ = true;
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:Vector.<§&"T§> = null;
         var _loc4_:Vector.<§&"T§> = null;
         var _loc5_:§&"T§ = null;
         var _loc6_:Point = null;
         _loc2_ = Application.scene.§@$I§.§@!_§();
         var _loc3_:Vector.<§&"T§> = §<H§.§3%'§(x,y,§;%G§.value,_loc2_);
         if(_loc3_.indexOf(owner) != -1 && !owner.disposed)
         {
            owner.graphics.jump();
            §-#M§.bounce(owner,owner,this.paramSet,x,y,§3"B§,§]"O§,§+!p§);
            §1"-§.explode(§;n§.§1"E§,x,y,§;%G§.value / 4,§`!v§.§`%9§);
         }
         else
         {
            _loc4_ = §<H§.§3%'§(x,y,this.paramSet.damageRadius.value,_loc2_);
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.disposed && _loc5_ != this && _loc5_ != owner)
               {
                  _loc6_ = §=z§.§-L§(_loc5_);
                  inflictDamage(_loc5_,this.paramSet.damage.value,0,0,true,false,true,_customSource);
                  if(_loc5_ is §+%]§)
                  {
                     §+%]§(_loc5_).rotateUntilStable();
                  }
                  if(_loc5_.canBeDamaged)
                  {
                     §-#M§.bounce(_loc5_,owner,this.paramSet,x,y,§3"B§,§]"O§,§+!p§);
                  }
                  if(_loc6_)
                  {
                     §=z§.§5!u§(_loc5_,_loc6_);
                  }
               }
            }
            §1"-§.explode(§;n§.§1"E§,x,y,this.paramSet.damageRadius.value / 2,§`!v§.§`%9§);
         }
         disposed = true;
         §@%;§.play(§`!v§.§@S§);
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         var _loc2_:Array = null;
         if(y > 0 && x > -200 && x < Application.scene.width + 200)
         {
            _loc2_ = [§`!v§.WATER_IMPACT1,§`!v§.WATER_IMPACT2,§`!v§.WATER_IMPACT3];
            §@%;§.play(§`!v§.§=%2§(_loc2_));
         }
         disposed = true;
      }
   }
}

