package §<!^§
{
   import §##y§.CollisionEvent;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class MeteorShard extends §6#I§
   {
      
      private static var ammoClassName:String = "MeteorShard";
      
      private static var DAMAGE:§&$2§ = new §&$2§(35);
      
      private static var §9!"§:§&$2§ = new §&$2§(50);
      
      private static var §<$C§:§&$2§ = new §&$2§(70);
      
      public function MeteorShard(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint)
      {
         var self:§6#I§ = null;
         var owner:§+%]§ = param1;
         var baseX:int = param2;
         var baseY:int = param3;
         var angle:Number = param4;
         var power:uint = param5;
         super(owner,baseX,baseY,true,§6#I§.§&i§,§&!E§.AIR);
         initialize(new Point(baseX,baseY),ammoClassName);
         §^"F§(angle,power);
         physParams.§5N§ = §9%1§.§&!A§;
         §`4§ = §5$=§;
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            self.inflictDamage(param1.other,DAMAGE.value,§<$C§.value,§9!"§.value);
            self.disposed = true;
            §1"-§.§&!C§(x,y,6);
            §1"-§.explode(§;n§.MEDIUM,self.x,self.y,§<$C§.value,§`!v§.§["s§);
         });
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§?"$§(this,§;%S§.§`"Q§);
         }
         Application.scene.§@$I§.§1$+§(this);
      }
   }
}

