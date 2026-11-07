package §!K§
{
   import §0%[§.§1%"§;
   import §1&-§.§'%3§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §?$L§.§ "N§;
   import §@!N§.*;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   
   public class §!!n§ extends Event
   {
      
      public static const NAME:String = "BAG_CLOSED_EVENT";
      
      public function §!!n§(param1:String = "BAG_CLOSED_EVENT", param2:Boolean = false, param3:Boolean = true)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §!!n§(type,bubbles,cancelable);
      }
   }
}

