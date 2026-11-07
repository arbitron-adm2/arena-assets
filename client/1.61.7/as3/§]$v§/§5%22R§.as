package §]$v§
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<!^§.§<b§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §5"R§ extends §6#I§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const SHARDS_COUNT:§&$2§ = new §&$2§(10);
      
      private var deviationAngle:Number = 0.7853981633974483;
      
      private var shardPowerMin:int = 9;
      
      private var shardPowerMax:int = 20;
      
      private var bounceCoeff:Number = 0.5;
      
      public function §5"R§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         var self:§6#I§ = null;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var angle:Number = param3;
         var power:uint = param4;
         super(owner,owner.x,owner.y,false);
         §,%S§ = true;
         §6""§ = true;
         §@%;§.play(§`!v§.§["p§);
         initialize(§"$C§(angle,0),paramSet.ammoClassName);
         this.clip.rotation = angle * 180 / Math.PI;
         physParams.addForce(§]%G§.§-4§);
         §^"F§(angle,power);
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            var _loc3_:Number = NaN;
            var _loc4_:int = 0;
            var _loc5_:int = 0;
            var _loc2_:Number = self.angle;
            if(SHARDS_COUNT.value > 10)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"ground breaker missile hack"));
            }
            var _loc6_:int = 0;
            while(_loc6_ < SHARDS_COUNT.value)
            {
               _loc3_ = Math.PI + §8"%§.randomSeed.§]#W§(_loc2_ - deviationAngle,_loc2_ + deviationAngle);
               _loc4_ = self.x + Math.cos(_loc3_) * 10;
               _loc5_ = self.y + Math.sin(_loc3_) * 10;
               new §<b§(owner,_loc4_,_loc5_,-PI_HALF + _loc3_ * (_loc6_ % 2 == 0 ? 1 : -1),§8"%§.randomSeed.§,!q§(shardPowerMin,shardPowerMax),40 + _loc6_ * 6,bounceCoeff);
               _loc6_++;
            }
            var _loc7_:§+%]§ = param1.other is §+%]§ ? param1.other as §+%]§ : null;
            var _loc8_:Object = (Boolean(_loc7_)) && !owner.§+&,§(_loc7_) ? _customSource : null;
            self.inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,true,_loc8_);
            §1"-§.explode(§;n§.§8!-§,self.x,self.y,paramSet.damageRadius.value,§`!v§.§4"t§);
            §'!j§.go(paramSet.damage.value);
            self.disposed = true;
         });
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,10,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function reduceRandom() : void
      {
         this.deviationAngle = Math.PI / 8;
         this.shardPowerMin = 7;
         this.shardPowerMax = 13;
         this.bounceCoeff = 0.35;
      }
   }
}

