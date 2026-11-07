package §]$v§
{
   import §&"c§.§5$n§;
   import §2"L§.§,!t§;
   import §2o§.§]#@§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §3z§ extends §1>§
   {
      
      private static const SPEED:int = 15;
      
      private var §`$b§:int;
      
      public function §3z§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Point)
      {
         var angleToTarget:Number;
         var owner:§+%]§ = param1;
         var spawn:Point = param2;
         var paramSet:§5$n§ = param3;
         var angle:Number = param4;
         var power:uint = param5;
         var target:Point = param6;
         super(owner,paramSet,angle,power,0,spawn);
         §,%S§ = false;
         §6""§ = false;
         §@H§ = false;
         this.§`$b§ = angle;
         §`4§ = §]$S§;
         physParams.§"%<§(§]%G§.§="u§);
         physParams.§"%<§(§]%G§.§0#m§);
         angleToTarget = Math.atan2(target.y - y,target.x - x);
         §^"F§(angleToTarget,SPEED);
         if(target.x < x)
         {
            §,!t§.§4"e§(§!%8§);
         }
         §8$a§.§%!E§(30,function():void
         {
            if(!disposed)
            {
               physParams.addForce(§]%G§.§5$r§);
            }
         });
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed)
         {
            §[$W§();
         }
      }
   }
}

