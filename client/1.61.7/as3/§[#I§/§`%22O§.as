package §[#I§
{
   import §&"c§.§5$n§;
   import §9%W§.§!"G§;
   import §<!^§.§]#u§;
   import §?o§.§!%I§;
   import §@<§.§+%]§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §`"O§ extends §!%I§
   {
      
      protected var §5"@§:§]#u§;
      
      public function §`"O§(param1:§+%]§, param2:§5$n§, param3:§]#u§, param4:uint, param5:Number, param6:uint, param7:Number, param8:String)
      {
         this.§5"@§ = param3;
         super(param1,param2,param4,param5,param6,param7,param8);
      }
      
      override public function explode() : void
      {
         super.explode();
         if(this.§5"@§)
         {
            this.§5"@§.explode(new Point(x,y));
         }
      }
   }
}

