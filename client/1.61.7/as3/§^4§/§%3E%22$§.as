package §^4§
{
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §3#T§.§+&F§;
   import §4!!§.§'$V§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §9%W§.§!7§;
   import §<"?§.§3>§;
   import §="z§.§7%[§;
   import §=1§.*;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import com.greensock.motionPaths.PathFollower;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>"$§ extends §6#I§
   {
      
      private static const PI_QUARTER:Number = Math.PI / 4;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      public function §>"$§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint)
      {
         var self:§6#I§ = null;
         var owner:§+%]§ = param1;
         var initPoint:Point = param2;
         var paramSet:§5$n§ = param3;
         var angle:Number = param4;
         var power:uint = param5;
         if(§>#9§.point(initPoint.x,initPoint.y) || §>#9§.point((owner.x + initPoint.x) / 2,(owner.y + initPoint.y) / 2))
         {
            initPoint.x = owner.x;
            initPoint.y = owner.y;
         }
         super(owner,initPoint.x,initPoint.y,false,§&i§,§&!E§.FIRE);
         §7%[§(physicModel).checkEnemiesOnStart();
         §7%[§(physicModel).addToIgnored(owner);
         §-"e§ = false;
         initialize(initPoint,paramSet.ammoClassName);
         clip.rotation = angle * 180 / Math.PI;
         §^"F§(angle,power);
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            var _loc3_:Number = NaN;
            self.disposed = true;
            self.inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            var _loc2_:int = 0;
            while(_loc2_ <= 3)
            {
               _loc3_ = -PI_HALF + §8"%§.randomSeed.§]#W§(-PI_QUARTER,PI_QUARTER);
               new §+&F§(owner,_loc3_,4,self.x,self.y);
               _loc2_++;
            }
         });
         clip.rotation = angle * 180 / Math.PI;
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
         physParams.addForce(§]%G§.§-4§);
         §1"-§.attachTrail(this,7,10,13934615,13934615,0.995);
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§3&I§ = true;
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§7q§,this.x,this.y - Math.floor(Math.random() * 10),10);
         disposed = true;
      }
   }
}

