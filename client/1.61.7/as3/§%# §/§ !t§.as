package §%# §
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"% §.*;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%$!§.§@!o§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §,$J§.§0%G§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3"@§.§""m§;
   import §4'§.§`"q§;
   import §5!9§.§6$,§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §="z§.§9%1§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§#!"§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § !t§ extends §##U§
   {
      
      private var §!#`§:§`&-§;
      
      private var §`&@§:OpenChestResult;
      
      private var bonusItem:§&!e§;
      
      private var hatBonus:§`&-§;
      
      private var fuzyBonus:§`&-§;
      
      private var rubyBonus:§`&-§;
      
      private var weaponBonus:§`&-§;
      
      private var expBonus:§`&-§;
      
      private var §`!1§:§`&-§;
      
      private var §3a§:§`&-§;
      
      private var §%!!§:§`&-§;
      
      private var §%l§:§`&-§;
      
      private var §8%§:§`&-§;
      
      public function § !t§(param1:OpenChestResult)
      {
         this.§`&@§ = param1;
         super(§6#A§.§!&6§(§+"'§.§]&0§),null);
      }
      
      override protected function init() : void
      {
         this.§!#`§ = new §`&-§(getChildByName("holidayPrizes"));
         § $Q§ = this.§!#`§.y;
         this.fuzyBonus = new §`&-§(this.§!#`§.§'$a§("fuzyBonus"));
         this.rubyBonus = new §`&-§(this.§!#`§.§'$a§("rubyBonus"));
         this.weaponBonus = new §`&-§(this.§!#`§.§'$a§("weaponBonus"));
         this.hatBonus = new §`&-§(this.§!#`§.§'$a§("hatBonus"));
         if(this.§`&@§.experience)
         {
            this.expBonus = this.§7>§(this.§`&@§.experience,§@a§.§&$r§,§0$N§.EXPERIENCE);
         }
         if(this.§`&@§.medalCount)
         {
            this.§`!1§ = this.§7>§(this.§`&@§.medalCount,§@a§.§>!2§,§0$N§.BADGE);
            this.§%%@§(this.§`!1§,§#"B§.BADGE);
         }
         if(this.§`&@§.mutagenCount)
         {
            this.§3a§ = this.§7>§(this.§`&@§.mutagenCount,§@a§.§>!2§,§0$N§.MUTAGEN_QTIP);
            this.§%%@§(this.§3a§,§#"B§.MUTAGEN);
         }
         if(this.§`&@§.battles)
         {
            this.§%!!§ = this.§7>§(this.§`&@§.battles,§@a§.§7"R§,§#&E§.§-!l§.§@!1§);
         }
         if(this.§`&@§.bossToken)
         {
            this.§%l§ = this.§7>§(this.§`&@§.bossToken,§@a§.§<"h§,§#&E§.§#E§.§@!1§);
         }
         if(this.§`&@§.wagerToken)
         {
            this.§8%§ = this.§7>§(this.§`&@§.wagerToken,§@a§.§=A§,§#&E§.§^5§.§@!1§);
         }
         message = §'%s§("message");
         message.autoSize = TextFieldAutoSize.CENTER;
         message.embedFonts = true;
         message.defaultTextFormat = §"-§.§+$m§;
         var _loc1_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn");
         postBtn = §!&5§.§7#[§(_loc1_);
         postBtn.setText(§0$N§.BTN_SHARE_NAME,§"-§.§+$m§);
         postBtn.§[!u§(this.§&&>§);
         §8"`§ = postBtn.getContainer().parent;
         §8"`§.visible = false;
         §<"b§ = true;
      }
      
      private function §%%@§(param1:§`&-§, param2:int) : void
      {
         var _loc3_:MovieClip = §6#A§.§!&6§(§1@§.§`$M§(param2).getMenuIcon());
         var _loc4_:DisplayObject = param1.getChildByName("icon");
         var _loc5_:DisplayObject = param1.getChildByName("count");
         _loc3_.height = _loc4_.height;
         _loc3_.scaleX = _loc3_.scaleY;
         param1.§?!C§(_loc3_);
         param1._removeChild(_loc4_);
         _loc5_.x = Math.round(_loc3_.width) + 1;
         param1.y = this.fuzyBonus.y;
      }
      
      private function §7>§(param1:int, param2:String, param3:String) : §`&-§
      {
         var _temp_1:* = new §`&-§(§6#A§.§!&6§(param2));
         var _loc4_:§`&-§ = new §`&-§(§6#A§.§!&6§(param2));
         _loc4_.setQtip(param3);
         this.setValue(_loc4_,param1);
         this.§!#`§.addChild(_loc4_);
         _loc4_.y = this.fuzyBonus.y;
         return _loc4_;
      }
      
      private function setValue(param1:§`&-§, param2:int) : void
      {
         var _loc3_:TextField = param1.§'%s§("count");
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         _loc3_.text = param2.toString();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.§=" §();
      }
      
      private function §=" §() : void
      {
         §#7§(§0$N§.CHRISTMAS_BONUS_TITLE);
         message.htmlText = "<b>" + §0$N§.CHRISTMAS_BONUS_MESSAGE + "</b>";
         if(message.numLines != 3)
         {
            this.§!#`§.y = § $Q§ - (3 - message.numLines) * 8;
         }
         else
         {
            this.§!#`§.y = § $Q§;
         }
      }
      
      override protected function §&&>§(param1:MouseEvent) : void
      {
         Social.§!g§.§7%<§(this.bonusItem);
         this.onOkClick(null);
      }
      
      override protected function §,$P§() : void
      {
      }
      
      override protected function § %+§() : void
      {
         var _loc1_:§3U§ = null;
         var _loc2_:§&!e§ = null;
         if(this.§`&@§.experience)
         {
            §="#§.push(this.expBonus);
         }
         if(this.§`&@§.medalCount)
         {
            §="#§.push(this.§`!1§);
         }
         if(this.§`&@§.mutagenCount)
         {
            §="#§.push(this.§3a§);
         }
         if(this.§`&@§.battles)
         {
            §="#§.push(this.§%!!§);
         }
         if(this.§`&@§.bossToken)
         {
            §="#§.push(this.§%l§);
         }
         if(this.§`&@§.wagerToken)
         {
            §="#§.push(this.§8%§);
         }
         if(this.§`&@§.rubyCount)
         {
            this.setValue(this.rubyBonus,this.§`&@§.rubyCount);
            this.rubyBonus.setQtip(§0$N§.RUBY_QTIP);
            §="#§.push(this.rubyBonus);
         }
         else
         {
            this.§!#`§.removeChild(this.rubyBonus);
         }
         if(this.§`&@§.fuzyCount)
         {
            this.setValue(this.fuzyBonus,this.§`&@§.fuzyCount);
            this.fuzyBonus.setQtip(§0$N§.FUZY_QTIP);
            §="#§.push(this.fuzyBonus);
         }
         else
         {
            this.§!#`§.removeChild(this.fuzyBonus);
         }
         if(this.§`&@§.weaponId != 0)
         {
            _loc1_ = new §3U§(this.weaponBonus.getChildByName("icon"),true);
            _loc2_ = §<$c§.§ !=§(this.§`&@§.weaponId);
            _loc1_.setItem(_loc2_);
            this.setValue(this.weaponBonus,this.§`&@§.weaponCount);
            §="#§.push(this.weaponBonus);
            §8"%§.§@1§.increase([§!$L§.§%%x§],[this.§`&@§.weaponCount]);
         }
         else
         {
            this.§!#`§.removeChild(this.weaponBonus);
         }
         if(this.§`&@§.equipId != 0)
         {
            _loc1_ = new §3U§(this.hatBonus.getContainer(),true);
            if(this.§`&@§.equipId >= §""m§.§;9§)
            {
               _loc2_ = §<$c§.§3"k§(this.§`&@§.equipId);
            }
            else if(this.§`&@§.equipId >= §8"j§.§;9§)
            {
               _loc2_ = §<$c§.§"$h§(this.§`&@§.equipId);
            }
            else if(this.§`&@§.equipId >= §0%G§.§;9§)
            {
               _loc2_ = §<$c§.§^&1§(this.§`&@§.equipId,Application.userProfile.getRace());
            }
            if(§#!"§.§-#,§(_loc2_.getId()))
            {
               §8"`§.visible = true;
               this.bonusItem = _loc2_;
            }
            _loc1_.setItem(_loc2_);
            §="#§.push(this.hatBonus);
         }
         else
         {
            this.§!#`§.removeChild(this.hatBonus);
         }
         Application.§5!>§.§8$w§();
         var _loc3_:int = 0;
         var _loc4_:int = int(§="#§.length);
         while(_loc3_ < _loc4_)
         {
            if(_loc3_ > 0)
            {
               §`o§.§4%4§(§="#§[_loc3_].getContainer(),§="#§[_loc3_ - 1].getContainer(),7);
            }
            §="#§[0].x = 0;
            _loc3_++;
         }
         §`o§.§9$x§(this.§!#`§);
         if(!§8"`§.visible)
         {
            §`o§.§%&%§(§>!-§.getContainer());
         }
      }
      
      override protected function onOkClick(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         Application.userProfile.§9%D§(this.§`&@§.rubyCount);
         Application.userProfile.§1%'§(this.§`&@§.fuzyCount);
         if(this.§`&@§.experience)
         {
            LevelUpDialog.§@#X§(this.§`&@§.experience,function():void
            {
               Application.§5!>§.§8$w§();
            });
         }
         Application.§5!>§.§8$w§();
         hide();
      }
   }
}

