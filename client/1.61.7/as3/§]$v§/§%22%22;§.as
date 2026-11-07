package §]$v§
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"";§ extends §6#I§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §,!`§:Number = -PI_HALF;
      
      private static const §<C§:§&$2§ = new §&$2§(20);
      
      private static const §%"z§:Number = 55;
      
      private static const §59§:§&$2§ = new §&$2§(30);
      
      private static const §]%;§:uint = 65;
      
      private var drillDistance:§&$2§ = new §&$2§(§]%;§);
      
      private var counter:§&$2§ = new §&$2§(0);
      
      private var paramSet:§5$n§;
      
      private var unitsHit:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §4"a§:§]%G§;
      
      public function §"";§(param1:§+%]§, param2:int, param3:int, param4:§5$n§)
      {
         super(param1,param2,param3,true);
         initialize(new Point(param2,param3),param4.ammoClassName);
         this.clip.rotation = §,!`§ * 180 / Math.PI;
         this.paramSet = param4;
         this.§4"a§ = new §]%G§("UP",-PI_HALF,2);
         physParams.addForce(this.§4"a§);
         physParams.§`#&§ = false;
         physParams.ignoresTerrain = true;
         §^"F§(§,!`§,§<C§.value);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var target:§+%]§ = null;
         var targetSpeed:Number = NaN;
         var customSource:Object = null;
         var tmpOwner:§+%]§ = null;
         var collisionHandler:Function = null;
         var e:CollisionEvent = param1;
         var isUnit:Boolean = e.other is §+%]§;
         if(isUnit && e.other.y < y && !§+%]§(e.other).buffs.hasBuff(§=z§.NAME))
         {
            target = §+%]§(e.other);
            targetSpeed = Math.abs(speedY) < §%"z§ ? speedY : §^$y§.sign(speedY) * §%"z§;
            target.setSpeedXY(0,targetSpeed);
            if(this.unitsHit.indexOf(target) == -1)
            {
               target.§0"y§ = false;
               customSource = !owner.§+&,§(target) ? _customSource : null;
               inflictDamage(target,§59§.value,0,0,true,false,true,customSource);
               this.unitsHit.push(target);
               tmpOwner = owner;
               collisionHandler = function(param1:CollisionEvent):void
               {
                  var _loc2_:Number = NaN;
                  if(param1.other == null)
                  {
                     target.§0"y§ = true;
                     if(target.speedY > 30)
                     {
                        _loc2_ = target.speed;
                        §'"$§.§]#I§(tmpOwner,target.x,target.y,target,_loc2_,0,0,true,true,_damageType);
                     }
                     target.removeEventListener(§0%v§.§+&=§,collisionHandler,false);
                  }
               };
               target.addEventListener(§0%v§.§+&=§,collisionHandler,false,5);
            }
         }
         else if(e.other is §&"T§ && !isUnit)
         {
            inflictDamage(e.other,0,0,0);
         }
         if(e.other == null)
         {
            this.counter.value += speedY < 0 ? 1 : 3;
            inflictDamage(null,0,20,6);
            §1"-§.§&!C§(x,y,4);
            if(§>#9§.point(e.point.x,e.point.y,true) || this.counter.value > this.drillDistance.value)
            {
               this.explode();
            }
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Math.abs(speedY) > §%"z§)
         {
            this.§4"a§.ay = -1;
         }
         if(this.y < 150)
         {
            this.explode();
         }
      }
      
      private function explode() : void
      {
         var radius:int = 0;
         if(!disposed)
         {
            inflictDamage(null,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            if(this.drillDistance.value != §]%;§)
            {
               §1"-§.§^!7§(x,y,30,_damageType == §&!E§.§=$-§ ? 10713343 : 16742563,5,12);
               if(§5%g§(§-&§.IGNORE_MAGNET))
               {
                  §8$a§.§%!E§(12,function():void
                  {
                     if(Boolean(Application.scene) && !Application.scene.§@$I§.§=%d§())
                     {
                        §1"-§.§^!7§(x,y,12,_damageType == §&!E§.§=$-§ ? 9474303 : 16748688,12,25);
                     }
                  });
               }
            }
            radius = this.paramSet.explosionRadius.value * 2;
            §1"-§.explode(_damageType == §&!E§.§=$-§ ? §;n§.§1"E§ : §;n§.MEDIUM,x,y,radius);
            §1"-§.explode(§;n§.MEDIUM,x,y,radius);
            §@%;§.play(§`!v§.§>l§);
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.unitsHit.length = 0;
         super.§[$u§(param1);
      }
      
      public function setDrillDistance(param1:int) : void
      {
         this.drillDistance.value = param1;
      }
   }
}

