package §#!5§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §"!C§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&#h§.§-"F§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §2!-§.HpChangeEvent;
   import §2#8§.§6"a§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§8U§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §8%Z§ extends §`&-§
   {
      
      private var §6!w§:§?%>§;
      
      private var scrollArea:DisplayObject;
      
      private var §0$H§:int = 0;
      
      private var maxValue:int = 100;
      
      private var §##D§:Boolean;
      
      protected var § "z§:int;
      
      protected var §;&#§:int;
      
      private var value:int;
      
      public function §8%Z§(param1:DisplayObjectContainer, param2:Boolean = true)
      {
         super(param1);
         this.§6!w§ = §!&5§.§7#[§(getChildByName("btn"));
         this.scrollArea = getChildByName("scrollArea");
         this.§##D§ = param2;
         if(param2)
         {
            this.§;&#§ = this.scrollArea.y;
            this.§ "z§ = this.scrollArea.height - this.§6!w§.height;
         }
         else
         {
            this.§;&#§ = this.scrollArea.x;
            this.§ "z§ = this.scrollArea.width - this.§6!w§.width;
         }
         this.§6!w§.getContainer().addEventListener(MouseEvent.MOUSE_DOWN,this.§^&=§);
      }
      
      private function §^&=§(param1:MouseEvent) : void
      {
         this.§6!w§.getContainer().removeEventListener(MouseEvent.MOUSE_DOWN,this.§^&=§);
         § "N§.scene.addEventListener(MouseEvent.MOUSE_UP,this.§ !;§);
         § "N§.scene.addEventListener(MouseEvent.MOUSE_MOVE,this.§4%i§);
         § "N§.scene.addEventListener(MouseEvent.ROLL_OUT,this.§ !;§);
      }
      
      private function § !;§(param1:MouseEvent) : void
      {
         § "N§.scene.removeEventListener(MouseEvent.MOUSE_MOVE,this.§4%i§);
         § "N§.scene.removeEventListener(MouseEvent.MOUSE_UP,this.§ !;§);
         § "N§.scene.removeEventListener(MouseEvent.ROLL_OUT,this.§ !;§);
         this.§6!w§.getContainer().addEventListener(MouseEvent.MOUSE_DOWN,this.§^&=§);
      }
      
      public function §2&3§(param1:int) : void
      {
         this.§0$H§ = param1;
      }
      
      public function §]"M§(param1:int) : void
      {
         this.maxValue = param1;
         this.setDisabled(this.maxValue == 0);
      }
      
      public function §"D§() : int
      {
         return this.maxValue;
      }
      
      public function §<!@§() : int
      {
         return this.§0$H§;
      }
      
      public function getValue() : int
      {
         return this.value;
      }
      
      public function setValue(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 > this.maxValue)
         {
            param1 = this.maxValue;
         }
         else if(param1 < this.§0$H§)
         {
            param1 = this.§0$H§;
         }
         if(param1 != this.value)
         {
            this.value = param1;
            _loc3_ = this.§;&#§ + (param1 - this.§0$H§) * this.§ "z§ / (this.maxValue - this.§0$H§);
            this.§-%i§(_loc3_);
            if(param2)
            {
               this.dispatchEvent(new Event(Event.CHANGE));
            }
         }
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         this.§6!w§.setVisible(!param1);
         super.setDisabled(param1);
      }
      
      private function §4%i§(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         var _loc4_:int = 0;
         if(!disabled && this.getContainer().visible && param1.buttonDown)
         {
            _loc2_ = new Point(param1.stageX,param1.stageY);
            if((_loc2_.x < 5 || _loc2_.x > container.stage.width - 5) && (_loc2_.y < 5 || _loc2_.y > container.stage.height - 5))
            {
               this.§ !;§(null);
            }
            _loc3_ = container.globalToLocal(_loc2_);
            _loc4_ = this.§##D§ ? int(_loc3_.y) : int(_loc3_.x);
            this.setValue(this.§0$H§ + Math.ceil((this.maxValue - this.§0$H§) * (_loc4_ - this.§;&#§) / this.§ "z§));
         }
      }
      
      private function §-%i§(param1:int) : void
      {
         if(this.§##D§)
         {
            this.§6!w§.y = param1;
         }
         else
         {
            this.§6!w§.x = param1;
         }
      }
      
      override public function destroy() : void
      {
         this.§6!w§.destroy();
         super.destroy();
      }
      
      public function get btn() : §?%>§
      {
         return this.§6!w§;
      }
   }
}

