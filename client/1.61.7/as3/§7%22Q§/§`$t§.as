package §7"Q§
{
   import §6",§.§[%w§;
   import §^!]§.MineSetUpEvent;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`$t§ extends §1#g§
   {
      
      protected static const §!&?§:String = "cells";
      
      protected var §?I§:§0$L§;
      
      protected var cells:Array;
      
      protected var §4#B§:DisplayObjectContainer;
      
      protected var §7%c§:Boolean;
      
      public function §`$t§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§<#X§();
      }
      
      private function §<#X§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:§0$L§ = null;
         this.§4#B§ = this.§&%p§();
         this.cells = [];
         var _loc1_:int = this.§4#B§.numChildren;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.§4#B§.getChildAt(_loc2_);
            this.§3$R§(_loc3_);
            _loc4_ = this.§0W§(_loc3_);
            this.cells.push(_loc4_);
            _loc4_.addEventListener(§[%w§.MENU_ITEM_SELECT,this.§,B§);
            _loc2_++;
         }
      }
      
      protected function §&%p§() : DisplayObjectContainer
      {
         return DisplayObjectContainer(getChildByName(§!&?§));
      }
      
      private function §3$R§(param1:DisplayObject) : void
      {
         if(this.§7%c§)
         {
            if(param1 is DisplayObjectContainer)
            {
               DisplayObjectContainer(param1).mouseChildren = false;
            }
            if(param1 is InteractiveObject)
            {
               InteractiveObject(param1).doubleClickEnabled = true;
            }
            param1.addEventListener(MouseEvent.DOUBLE_CLICK,onOkClick,false);
         }
      }
      
      protected function §0W§(param1:DisplayObject) : §0$L§
      {
         throw new IllegalOperationError("try to call abstract method");
      }
      
      override protected function okAction() : void
      {
         dispatchEvent(new Event(§[%w§.MENU_ITEM_SELECT));
         super.okAction();
      }
      
      public function getSelected() : Object
      {
         if(this.§?I§)
         {
            return this.§?I§.getItem();
         }
         return null;
      }
      
      private function §,B§(param1:Event) : void
      {
         var _loc2_:§0$L§ = §0$L§(param1.target);
         this.§<";§(_loc2_);
      }
      
      protected function §9#e§() : void
      {
         if(this.§?I§)
         {
            this.§?I§.setSelected(false);
         }
         this.§?I§ = null;
      }
      
      protected function §<";§(param1:§0$L§) : void
      {
         if(param1 != this.§?I§)
         {
            if(this.§?I§)
            {
               this.§?I§.setSelected(false);
            }
            this.§?I§ = param1;
         }
         if(!param1.§`%D§())
         {
            param1.setSelected(true);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:§0$L§ = null;
         this.§?I§ = null;
         this.§4#B§ = null;
         for each(_loc1_ in this.cells)
         {
            _loc1_.removeEventListener(§[%w§.MENU_ITEM_SELECT,this.§,B§);
            _loc1_.destroy();
         }
         super.destroy();
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         this.§4#B§.visible = !param1;
      }
   }
}

