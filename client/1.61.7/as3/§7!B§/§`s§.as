package §7!B§
{
   import §0&F§.§`"^§;
   import §1#p§.Team;
   import §=#g§.§!"X§;
   import §@<§.§+%]§;
   import flash.display.Sprite;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §`s§ extends §`"d§
   {
      
      public var §2$x§:§&"T§;
      
      public function §`s§(param1:int, param2:int, param3:uint, param4:§&"T§, param5:Function, param6:Boolean = true)
      {
         super(param1,param2,param3,param6);
         this.§2$x§ = param4;
         this.callback = param5;
      }
      
      override public function onFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(this.§2$x§ != null && callback != null && !this.§2$x§.disposed && !disposed)
         {
            _loc2_ = §<H§.§8!P§(this.§2$x§,x,y,radius,false);
            if(§^&;§ && _loc2_ || !§^&;§ && !_loc2_)
            {
               disposed = true;
               callback();
            }
         }
      }
   }
}

