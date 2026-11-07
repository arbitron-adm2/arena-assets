package §-&5§
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.*;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §@!N§.§&#Z§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[$P§.§+H§;
   import §[%§.Dragon;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import com.greensock.TweenLite;
   import com.greensock.easing.Expo;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,##§ extends §>D§
   {
      
      private var level:int = -1;
      
      protected var §[!C§:§?#c§;
      
      protected var §+%u§:TextField;
      
      protected var §[%S§:DisplayObject;
      
      protected var barBack:DisplayObject;
      
      protected var bar:DisplayObject;
      
      protected var §!#N§:Sprite;
      
      protected var §+#-§:Boolean;
      
      public function §,##§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         if(getChildByName("ImprovementsCont"))
         {
            this.§[!C§ = new §?#c§(getChildByName("ImprovementsCont"));
         }
         if(getChildByName("level_cont"))
         {
            this.§[%S§ = getChildByName("level_cont");
            this.bar = getChildByName("level_cont.bar");
            this.barBack = getChildByName("level_cont.barBack");
            this.§+%u§ = §'%s§("level_cont.count");
            §7&5§.§>&<§(§'%s§("level_cont.level"),§0$N§.LEVEL_LABEL);
         }
      }
      
      override public function setItem(param1:§??§) : void
      {
         var _loc2_:§;#_§ = null;
         var _loc3_:String = null;
         var _loc4_:Sprite = null;
         var _loc5_:Number = NaN;
         super.setItem(param1);
         if(this.bar)
         {
            TweenLite.killTweensOf(this.bar);
         }
         if(Boolean(this.§!#N§) && Boolean(this.§!#N§.parent))
         {
            this.§!#N§.parent.removeChild(this.§!#N§);
         }
         if(this.level != -1)
         {
            this.§ %]§(param1,this.level);
         }
         if(this.§[%S§)
         {
            this.§[%S§.visible = this.level != -1;
         }
         this.§&!U§(param1);
         if(Boolean(param1) && param1 is §;#_§)
         {
            _loc2_ = param1 as §;#_§;
            if(Boolean(param1) && Boolean(_loc2_.isComplex()) && this.level < _loc2_.getMaxLevel())
            {
               this.§[!C§.update(_loc2_,this.level);
               this.§[!C§.y = §^"o§.y + §^"o§.height + 5;
            }
            else
            {
               this.§[!C§.setVisible(false);
            }
            if(_loc2_.§<"Y§())
            {
               if(Boolean(this.§!#N§) && Boolean(this.§!#N§.parent))
               {
                  this.§!#N§.parent.removeChild(this.§!#N§);
               }
               this.§!#N§ = new Sprite();
               §?!C§(this.§!#N§);
               for each(_loc3_ in _loc2_.§<"Y§())
               {
                  _loc4_ = §&#Z§.§@"R§(_loc3_,§4&D§.height);
                  _loc5_ = this.§!#N§.width;
                  this.§!#N§.addChild(_loc4_);
                  _loc4_.x = _loc5_;
               }
               this.§!#N§.x = §4&D§.x + §4&D§.width - this.§!#N§.width;
            }
         }
         requirements.update(param1);
         requirements.y = 350 - requirements.height - 5;
      }
      
      public function §[%?§(param1:int) : void
      {
         this.level = param1;
      }
      
      private function § %]§(param1:§??§, param2:int) : void
      {
         var _loc3_:§;#_§ = null;
         _loc3_ = §;#_§(param1);
         var _loc4_:String = param2 != 0 && param2 != _loc3_.getMaxLevel() ? "+" : "";
         var _loc5_:Object = {"level":param2 + " / " + _loc3_.getMaxLevel()};
         §7&5§.§?$k§(this.§+%u§,param2 + " / " + _loc3_.getMaxLevel());
         this.§[%S§.y = §4&D§.y + §4&D§.height - 5;
         var _loc6_:Number = this.barBack.width / _loc3_.getMaxLevel() * param2;
         if(this.§+#-§)
         {
            this.§+#-§ = false;
            TweenLite.killTweensOf(this.bar);
            TweenLite.to(this.bar,1,{
               "width":_loc6_,
               "ease":Expo.easeInOut
            });
         }
         else
         {
            this.bar.width = _loc6_;
         }
      }
      
      protected function §&!U§(param1:§??§) : void
      {
         var _loc2_:String = "";
         if(param1.§]G§())
         {
            _loc2_ += param1.§]G§();
            §^"o§.visible = true;
         }
         else
         {
            §^"o§.visible = false;
         }
         _loc2_ += this.§="H§(param1);
         §^"o§.htmlText = _loc2_;
         if(Boolean(this.§[%S§) && this.§[%S§.visible)
         {
            §^"o§.y = this.§[%S§.y + this.§[%S§.height + 5;
         }
         else
         {
            §^"o§.y = §4&D§.y + §4&D§.height + 5;
         }
      }
      
      protected function §="H§(param1:§??§) : String
      {
         var _loc2_:§;#_§ = param1 as §;#_§;
         var _loc3_:String = "";
         if(_loc2_.§#6§())
         {
            _loc3_ += "<br/>" + "<b>" + _loc2_.§#6§() + "</b>";
         }
         _loc3_ += "<br/>";
         var _loc4_:Boolean = Boolean(_loc2_) && Boolean(_loc2_.§-$O§());
         if(_loc4_)
         {
            _loc3_ += "<br/><font color=\'#B30000\'><b>" + §0$N§.DAMAGE + "</b>: " + _loc2_.§-$O§() + "</font>";
         }
         return _loc3_ + ("<br/><font color=\'#524336\'><b>" + §0$N§.COUNT_LABEL + "</b>: " + §7%g§.§4!&§(_loc2_,this.level) + "</font>");
      }
      
      public function §6!r§(param1:Boolean) : void
      {
         this.§+#-§ = param1;
      }
   }
}

