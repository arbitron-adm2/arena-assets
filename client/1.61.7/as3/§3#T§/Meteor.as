package §3#T§
{
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<!^§.MeteorShard;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Meteor extends §6#I§
   {
      
      public static const §-#o§:uint = 4;
      
      public function Meteor(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:uint = 4)
      {
         var self:§6#I§ = null;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var x:int = param3;
         var y:int = param4;
         var vx:int = param5;
         var vy:int = param6;
         var shards:uint = param7;
         super(owner,x,y,false,§6#I§.§&i§,§&!E§.AIR);
         initialize(new Point(x,y),paramSet.ammoClassName);
         setSpeedXY(vx,vy);
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            var _loc3_:Number = NaN;
            var _loc4_:int = 0;
            self.inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            var _loc2_:int = 0;
            while(_loc2_ < shards)
            {
               _loc3_ = §8"%§.randomSeed.§5!p§() * Math.PI / 8 - Math.PI / 16 - Math.PI / 2;
               _loc4_ = §8"%§.randomSeed.§,!q§(12,20);
               new MeteorShard(owner,self.x,self.y,_loc3_,_loc4_);
               _loc2_++;
            }
            self.disposed = true;
            §1"-§.§&!C§(self.x,self.y,20);
            §1"-§.explode(§;n§.§@%d§,self.x,self.y,paramSet.explosionRadius.value,§`!v§.§4"t§);
            §'!j§.go(paramSet.damage.value,true);
         });
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§6#B§,8,1);
         Application.scene.§@$I§.§1$+§(this);
      }
   }
}

