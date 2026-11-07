package §7$1§
{
   import § %f§.§;$y§;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §<%k§.§`!v§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^4§.§9!K§;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §=!?§ extends §;$n§
   {
      
      private static const ammoParamSet:§5$n§ = §5$n§.§<#=§(null,3,30,15);
      
      private static const §^;§:int = 10;
      
      private static const §5%f§:int = 40;
      
      private static const §^#2§:int = 3;
      
      protected var §%%7§:int;
      
      protected var §!"%§:int;
      
      protected var §9"6§:int;
      
      public function §=!?§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,false);
         §=$`§.value = 100;
         §##9§.value = 60;
         this.§%%7§ = §^;§;
         this.§!"%§ = §5%f§;
         this.§9"6§ = §^#2§;
      }
      
      override protected function §#%h§() : void
      {
         super.§#%h§();
         §5!?§(0,-20);
      }
      
      override protected function §8#U§(param1:§+%]§) : Boolean
      {
         return param1.stable;
      }
      
      override protected function §>$F§(param1:uint) : void
      {
         var _loc2_:§9!K§ = null;
         if(!activator.disposed && param1 > this.§%%7§ && param1 < this.§!"%§ && param1 % this.§9"6§ == 0)
         {
            _loc2_ = new §9!K§(owner,this,ammoParamSet,Math.atan2(activator.y - y,activator.x - x),50,10,4);
            if(!owner || owner.squad.isAi())
            {
               _loc2_.§4M§ = false;
            }
         }
      }
      
      override public function explode() : void
      {
         §1"-§.explode(§;n§.§1"E§,this.x,this.y,paramSet.explosionRadius.value / 2,§`!v§.§2#u§);
         disposed = true;
      }
   }
}

