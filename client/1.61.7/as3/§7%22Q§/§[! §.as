package §7"Q§
{
   import §2"L§.§^$y§;
   import §6",§.§[%w§;
   import §[%§.Cat;
   import §^4§.§]"8§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[! § extends §0-§
   {
      
      public function §[! §(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override protected function §3$R§(param1:§0$L§) : void
      {
         super.§3$R§(param1);
         param1.addEventListener(§[%w§.MENU_ITEM_CLICK,this.§2$D§);
      }
      
      protected function §2$D§(param1:Event) : void
      {
         var _loc2_:§0$L§ = §0$L§(param1.target);
         if(_loc2_.getItem())
         {
            this.§;$P§(_loc2_.getItem());
         }
      }
      
      override internal function §<";§(param1:§0$L§, param2:Boolean = true) : void
      {
         super.§<";§(param1,param2);
         if(param2 && Boolean(param1.getItem()))
         {
            this.§;$P§(param1.getItem());
         }
      }
      
      protected function §;$P§(param1:Object) : void
      {
      }
   }
}

