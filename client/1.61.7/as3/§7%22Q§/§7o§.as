package §7"Q§
{
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §7$t§.§9#x§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§,%§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7o§ extends §`&-§
   {
      
      protected var childs:Array = [];
      
      protected var groupName:String;
      
      protected var page:uint;
      
      public function §7o§(param1:DisplayObject)
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:§8"@§ = null;
         super(param1 as DisplayObjectContainer);
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         this.groupName = "pagePanel_" + id;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc4_ = _loc3_ + 1;
            _loc5_ = §!&5§.§;#z§(_loc2_.getChildAt(_loc3_),this.groupName);
            _loc5_.setText(_loc4_.toString());
            _loc5_.§[!u§(this.§'$9§);
            _loc5_.id = this.groupName + "_" + _loc4_;
            this.childs.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §'$9§(param1:Event) : void
      {
         this.page = param1.target.id.split("_")[2];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      override public function destroy() : void
      {
         §'$h§.§,!-§(this.groupName);
         this.childs = null;
         super.destroy();
      }
      
      public function §%$S§(param1:uint) : void
      {
         this.page = param1;
         §8"@§(this.childs[param1 - 1]).setPressed(true);
      }
      
      public function §^$§(param1:uint) : void
      {
         var _loc2_:uint = 0;
         while(_loc2_ < this.childs.length)
         {
            §8"@§(this.childs[_loc2_]).setVisible(_loc2_ < param1);
            _loc2_++;
         }
      }
      
      public function §1"J§() : uint
      {
         return this.page;
      }
   }
}

