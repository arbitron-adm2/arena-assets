package §7"Q§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §0%[§.§1%"§;
   import §?$L§.§ "N§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   
   public class §%!o§ extends §`&-§
   {
      
      private var panel:DisplayObject;
      
      private var items:Array = [];
      
      public function §%!o§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.panel = getChildByName("panel");
      }
      
      public function §="n§(param1:String, param2:String, param3:Function) : §?%>§
      {
         var _loc4_:§?%>§ = §!&5§.§7#[§(getChildByName(param1));
         if(param2)
         {
            _loc4_.setText(param2);
         }
         _loc4_.§[!u§(§1%"§.§]$<§(param3,this,[]));
         this.items.push(_loc4_);
         return _loc4_;
      }
      
      public function §<$8§(param1:int, param2:int) : void
      {
         if(param1 + container.width >= § "N§.stageWidth)
         {
            container.x = § "N§.stageWidth - container.width - 5;
         }
         else
         {
            container.x = param1 - 5;
         }
         if(param2 + container.height >= § "N§.stageHeight)
         {
            container.y = § "N§.stageHeight - container.height - 5;
         }
         else
         {
            container.y = param2 - 5;
         }
         § "N§.scene.addChild(container);
         §0A§(MouseEvent.ROLL_OUT,this.§0"<§);
      }
      
      public function hide() : void
      {
         §!%P§(MouseEvent.ROLL_OUT,this.§0"<§);
         § "N§.scene.removeChild(container);
      }
      
      private function §0"<§(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      override public function destroy() : void
      {
         var _loc1_:§;"L§ = null;
         for each(_loc1_ in this.items)
         {
            _loc1_.destroy();
         }
         super.destroy();
      }
   }
}

