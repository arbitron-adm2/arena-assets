package §,"`§
{
   import § !P§.*;
   import §""8§.§,"z§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.§7$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§#$A§;
   import §2#x§.*;
   import §7!B§.§6#I§;
   import §9%W§.§!7§;
   import §<%E§.§'$g§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §=#g§.*;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import config.achievements.BossAchieves;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §9#s§ extends §,"z§
   {
      
      private var blinkClassName:String;
      
      protected var paramSet:§5$n§;
      
      private var paramSetEx:§5$n§;
      
      private var §?%9§:§&$2§;
      
      private var shardClass:Class;
      
      private var §<&B§:Boolean = false;
      
      public function §9#s§(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:String, param5:§&$2§, param6:Class, param7:Number, param8:uint)
      {
         super(param1,param2,param7,param8,§6#I§.§&i§);
         this.paramSet = param2;
         this.paramSetEx = param3;
         this.§?%9§ = param5;
         this.shardClass = param6;
         this.blinkClassName = param4;
         §@%;§.play(§`!v§.§7#O§);
         canBeDamaged = false;
         this.attachTrail();
      }
      
      override public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.attachTrail(this,§^%$§,§;L§,§<!2§,§;$A§,1);
         }
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         super.onCollide(param1);
         swapClip(§6#A§.§!&6§(this.blinkClassName));
         §8$a§.§%!E§(30,this.explode);
         if(!this.§<&B§)
         {
            §@%;§.play(§`!v§.§-$z§);
            this.§<&B§ = true;
         }
         physParams.removeAllForces();
         stable = false;
      }
      
      protected function explode() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         if(!disposed)
         {
            inflictDamage(null,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            disposed = true;
            §1"-§.§&!C§(x,y,50);
            §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.explosionRadius.value,§`!v§.§["s§);
            _loc1_ = [-Math.PI / 18,-Math.PI / 40,-Math.PI / 80,Math.PI / 60,Math.PI / 36,Math.PI / 20,-Math.PI / 24,Math.PI / 80];
            _loc2_ = [4,7,8,7,4,6,5,8];
            if(this.§?%9§.value > 8)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"sticky projectile hack"));
            }
            _loc3_ = 0;
            while(_loc3_ < this.§?%9§.value)
            {
               _loc4_ = -Math.PI / 2 + _loc1_[_loc3_];
               _loc5_ = this.§,"G§(_loc4_);
               _loc6_ = -Math.PI / 2 + Math.PI / 60 * §8"%§.randomSeed.§,!q§(-10,10);
               _loc7_ = §8"%§.randomSeed.§,!q§(7,12);
               new this.shardClass(owner,_loc5_.x,_loc5_.y,_loc6_,_loc7_,this.paramSetEx,1);
               _loc3_++;
            }
         }
      }
      
      protected function §,"G§(param1:Number) : Point
      {
         return new Point(x + Math.cos(param1) * 50,y + Math.sin(param1) * 50);
      }
   }
}

