package §=7§
{
   import § !P§.§1!8§;
   import § #9§.§"$t§;
   import § m§.§2&G§;
   import §!L§.§+"'§;
   import §#"V§.§8"@§;
   import §%# §.§##U§;
   import §+$=§.§6#A§;
   import §-@§.§0"e§;
   import §2!-§.DamageEvent;
   import §2#s§.*;
   import §4$b§.§6!G§;
   import §6",§.§[%w§;
   import §7!B§.§6#I§;
   import §9%W§.§&!P§;
   import §=!p§.§&&0§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import com.greensock.TweenLite;
   import com.greensock.easing.Linear;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   
   public class §-$!§ extends §1#g§
   {
      
      private var images:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private var §4$p§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var §]m§:Vector.<§?%4§> = new Vector.<§?%4§>(0);
      
      private var §<%L§:§?%4§;
      
      private var charArrow:MovieClip;
      
      public function §-$!§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §&$9§.§>&F§(§'%s§("titleTeam"),§"-§.§+$m§,§0$N§.TEAM_CHAT_BTN);
         §&$9§.§>&F§(§'%s§("notifyText"),§"-§.§+$m§,§0$N§.GLADIATOR_TEAM_NOTIFY);
         this.charArrow = §'$a§("charArrow");
         this.charArrow.mouseChildren = this.charArrow.mouseEnabled = false;
         this.charArrow.alpha = 0.5;
         var _loc2_:int = 0;
         while(_loc2_ < §2&G§.§1&#§)
         {
            this.§4$p§[_loc2_] = getChildByName("char" + (_loc2_ + 1)) as MovieClip;
            this.§]m§[_loc2_] = new §?%4§(this.§4$p§[_loc2_],§2&G§.§+"<§);
            this.§]m§[_loc2_].addEventListener(§8"@§.EVENT_PRESSED,this.§`#O§);
            this.images.push(getChildByName("charBack" + (_loc2_ + 1)));
            _loc2_++;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:UserProfile = null;
         var _loc3_:§?%4§ = null;
         var _loc7_:§6!G§ = null;
         var _loc8_:UserProfile = null;
         var _loc9_:DisplayObjectContainer = null;
         var _loc10_:§6!G§ = null;
         super.activate();
         _loc1_ = §8"%§.§%$r§.§ !d§();
         var _loc2_:int = _loc1_ ? int(_loc1_.§"]§().length) : 0;
         var _loc4_:int = 0;
         var _loc5_:int = int(this.§]m§.length);
         while(_loc4_ < _loc5_)
         {
            _loc3_ = this.§]m§[_loc4_];
            _loc7_ = _loc3_.§-$S§();
            if((Boolean(_loc7_)) && Boolean(_loc7_.getClip().parent))
            {
               _loc7_.getClip().parent.removeChild(_loc7_.getClip());
            }
            _loc3_.reset();
            this.images[_loc4_].visible = _loc4_ >= _loc2_;
            this.§4$p§[_loc4_].mouseChildren = this.§4$p§[_loc4_].mouseEnabled = _loc4_ < _loc2_;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc8_ = _loc1_.§"]§()[_loc4_];
            _loc9_ = §'$a§("char" + (_loc4_ + 1).toString() + ".avatar");
            _loc3_ = this.§]m§[_loc4_];
            _loc10_ = §"$t§.§!!1§(_loc3_.§-$S§(),_loc8_,_loc9_);
            §"$t§.§<$W§(_loc8_,§6#A§.§!&6§(§+"'§.§?-§));
            _loc3_.§3%,§(_loc8_);
            _loc3_.§]$o§(_loc10_);
            _loc3_.§7"i§(_loc8_.§2u§());
            _loc3_.§;"U§(_loc8_.§+!b§());
            _loc4_++;
         }
         var _loc6_:Boolean = §8"%§.§%$r§.§3!'§;
         if(!_loc6_)
         {
            _loc3_ = this.§]%§();
            if(_loc3_)
            {
               _loc3_.setPressed(true);
               this.charArrow.visible = true;
               this.charArrow.play();
            }
            getChildByName("notifyText").visible = true;
         }
         else
         {
            if(this.§<%L§)
            {
               this.§<%L§.setPressed(false);
               this.§<%L§ = null;
            }
            getChildByName("notifyText").visible = this.charArrow.visible = false;
            this.charArrow.stop();
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         if(this.charArrow)
         {
            this.charArrow.stop();
         }
      }
      
      private function §`#O§(param1:Event) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:§?%4§ = this.§]%§();
         if(_loc2_)
         {
            this.§<%L§ = _loc2_;
            TweenLite.killTweensOf(this.charArrow);
            _loc3_ = (_loc2_.getContainer() as MovieClip).getChildByName("btn");
            TweenLite.to(this.charArrow,0.2,{
               "x":_loc2_.getContainer().x + (_loc3_.width - this.charArrow.width) * 0.5,
               "ease":Linear.easeOut
            });
         }
         else
         {
            if(this.§<%L§)
            {
               this.§<%L§.setPressed(false);
               this.§<%L§ = null;
            }
            this.charArrow.visible = false;
            this.charArrow.stop();
         }
      }
      
      private function §]%§() : §?%4§
      {
         var _loc1_:§?%4§ = null;
         for each(_loc1_ in this.§]m§)
         {
            if(!_loc1_.getProfile())
            {
               return _loc1_;
            }
         }
         return null;
      }
   }
}

