package §7"Q§
{
   import §"$+§.*;
   import §'"N§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §<%c§.*;
   import §?$L§.§ "N§;
   import §@!i§.§"-§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §"&=§ extends §`&-§ implements §0$L§
   {
      
      protected var item:Object = null;
      
      private var selected:Boolean;
      
      private var §;!e§:DisplayObject;
      
      private var §]$A§:DisplayObject;
      
      private var selectable:Boolean = true;
      
      private var §"%E§:Boolean = false;
      
      protected var §8!z§:uint;
      
      protected var §0%B§:uint;
      
      public function §"&=§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         var _loc2_:DisplayObjectContainer = §#!`§();
         this.§]$A§ = _loc2_.getChildByName("selected");
         this.§;!e§ = _loc2_.getChildByName("selection");
         this.setSelected(false);
         if(!this.§;!e§)
         {
            this.selectable = false;
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §@$j§ = § "N§.§&$q§;
         §-%m§ = § "N§.§["K§;
      }
      
      public function setItem(param1:Object) : void
      {
         this.item = param1;
      }
      
      override protected function §^^§() : void
      {
         §0A§(MouseEvent.ROLL_OVER,this.§!R§);
         §0A§(MouseEvent.ROLL_OUT,this.§0"<§);
         §0A§(MouseEvent.CLICK,this.§#%S§);
         §0A§(MouseEvent.DOUBLE_CLICK,this.§9"!§);
         if(this.selectable)
         {
            this.setSelected(this.selected);
         }
      }
      
      public function getItem() : Object
      {
         return this.item;
      }
      
      protected function §!R§(param1:MouseEvent) : void
      {
         if(!disabled && this.selectable)
         {
            this.§7%u§(true);
         }
      }
      
      override protected function §6$X§(param1:MouseEvent) : void
      {
         if(!disabled && this.selectable)
         {
            super.§6$X§(param1);
         }
      }
      
      protected function §0"<§(param1:MouseEvent) : void
      {
         if(!this.selected)
         {
            this.§7%u§(false);
         }
      }
      
      protected function §#%S§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(§[%w§.MENU_ITEM_CLICK));
         if(!disabled && this.selectable)
         {
            if(!this.selected)
            {
               this.§&!"§(true);
            }
            else if(this.§"%E§ && this.selected)
            {
               this.§&!"§(false);
            }
         }
      }
      
      private function §&!"§(param1:Boolean) : void
      {
         if(param1)
         {
            this.dispatchEvent(new Event(§[%w§.MENU_ITEM_SELECT));
         }
         else
         {
            this.dispatchEvent(new Event(§[%w§.MENU_ITEM_UNSELECT));
         }
         this.setSelected(param1);
      }
      
      private function §9"!§(param1:MouseEvent) : void
      {
         if(!disabled && this.selectable)
         {
            this.dispatchEvent(new Event(§[%w§.MENU_ITEM_DBL_CLICK));
         }
      }
      
      private function §7%u§(param1:Boolean) : void
      {
         if(this.§;!e§)
         {
            this.§;!e§.visible = param1;
         }
      }
      
      public function setSelected(param1:Boolean) : void
      {
         this.selected = param1;
         if(this.§]$A§)
         {
            this.§]$A§.visible = param1;
         }
         this.§7%u§(param1);
      }
      
      public function §`%D§() : Boolean
      {
         return this.selected;
      }
      
      public function §;b§(param1:Boolean) : void
      {
         this.selectable = param1;
      }
      
      public function §>!V§(param1:Boolean) : void
      {
         this.§"%E§ = param1;
      }
      
      public function §,$K§() : Boolean
      {
         return this.selectable;
      }
      
      public function §#&-§() : Boolean
      {
         return this.§"%E§;
      }
      
      public function §?#y§(param1:uint) : void
      {
         this.§8!z§ = param1;
      }
      
      public function getCellIndex() : uint
      {
         return this.§8!z§;
      }
      
      override public function destroy() : void
      {
         this.item = null;
         super.destroy();
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         super.setDisabled(param1);
         this.§&!"§(false);
      }
      
      public function §^3§(param1:uint) : void
      {
         this.§0%B§ = param1;
      }
      
      public function §^"r§() : uint
      {
         return this.§0%B§;
      }
   }
}

