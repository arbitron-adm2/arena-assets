package §7"Q§
{
   import § "d§.§,!c§;
   import §"$+§.*;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §-%B§.*;
   import §0%[§.§6!?§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §3#T§.§5!M§;
   import §3#a§.§-!`§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9"-§.§?!s§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import §`%&§.§8U§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §0&'§ extends §@& §
   {
      
      protected static const §!&?§:String = "cells";
      
      protected var store:§<#D§;
      
      public var §,!n§:Boolean = true;
      
      public var §]!I§:Boolean = false;
      
      private var §4"l§:Array = [];
      
      private var §=#j§:Array = [];
      
      protected var cells:Array;
      
      protected var §4#B§:DisplayObjectContainer;
      
      protected var §7%c§:Boolean;
      
      public var §[%T§:Boolean = false;
      
      public function §0&'§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.store = new §<#D§([],1,0);
         this.§<#X§();
      }
      
      protected function §<#X§() : void
      {
         var _loc3_:DisplayObject = null;
         if(!this.§4#B§)
         {
            this.§4#B§ = this.§&%p§();
         }
         this.cells = [];
         var _loc1_:int = this.§4#B§.numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.§4#B§.getChildAt(_loc2_);
            this.§"%F§(_loc3_,_loc2_);
            _loc2_++;
         }
      }
      
      protected function §"%F§(param1:DisplayObject, param2:uint) : §0$L§
      {
         var _loc3_:§0$L§ = this.§0W§(param1);
         this.§3$R§(_loc3_);
         _loc3_.§?#y§(param2);
         this.cells[param2] = _loc3_;
         _loc3_.addEventListener(§[%w§.MENU_ITEM_SELECT,this.§,B§);
         _loc3_.addEventListener(§[%w§.MENU_ITEM_UNSELECT,this.§2%_§);
         if(this.§]!I§)
         {
            _loc3_.§>!V§(true);
         }
         return _loc3_;
      }
      
      public function setData(param1:Array) : void
      {
         this.§=#j§ = [];
         this.store = new §<#D§(param1,this.§4#B§.numChildren);
         this.store.§%$S§(1);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.activate();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.update();
      }
      
      public function update() : void
      {
         this.store.§"%S§(this.§;""§);
      }
      
      protected function §;""§(param1:Array) : void
      {
         var _loc2_:§0$L§ = null;
         var _loc3_:Boolean = false;
         var _loc5_:§0$L§ = null;
         this.§9#e§();
         var _loc4_:int = 0;
         while(_loc4_ < this.cells.length)
         {
            _loc5_ = §0$L§(this.cells[_loc4_]);
            this.§3u§(_loc5_,_loc4_ < param1.length ? param1[_loc4_] : null,this.store.§#<§() + _loc4_);
            if(!_loc2_ && this.§#i§(_loc5_))
            {
               _loc2_ = _loc5_;
            }
            if(§6!?§.contains(this.§=#j§,param1[_loc4_]) && this.§#i§(_loc5_))
            {
               this.§<";§(_loc5_);
               _loc3_ = true;
            }
            _loc4_++;
         }
         if(Boolean(_loc2_) && Boolean(this.§,!n§) && !_loc3_)
         {
            this.§<";§(_loc2_);
         }
      }
      
      protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         param1.§^3§(param3);
         if(this.§[%T§ && !param2)
         {
            param1.setVisible(false);
         }
         else
         {
            param1.setVisible(true);
            param1.setItem(param2);
         }
      }
      
      protected function §&%p§() : DisplayObjectContainer
      {
         return DisplayObjectContainer(getChildByName(§!&?§));
      }
      
      protected function §3$R§(param1:§0$L§) : void
      {
         if(this.§7%c§)
         {
            if(param1.getContainer() is DisplayObjectContainer)
            {
               DisplayObjectContainer(param1.getContainer()).mouseChildren = false;
            }
            if(param1.getContainer() is InteractiveObject)
            {
               InteractiveObject(param1.getContainer()).doubleClickEnabled = true;
            }
            param1.addEventListener(§[%w§.MENU_ITEM_DBL_CLICK,this.§ !'§,false);
         }
      }
      
      private function § !'§(param1:Event) : void
      {
         this.okAction();
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
         if(this.§=#j§.length)
         {
            return this.§=#j§[0];
         }
         return null;
      }
      
      public function §1&5§() : Array
      {
         return this.§=#j§;
      }
      
      protected function §,B§(param1:Event) : void
      {
         var _loc2_:§0$L§ = §0$L§(param1.target);
         this.§<";§(_loc2_,true);
      }
      
      protected function §2%_§(param1:Event) : void
      {
         var _loc2_:§0$L§ = §0$L§(param1.target);
         this.§<";§(_loc2_,false);
      }
      
      protected function §9#e§() : void
      {
         var _loc1_:§0$L§ = null;
         if(this.§4"l§.length)
         {
            for each(_loc1_ in this.§4"l§)
            {
               _loc1_.setSelected(false);
            }
         }
         this.§4"l§ = [];
      }
      
      internal function §<";§(param1:§0$L§, param2:Boolean = true) : void
      {
         if(this.§]!I§)
         {
            if(param2 && !param1.§`%D§())
            {
               if(param1.getItem() == null)
               {
                  throw new IllegalOperationError();
               }
               this.§=#j§.push(param1.getItem());
               this.§4"l§.push(param1);
               param1.setSelected(true);
            }
            else if(!param2 && param1.§#&-§())
            {
               §6!?§.remove(this.§=#j§,param1.getItem());
               §6!?§.remove(this.§4"l§,param1);
               param1.setSelected(false);
            }
         }
         else if(param2)
         {
            if(Boolean(this.§4"l§.length) && param1 != this.§4"l§[0])
            {
               this.§4"l§[0].setSelected(false);
            }
            this.§4"l§ = [param1];
            this.§=#j§ = [param1.getItem()];
            if(!param1.§`%D§())
            {
               param1.setSelected(true);
            }
         }
         else
         {
            this.§=#j§ = [];
            this.§4"l§ = [];
         }
      }
      
      override public function destroy() : void
      {
         this.§4"l§ = null;
         this.§=#j§ = null;
         this.§4#B§ = null;
         this.§2&5§();
         super.destroy();
      }
      
      protected function §2&5§() : void
      {
         var _loc1_:§0$L§ = null;
         for each(_loc1_ in this.cells)
         {
            this.§]$x§(_loc1_);
         }
         this.cells = [];
      }
      
      protected function §]$x§(param1:§0$L§) : void
      {
         param1.removeEventListener(§[%w§.MENU_ITEM_SELECT,this.§,B§);
         param1.removeEventListener(§[%w§.MENU_ITEM_UNSELECT,this.§2%_§);
         if(this.§7%c§)
         {
            param1.removeEventListener(MouseEvent.DOUBLE_CLICK,onOkClick,false);
         }
         param1.destroy();
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         this.§4#B§.visible = !param1;
      }
      
      protected function §#i§(param1:§0$L§) : Boolean
      {
         return !param1.§8,§() && param1.§,$K§() && Boolean(param1.getItem());
      }
      
      protected function §[$h§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§1$'§(_loc2_);
         }
      }
      
      protected function §1$'§(param1:Object) : void
      {
         var _loc2_:§0$L§ = this.§="<§(param1);
         if(_loc2_)
         {
            this.§<";§(_loc2_);
         }
      }
      
      public function §="<§(param1:Object) : §0$L§
      {
         var _loc2_:§0$L§ = null;
         if(param1 == null)
         {
            return null;
         }
         for each(_loc2_ in this.cells)
         {
            if(_loc2_.getItem() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §#%q§() : uint
      {
         var _loc1_:uint = uint(this.§4"l§[0].getCellIndex());
         return (this.store.§1"J§() - 1) * this.store.§4$`§() + _loc1_;
      }
      
      public function §,"l§(param1:int) : void
      {
         if(param1 >= this.store.§>$6§())
         {
            param1 = 0;
         }
         else if(param1 < 0)
         {
            param1 = this.store.§>$6§() - 1;
         }
         this.§<";§(this.cells[param1]);
      }
      
      public function §?%1§(param1:Object) : void
      {
         this.§=#j§ = [param1];
      }
      
      public function §5&E§(param1:DisplayObject, param2:Number) : void
      {
         this.§]$x§(this.cells[param2]);
         var _loc3_:§0$L§ = this.§"%F§(param1,param2);
      }
   }
}

