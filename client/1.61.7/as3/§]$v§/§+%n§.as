package §]$v§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§]&§;
   import §0&F§.§0%v§;
   import §3#T§.§+&F§;
   import §5#`§.§7%g§;
   import §7!B§.§6#I§;
   import §9%W§.§!"G§;
   import §<!^§.§6$N§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §+%n§ extends §6#I§
   {
      
      private static const CRIPPLE_DURATION:uint = 2;
      
      private static const §%"n§:int = 30;
      
      private static const FIRE_DURATION:int = 110;
      
      private static const FIRE_POWER:int = 5;
      
      private static const PI_ONE_FOUR:Number = Math.PI / 4;
      
      private var counter:uint;
      
      private var §?"G§:int;
      
      private var cripple:Boolean = false;
      
      public function §+%n§(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false)
      {
         var self:§+%n§ = null;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var paramSetEx:§5$n§ = param3;
         var x:int = param4;
         var y:int = param5;
         var counter:uint = param6;
         var armorReduction:uint = param7;
         var spawnShards:Boolean = param8;
         this.counter = counter;
         super(owner,x,y,false,§6#I§.§&i§,§&!E§.AIR);
         initialize(new Point(x,y),paramSet.ammoClassName);
         this.§?"G§ = FIRE_DURATION + (spawnShards ? §%"n§ : 0);
         self = this;
         addEventListener(§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            var _loc2_:int = 0;
            var _loc3_:§+%]§ = null;
            var _loc4_:Vector.<§+%]§> = null;
            var _loc5_:uint = 0;
            if(!disposed)
            {
               --counter;
               _loc2_ = Application.scene.height - Application.scene.§#%0§() - 100;
               _loc3_ = param1.other as §+%]§;
               if(_loc3_ == null)
               {
                  _loc4_ = §<H§.§5"]§(self.x,self.y,30);
                  if(_loc4_.length > 0)
                  {
                     _loc3_ = _loc4_[0];
                  }
               }
               if(counter == 0 || _loc3_ != null || self.y > _loc2_)
               {
                  if(Boolean(_loc3_) && armorReduction > 0)
                  {
                     _loc5_ = _loc3_ != null ? uint(Math.round(0.01 * armorReduction * _loc3_.attributes.armor.value)) : 0;
                     if(_loc5_ > 0)
                     {
                        _loc3_.attributes.armor.§5#l§(-_loc5_);
                     }
                     inflictDamage(_loc3_,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
                     if(_loc5_ > 0)
                     {
                        _loc3_.attributes.armor.§5#l§(_loc5_);
                     }
                  }
                  else
                  {
                     self.inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
                  }
                  self.disposed = true;
                  §1"-§.§&!C§(x,y,16);
                  §1"-§.explode(§;n§.§@%d§,self.x,self.y,paramSet.explosionRadius.value,§`!v§.§4"t§);
                  if(spawnShards)
                  {
                     shards(paramSet.damageRadius.value * 0.7,paramSetEx);
                  }
                  if(cripple)
                  {
                     §7%g§.§,O§(self.x,self.y,paramSet.damageRadius.value,CRIPPLE_DURATION);
                  }
               }
               else
               {
                  §@%;§.play(§`!v§.§0#O§);
                  §1"-§.explode(§;n§.§7q§,self.x,self.y,paramSet.explosionRadius.value);
                  self.inflictDamage(param1.other,10,30,20,false);
                  new §+&F§(self.owner,-PI_ONE_FOUR * 3,FIRE_POWER,self.x,self.y,FIRE_DURATION);
                  new §+&F§(self.owner,-PI_ONE_FOUR * §8"%§.randomSeed.§]#W§(1.2,2.8),FIRE_POWER,self.x,self.y,FIRE_DURATION);
                  new §+&F§(self.owner,-PI_ONE_FOUR,FIRE_POWER,self.x,self.y,FIRE_DURATION);
               }
            }
         });
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§6#B§,12,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function shards(param1:int, param2:§5$n§) : void
      {
         var _loc5_:Number = NaN;
         var _loc3_:int = 20;
         var _temp_6:* = new <Number>[-3 * PI_ONE_FOUR,-PI_ONE_FOUR,0,PI_ONE_FOUR,3 * PI_ONE_FOUR,Math.PI];
         var _loc4_:Vector.<Number> = new <Number>[-3 * PI_ONE_FOUR,-PI_ONE_FOUR,0,PI_ONE_FOUR,3 * PI_ONE_FOUR,Math.PI];
         for each(_loc5_ in _loc4_)
         {
            new §6$N§(owner,x + int(Math.cos(_loc5_) * param1),y + int(Math.sin(_loc5_) * param1),_loc5_,_loc3_,param2);
         }
      }
      
      public function setCripple() : void
      {
         this.cripple = true;
      }
   }
}

