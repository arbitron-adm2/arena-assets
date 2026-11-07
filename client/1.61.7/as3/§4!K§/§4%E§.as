package §4!K§
{
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §="z§.§9%1§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Matrix;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §4%E§ extends §^%A§
   {
      
      private static const § "h§:String = "PulsingSphereRing";
      
      private var §#$g§:int;
      
      public function §4%E§(param1:int, param2:int, param3:int, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§#$g§ = radius * 0.8;
      }
      
      override protected function §^%,§(param1:int, param2:int, param3:int) : void
      {
         clip = §6#A§.§!&6§(§ "h§);
         clip.width = clip.height = param3 * 2;
      }
      
      override protected function §5"F§(param1:int) : void
      {
         radius = param1;
      }
      
      override protected function §]#<§() : void
      {
         this.§#$g§ = radius * 0.8;
         clip.width = clip.height = radius * 2;
         if(§6!#§ < §;#v§)
         {
            x += §9$V§;
            y += §]5§;
         }
      }
      
      override protected function §]%+§() : void
      {
         §8"%§.§?!W§.§>$y§("turn=" + §8"%§.§?!W§.§4"m§.§,j§() + " radius=" + radius + " reduce=" + §-u§ + " reduce3=" + reduce3Value + " reduce2=" + reduce2Value + " x=" + x + " y=" + y + " shiftX=" + §9$V§ + " shiftY=" + §]5§);
      }
      
      override public function §#%J§(param1:Vector.<§+%]§> = null) : Vector.<§+%]§>
      {
         return §<H§.§5"]§(x,y,this.§#$g§,param1);
      }
   }
}

