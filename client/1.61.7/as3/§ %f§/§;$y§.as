package § %f§
{
   import § !8§.§`!d§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§?3§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §3#T§.§+&F§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?o§.§!%I§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;$y§ extends §!%I§
   {
      
      private static const FIRE_POWER:int = 8;
      
      private static const FIRE_DURATION:int = 120;
      
      private var fireCount:§&$2§;
      
      public function §;$y§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:§&$2§)
      {
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var angle:Number = param3;
         var power:uint = param4;
         var fireCount:§&$2§ = param5;
         §=#Y§ = false;
         super(owner,paramSet,300,angle,power,0,"");
         _damageType = §&!E§.FIRE;
         this.fireCount = fireCount;
         §,%S§ = true;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            explode();
         });
         counter.§?!K§();
         §^"S§();
      }
      
      override public function explode() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(!disposed)
         {
            _loc1_ = Math.min(3,0.2 * Math.abs(this.speedX)) * §^$y§.sign(speedX);
            disposed = true;
            inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            §1"-§.explode(§;n§.MEDIUM,x,y,paramSet.damageRadius.value,§`!v§.§]!?§);
            _loc2_ = 2 * Math.PI / this.fireCount.value;
            _loc3_ = 0;
            while(_loc3_ < this.fireCount.value)
            {
               new §+&F§(owner,_loc3_ * _loc2_,FIRE_POWER,x,y,FIRE_DURATION).§5!?§(_loc1_,-2);
               _loc3_++;
            }
         }
      }
      
      override protected function §"#<§() : void
      {
      }
   }
}

