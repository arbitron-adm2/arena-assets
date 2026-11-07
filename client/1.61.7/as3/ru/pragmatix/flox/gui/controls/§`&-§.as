package ru.pragmatix.flox.gui.controls
{
   import § "I§.§,!D§;
   import § #9§.§"$t§;
   import § $q§.§,"c§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!!!§.*;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%$!§.§@!o§;
   import §%&3§.§'C§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$2§.§;#T§;
   import §+$=§.*;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§>!I§;
   import §+5§.§8$W§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#W§.PvpChestBox;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#T§.Meteor;
   import §3#T§.§]!6§;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4!!§.§6$V§;
   import §4!x§.§@& §;
   import §4$b§.*;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!b§.§]!4§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#<§.§^#O§;
   import §9%W§.§!7§;
   import §;!Z§.*;
   import §<!W§.§;#A§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §=&!§.§<$!§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§!q§;
   import §?>§.§^&<§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@"s§.§]!>§;
   import §@$f§.PromoRaidWindow;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §["3§.*;
   import §[$<§.§>$o§;
   import §[%'§.§<"G§;
   import §[%§.*;
   import §]^§.§5" §;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.plugins.*;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`&-§ extends §4#_§ implements §""t§
   {
      
      protected var §?Q§:DisplayObject;
      
      public function §`&-§(param1:DisplayObject = null)
      {
         super(param1);
         if(!param1 is DisplayObjectContainer)
         {
            throw new IllegalOperationError("container must be instance of DisplayObjectContainer");
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         if(!(param1 is DisplayObjectContainer))
         {
            throw new ArgumentError("argument must be instance of DisplayObjectContainer");
         }
         super.§@"o§(param1);
         this.§?Q§ = this.getChildByName("disabled");
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         return §`o§.getChildByName(this.§#!`§(),param1);
      }
      
      public function §'%s§(param1:String) : TextField
      {
         return this.getChildByName(param1) as TextField;
      }
      
      public function §'$a§(param1:String) : MovieClip
      {
         return this.getChildByName(param1) as MovieClip;
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         super.setDisabled(param1);
         if(this.§?Q§)
         {
            if(removeAllWhenDisabled)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#!`§().numChildren)
               {
                  _loc3_ = this.§#!`§().getChildAt(_loc2_);
                  _loc3_.visible = _loc3_ != this.§?Q§ && !param1;
                  _loc2_++;
               }
            }
            this.§?Q§.visible = param1;
         }
      }
      
      override protected function §^^§() : void
      {
         super.§^^§();
         if(this.§?Q§)
         {
            this.setDisabled(disabled);
         }
      }
      
      public function addChild(param1:§;"L§) : void
      {
         param1.parent = this;
         this.§?!C§(param1.getContainer());
      }
      
      public function addChildAt(param1:§;"L§, param2:int) : void
      {
         this.§&"U§(param1.getContainer(),param2);
      }
      
      public function removeChild(param1:§;"L§) : void
      {
         param1.parent = null;
         this._removeChild(param1.getContainer());
      }
      
      public function §?!C§(param1:DisplayObject) : void
      {
         this.§#!`§().addChild(param1);
      }
      
      public function §+$_§(param1:DisplayObject) : Boolean
      {
         return this.§#!`§().contains(param1);
      }
      
      public function contains(param1:§;"L§) : Boolean
      {
         return this.§+$_§(param1.getContainer());
      }
      
      public function §&"U§(param1:DisplayObject, param2:int) : void
      {
         this.§#!`§().addChildAt(param1,param2);
      }
      
      public function §0%0§(param1:DisplayObject) : int
      {
         return this.§#!`§().getChildIndex(param1);
      }
      
      public function _removeChild(param1:DisplayObject) : void
      {
         this.§#!`§().removeChild(param1);
      }
      
      public function removeChildren() : void
      {
         var _loc1_:DisplayObjectContainer = this.§#!`§();
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
      }
      
      public function swapChildren(param1:§;"L§, param2:§;"L§) : void
      {
         this.§#!`§().swapChildren(param1.getContainer(),param2.getContainer());
      }
      
      public function §]%N§(param1:DisplayObject, param2:DisplayObject) : void
      {
         this.§#!`§().swapChildren(param1,param2);
      }
      
      private function §^%;§(param1:String, param2:TextFormat = null) : TextField
      {
         var _loc3_:TextField = this.§'%s§(param1);
         if(param2)
         {
            §&$9§.§>&F§(_loc3_,param2);
         }
         return _loc3_;
      }
      
      public function §`"R§(param1:String, param2:Object, param3:TextFormat = null) : void
      {
         this.§^%;§(param1,param3).htmlText = param2 ? param2.toString() : "";
      }
      
      public function § #x§(param1:String, param2:Object, param3:TextFormat = null) : void
      {
         this.§^%;§(param1,param3).htmlText = param2 ? param2.toString() + ":" : "";
      }
      
      public function §3#1§(param1:String, param2:Object, param3:TextFormat = null) : TextField
      {
         var _loc4_:TextField = this.§^%;§(param1,param3);
         _loc4_.text = param2 ? param2.toString() : "";
         return _loc4_;
      }
      
      public function §<#§(param1:String, param2:Object, param3:TextFormat = null) : void
      {
         this.§^%;§(param1,param3).text = param2 ? param2.toString() + ":" : "";
      }
      
      public function §#!`§() : DisplayObjectContainer
      {
         return container as DisplayObjectContainer;
      }
      
      protected function §&!a§(... rest) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc2_:Number = Number.MAX_VALUE;
         var _loc3_:Number = Number.MIN_VALUE;
         for each(_loc4_ in rest)
         {
            _loc7_ = _loc4_ is DisplayObject && DisplayObject(_loc4_).visible || _loc4_ is §;"L§ && §;"L§(_loc4_).isVisible();
            if(_loc7_)
            {
               _loc2_ = Math.min(_loc2_,_loc4_.x);
               _loc3_ = Math.max(_loc3_,_loc4_.x + _loc4_.width);
            }
         }
         _loc5_ = (width - (_loc3_ - _loc2_)) / 2;
         _loc6_ = _loc2_ - _loc5_;
         for each(_loc4_ in rest)
         {
            _loc7_ = _loc4_ is DisplayObject && DisplayObject(_loc4_).visible || _loc4_ is §;"L§ && §;"L§(_loc4_).isVisible();
            if(_loc7_)
            {
               _loc4_.x -= _loc6_;
            }
         }
      }
      
      protected function §%!K§(... rest) : Sprite
      {
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc2_:Sprite = new Sprite();
         var _loc3_:int = 0;
         var _loc4_:Number = 0;
         for each(_loc5_ in rest)
         {
            _loc6_ = _loc5_ is DisplayObject && DisplayObject(_loc5_).visible || _loc5_ is §;"L§ && §;"L§(_loc5_).isVisible();
            if(_loc6_)
            {
               if(_loc3_ > 0)
               {
                  _loc5_.x -= _loc4_;
               }
               else
               {
                  _loc4_ = Number(_loc5_.x);
                  _loc5_.x = 0;
                  _loc2_.y = _loc5_.y;
               }
               _loc5_.y -= _loc2_.y;
               _loc2_.addChild(_loc5_ is DisplayObject ? _loc5_ as DisplayObject : _loc5_.getContainer());
               _loc3_++;
            }
         }
         this.§?!C§(_loc2_);
         return _loc2_;
      }
   }
}

