package §#!5§
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §2!-§.§'5§;
   import §2"L§.§^$y§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9&+§.§6&=§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §^#[§.§&$2§;
   import com.inreflected.ui.touchScroll.TouchScrollModel;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import org.gestouch.core.GestureState;
   import org.gestouch.events.GestureEvent;
   import org.gestouch.gestures.PanGesture;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>S§ extends §`&-§
   {
      
      private var §=!h§:§]#w§;
      
      private var content:DisplayObject;
      
      private var §[!<§:DisplayObject;
      
      private var §%$§:Rectangle;
      
      private var §1&I§:int;
      
      private var §`%Z§:TouchScrollModel = null;
      
      private var §?$_§:PanGesture = null;
      
      public function §>S§(param1:DisplayObjectContainer, param2:DisplayObjectContainer = null)
      {
         super(param1);
         this.content = getChildByName("content");
         this.§1&I§ = this.content.y;
         this.§[!<§ = getChildByName("content_mask");
         this.content.mask = this.§[!<§;
         this.§%$§ = this.§[!<§.getRect(this.content);
         var _loc3_:DisplayObjectContainer = param2 || getChildByName("scrollbar") as DisplayObjectContainer;
         this.§=!h§ = new §]#w§(_loc3_,true);
         this.§=!h§.addEventListener(Event.CHANGE,this.§#"$§);
         this.§`%Z§ = this.§7%n§();
         this.§?$_§ = new PanGesture();
         this.§?$_§.target = this.content as InteractiveObject;
         this.§?$_§.slop = 1;
         this.§["P§ = true;
         this.update();
         param1.addEventListener(MouseEvent.MOUSE_WHEEL,this.§["v§);
      }
      
      private function §@%p§(param1:GestureEvent) : void
      {
         if(param1.newState == GestureState.BEGAN)
         {
            (this.content as DisplayObjectContainer).mouseChildren = false;
            this.§3#%§.onInteractionBegin(this.§%$§.x,this.§%$§.y);
            if(param1.target)
            {
               this.§3#%§.onDragBegin(param1.target.offsetX,param1.target.offsetY);
            }
         }
         else if(param1.newState == GestureState.CHANGED)
         {
            if(param1.target)
            {
               this.§3#%§.onDragUpdate(param1.target.offsetX,param1.target.offsetY);
            }
         }
         else if(param1.newState == GestureState.ENDED)
         {
            this.§3#%§.onInteractionEnd();
            (this.content as DisplayObjectContainer).mouseChildren = true;
         }
         if(this.§?$_§.enabled)
         {
            dispatchEvent(param1);
         }
      }
      
      public function §7%n§() : TouchScrollModel
      {
         var _loc1_:TouchScrollModel = new TouchScrollModel();
         _loc1_.allwaysBounceVertical = true;
         _loc1_.allwaysBounceHorizontal = false;
         _loc1_.maxPull = 0.33;
         _loc1_.positionUpdateCallback = this.§1<§;
         _loc1_.bounceEnabled = true;
         return _loc1_;
      }
      
      public function update() : void
      {
         var _loc1_:Number = this.content.height - this.§[!<§.height;
         this.§=!h§.§]"M§(_loc1_);
         this.§`%Z§.scrollBounds = new Rectangle(0,0,0,Math.max(_loc1_,1));
         this.§`%Z§.setViewportSize(0,this.§%$§.height);
         this.§`%Z§.setPosition(0,this.§`%Z§.scrollBounds.height);
         this.§=!h§.setVisible(_loc1_ > 0);
      }
      
      private function §1<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.content.height - this.§[!<§.height;
         if(_loc3_ > 0)
         {
            this.§=!h§.setValue(param2,false);
            this.§4$Z§(param2);
         }
      }
      
      private function §4$Z§(param1:Number) : void
      {
         this.§%$§.y = param1;
         if(this.content.mask)
         {
            this.content.y = this.§1&I§ - this.§%$§.y;
         }
         else
         {
            this.content.scrollRect = this.§%$§;
         }
      }
      
      protected function §#"$§(param1:Event) : void
      {
         this.§`%Z§.setPosition(0,this.§3#%§.scrollBounds.height - this.§=!h§.getValue());
         this.§4$Z§(this.§=!h§.getValue());
         dispatchEvent(param1 ? param1 : new Event(Event.CHANGE));
      }
      
      private function §>"i§(param1:Event) : void
      {
         this.content.y = this.§1&I§ - this.§=!h§.getValue();
      }
      
      private function §["v§(param1:MouseEvent) : void
      {
         if(this.content.height <= this.§[!<§.height)
         {
            return;
         }
         this.§`%Z§.stop();
         var _loc2_:int = this.§=!h§.getValue() - this.§=!h§.§>!y§() * 0.1 * param1.delta;
         this.§=!h§.setValue(_loc2_,false);
         this.§#"$§(null);
      }
      
      override public function destroy() : void
      {
         this.§?$_§.removeEventListener(GestureEvent.GESTURE_STATE_CHANGE,this.§@%p§);
         container.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§["v§);
         this.§=!h§.removeEventListener(Event.CHANGE,this.§#"$§);
         this.§@%i§();
         if(this.§=!h§)
         {
            this.§=!h§.destroy();
         }
         this.§=!h§ = null;
         this.content = null;
         if(this.§?$_§)
         {
            this.§?$_§.dispose();
         }
         this.§?$_§ = null;
         super.destroy();
      }
      
      public function get §3#%§() : TouchScrollModel
      {
         return this.§`%Z§;
      }
      
      public function get scrollV() : int
      {
         return this.§=!h§.getValue();
      }
      
      public function set scrollV(param1:int) : void
      {
         this.§=!h§.setValue(param1);
      }
      
      public function get maxScrollV() : int
      {
         return this.§=!h§.§"D§();
      }
      
      public function §^s§(param1:Number) : void
      {
         this.§=!h§.§&X§(param1);
      }
      
      public function §>!y§() : int
      {
         return this.§=!h§.§>!y§();
      }
      
      public function §]%E§() : void
      {
         §6"E§.capture();
      }
      
      public function §@%i§() : void
      {
         §6"E§.release();
      }
      
      public function get §!$§() : §]#w§
      {
         return this.§=!h§;
      }
      
      public function get §8!x§() : PanGesture
      {
         return this.§?$_§;
      }
      
      public function get §["P§() : Boolean
      {
         return this.§?$_§.enabled;
      }
      
      public function set §["P§(param1:Boolean) : void
      {
         if(this.§?$_§.enabled == param1)
         {
            return;
         }
         this.§?$_§.enabled = param1;
         if(param1)
         {
            this.§?$_§.addEventListener(GestureEvent.GESTURE_STATE_CHANGE,this.§@%p§);
         }
         else
         {
            this.§?$_§.removeEventListener(GestureEvent.GESTURE_STATE_CHANGE,this.§@%p§);
         }
      }
   }
}

