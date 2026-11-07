package ru.pragmatix.wormix.weapons
{
   import §"#x§.§'"$§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §4%_§.ZombieGrave;
   import §<!G§.§&!;§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ZombieMarch extends §&!;§
   {
      
      private static const §1t§:int = 150;
      
      private static const §?'§:int = 40;
      
      public function ZombieMarch()
      {
         super();
      }
      
      override protected function §^M§(param1:int, param2:int, param3:int) : Number
      {
         return param2;
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         var _loc9_:int = 0;
         var _loc8_:int = -1;
         while(_loc8_ <= 1)
         {
            _loc9_ = §8"%§.randomSeed.§,!q§(-§?'§,§?'§);
            this.§"%f§(param3 + (§1t§ + _loc9_) * _loc8_,param4);
            _loc8_++;
         }
         super.§2",§(param1,param2,param3,param4,param5,param6);
      }
      
      private function §"%f§(param1:int, param2:int) : void
      {
         var level:int = 0;
         var grave:ZombieGrave = null;
         var x:int = param1;
         var y:int = param2;
         var name:String = §0$N§.§%! §("RACE_ZOMBIE_NAME");
         var skin:int = owner.record.getRace().equals(Race.§"$H§.§]!D§()) ? owner.record.§5"L§().§7"=§() : 0;
         level = owner.record.getLevel();
         grave = new ZombieGrave(Race.§"$H§.§]!D§().graveType,x,y,owner,name,level,owner.squad,null,ZombieGrave.§=!-§.value - 0.5,skin,level,level,true);
         §8$a§.§&!#§(grave,§0%v§.§+&=§,function(param1:Event):void
         {
            §'"$§.§]#I§(grave.getOwner(),grave.x,grave.y,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,§&!E§.AIR);
            §1"-§.explode(§;n§.MEDIUM,grave.x,grave.y,paramSet.explosionRadius.value,§`!v§.§["s§);
            grave.setSpeedXY(0,-4);
         });
      }
   }
}

