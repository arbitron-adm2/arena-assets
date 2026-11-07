package §]$v§
{
   import § !P§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §0"[§ extends §6#I§
   {
      
      private static const SHARD_COUNT:§&$2§ = new §&$2§(5);
      
      private static const CLEVER_SHARD_POWER:§&$2§ = new §&$2§(15);
      
      private static const NORMAL_SHARD_POWER:§&$2§ = new §&$2§(5);
      
      private var cleverShards:Boolean = false;
      
      public function §0"[§(param1:§+%]§, param2:Point, param3:§5$n§, param4:§5$n§, param5:Number, param6:uint)
      {
         var self:§0"[§ = null;
         var owner:§+%]§ = param1;
         var initialPoint:Point = param2;
         var paramSet:§5$n§ = param3;
         var paramSetEx:§5$n§ = param4;
         var angle:Number = param5;
         var power:uint = param6;
         super(owner,initialPoint.x,initialPoint.y,false);
         §,%S§ = true;
         initialize(initialPoint,paramSet.ammoClassName);
         §@%;§.play(§`!v§.§["p§);
         §^"F§(angle,power);
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            var _loc3_:Number = NaN;
            var _loc4_:uint = 0;
            var _loc6_:Vector.<§+%]§> = null;
            var _loc7_:Number = NaN;
            var _loc8_:int = 0;
            var _loc9_:int = 0;
            var _loc10_:§["l§ = null;
            self.inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            self.disposed = true;
            §1"-§.explode(§;n§.MEDIUM,self.x,self.y,paramSet.explosionRadius.value,§`!v§.§4"t§);
            var _loc2_:Number = cleverShards ? Math.PI / 48 : Math.PI / 4;
            if(cleverShards)
            {
               _loc6_ = §<H§.§5"]§(self.x,self.y,paramSet.damageRadius.value);
               _loc3_ = _loc6_.length > 0 ? Math.atan2(_loc6_[0].y - self.y,_loc6_[0].x - self.x) : Math.PI + self.angle;
               _loc4_ = uint(CLEVER_SHARD_POWER.value);
            }
            else
            {
               _loc3_ = Math.PI + self.angle;
               _loc4_ = uint(NORMAL_SHARD_POWER.value);
            }
            var _loc5_:int = 0;
            while(_loc5_ < SHARD_COUNT.value)
            {
               _loc7_ = §8"%§.randomSeed.§]#W§(_loc3_ - _loc2_,_loc3_ + _loc2_);
               _loc8_ = self.x + Math.cos(_loc7_) * 10;
               _loc9_ = self.y + Math.sin(_loc7_) * 10;
               _loc10_ = new §["l§(owner,_loc8_,_loc9_,_loc7_,_loc4_,paramSetEx,0.6);
               _loc10_.mindAttack = mindAttack;
               _loc5_++;
            }
         });
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,10,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function §%$J§() : void
      {
         this.cleverShards = true;
      }
   }
}

