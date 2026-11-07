package §3#T§
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderStatus;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §,?§ extends §6#I§
   {
      
      private static const §]"O§:Number = 5;
      
      private static const §-#b§:Number = 23;
      
      private static const MAX_SPEED_DAMAGE:Number = 60;
      
      private static const §>%i§:uint = 400;
      
      private static const SPEED_THRESHOLD:uint = 20;
      
      private var paramSet:§5$n§;
      
      private var jump:Boolean;
      
      public function §,?§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Boolean)
      {
         super(param1,param3,param4,false,§&i§,§&!E§.§=$-§);
         this.x = param3;
         this.y = param4;
         this.paramSet = param2;
         this.jump = param5;
      }
      
      public function §^!@§(param1:§;#_§) : void
      {
         _customSource = param1;
         this.apply();
      }
      
      public function apply() : void
      {
         var dy2:Number;
         var powers:Array = null;
         var units:Vector.<§+%]§> = null;
         var jumpTargets:Array = null;
         var enemies:Vector.<§+%]§> = null;
         var unit:§+%]§ = null;
         var newJumpTarget:§+%]§ = null;
         var sign:int = 0;
         var power:Number = NaN;
         var dy:Number = NaN;
         powers = [];
         var bonusSpeed:Number = §="j§(owner);
         units = §<H§.§5"]§(x,y,this.paramSet.damageRadius.value);
         if(units.length > 0 && this.jump)
         {
            jumpTargets = [];
            enemies = §8"%§.§?!W§.§4"m§.§6"M§();
            for each(unit in enemies)
            {
               if(units.indexOf(unit) == -1)
               {
                  jumpTargets.push(unit);
               }
            }
            newJumpTarget = §<H§.§=$F§(x,y,jumpTargets,§>%i§) as §+%]§;
            if(newJumpTarget)
            {
               §1"-§.§2$O§(units[0],newJumpTarget,15,5,13948116,6);
               units.push(newJumpTarget);
            }
         }
         dy2 = (§-#b§ + bonusSpeed) * -1;
         for each(unit in units)
         {
            if(unit != owner)
            {
               inflictDamage(unit,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,false,true);
               sign = §^$y§.sign(unit.x - owner.x);
               power = sign * Math.max(§]"O§,Math.abs(unit.speedX));
               dy = power + (power > 0 ? bonusSpeed : -bonusSpeed);
               powers.push(dy);
               if(!unit.buffs.hasBuff(§=z§.NAME))
               {
                  §'"$§.§<#j§(unit,0,dy2,false);
               }
               inflictDamage(unit,0,0,0,false,false,true,_customSource);
               unit.rotateUntilStable();
               unit.graphics.§0t§();
               unit.addEventListener(§0%v§.§+&=§,function(param1:CollisionEvent):void
               {
                  var _loc3_:§+%]§ = null;
                  var _loc4_:Number = NaN;
                  if(param1.other == null)
                  {
                     _loc3_ = §+%]§(param1.currentTarget);
                     _loc3_.graphics.§]!"§();
                     if(_loc3_.speed > SPEED_THRESHOLD)
                     {
                        _loc4_ = Math.min(_loc3_.speed,MAX_SPEED_DAMAGE);
                        §'"$§.§]#I§(owner,_loc3_.x,_loc3_.y,_loc3_,_loc4_,0,0,true);
                     }
                     _loc3_.removeEventListener(§0%v§.§+&=§,arguments.callee,false);
                  }
               },false,5);
            }
         }
         §8$a§.§%!E§(2,function onWaitAndDoStaticChargePushObjects():void
         {
            var _loc1_:§+%]§ = null;
            for each(_loc1_ in units)
            {
               if(_loc1_ != owner && !_loc1_.disposed && !_loc1_.stable && !_loc1_.buffs.hasBuff(§=z§.NAME))
               {
                  §'"$§.§<#j§(_loc1_,powers.shift(),0,true);
               }
            }
         });
      }
   }
}

