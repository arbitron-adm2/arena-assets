package §@$§
{
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §&&H§ extends §`&-§
   {
      
      private var button:§?%>§;
      
      private var iconsContainer:DisplayObjectContainer;
      
      private var §,#-§:Function;
      
      private var separator:DisplayObject;
      
      private var §>#3§:Number;
      
      private var §%#f§:Number;
      
      private var §%#2§:Boolean;
      
      public function §&&H§(param1:Function, param2:String, param3:String, param4:Boolean)
      {
         var _loc6_:DisplayObject = null;
         super(§6#A§.§!&6§(§+"'§.§]%e§));
         this.iconsContainer = getChildByName("iconsContainer") as DisplayObjectContainer;
         this.separator = getChildByName("separator");
         this.§>#3§ = this.separator.height;
         this.§%#f§ = this.separator.y;
         this.button = §!&5§.§7#[§(getChildByName("btn"));
         this.button.setText(param3);
         this.button.§[!u§(param1);
         this.§,#-§ = param1;
         this.§%#2§ = param4;
         var _loc5_:* = int(this.iconsContainer.numChildren - 1);
         while(_loc5_ > -1)
         {
            _loc6_ = this.iconsContainer.getChildAt(_loc5_);
            if(_loc6_.name != param2)
            {
               this.iconsContainer.removeChild(_loc6_);
            }
            _loc5_--;
         }
      }
      
      override public function destroy() : void
      {
         this.button.removeHandler(this.§,#-§);
         this.button.destroy();
         this.button = null;
         this.§,#-§ = null;
         this.iconsContainer = null;
         super.destroy();
      }
      
      public function § %b§(param1:Boolean = true) : void
      {
         var _loc2_:MovieClip = this.iconsContainer.getChildByName(§`&C§.§ $3§) as MovieClip;
         if(_loc2_)
         {
            _loc2_.getChildByName("plus").visible = param1;
            _loc2_.getChildByName("minus").visible = !param1;
         }
      }
      
      public function §&$%§(param1:Boolean, param2:String) : void
      {
         var _loc3_:MovieClip = this.iconsContainer.getChildByName(param2) as MovieClip;
         if(_loc3_)
         {
            _loc3_.getChildByName("enable").visible = param1;
            _loc3_.getChildByName("disable").visible = !param1;
         }
      }
      
      public function §+"$§(param1:Boolean = true) : void
      {
         this.separator.visible = param1;
      }
      
      public function §9%x§(param1:Boolean) : void
      {
         this.separator.height = !param1 ? this.§>#3§ : 3;
         this.separator.y = !param1 ? this.§%#f§ : this.§%#f§ + 3;
      }
      
      public function get §#!g§() : Boolean
      {
         return this.§%#2§;
      }
   }
}

