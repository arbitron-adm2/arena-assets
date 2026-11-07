package §;$%§
{
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §1&-§.§-#B§;
   import §3#T§.§+&F§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4!!§.§!%n§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §@!i§.§!m§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.weapons.boss.§+"Y§;
   
   public class §'%W§ extends §8"w§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const FIRE_DURATION:int = 170;
      
      public function §'%W§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         §1"-§.§;%k§(this,§;n§.§6#B§,8,1);
      }
      
      override protected function explode(param1:§&"T§) : void
      {
         super.explode(param1);
         §1"-§.explode(§;n§.§7q§,x,y,paramSet.explosionRadius.value,§`!v§.§>l§);
         var _loc2_:int = -4;
         while(_loc2_ <= 4)
         {
            new §+&F§(owner,-PI_HALF,3,x + 6 * _loc2_,y + §8"%§.randomSeed.§,!q§(-5,5),FIRE_DURATION);
            _loc2_++;
         }
      }
   }
}

