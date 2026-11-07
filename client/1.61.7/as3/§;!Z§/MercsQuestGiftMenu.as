package §;!Z§
{
   import § &5§.§%$O§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.*;
   import §+$=§.*;
   import §-@§.§0"e§;
   import §0"p§.*;
   import §0%[§.§0%§;
   import §0%[§.§9&#§;
   import §0%[§.Cookie;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4!x§.§@& §;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §7!B§.*;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §8!Y§.§`#Q§;
   import §8#o§.§1@§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §=#g§.§&%5§;
   import §?!p§.§;W§;
   import §@!N§.§'+§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class MercsQuestGiftMenu extends §@& § implements §^c§
   {
      
      private var §<S§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var gifts:Vector.<QuestGiftItem> = new Vector.<QuestGiftItem>(0);
      
      private var selected:QuestGiftItem;
      
      private var pack:§1%z§;
      
      public function MercsQuestGiftMenu()
      {
         super(§6#A§.§!&6§(§+"'§.§+"5§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:String = null;
         var _loc7_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:int = 0;
         super.§@"o§(param1);
         this.pack = new §1%z§(§8"%§.§'%;§.§6$T§ ? §8"%§.§'%;§.§6$T§.rewards.concat() : []);
         var _loc2_:int = this.pack.rewards.length > 0 ? int(this.pack.rewards.length) : §?B§.§3%&§;
         _loc3_ = §8"%§.§'%;§.§8!,§();
         var _loc4_:String = §0%§.format(_loc3_ ? §0$N§.MERCS_QUEST_GIFT_WIN : §0$N§.MERCS_QUEST_GIFT_LOSE,{"br":"\n"});
         §7&5§.§>&<§(§'%s§("notify"),§0$N§.§]"r§);
         §7&5§.§>&<§(§'%s§("text"),_loc4_);
         _loc5_ = Social.settings.§@"G§().toString();
         var _loc6_:Boolean = _loc5_ == "ru" || _loc5_ == "ua";
         getChildByName("title_en_win").visible = !_loc6_ && _loc3_;
         getChildByName("title_ru_win").visible = _loc6_ && _loc3_;
         getChildByName("title_en_fail").visible = !_loc6_ && !_loc3_;
         getChildByName("title_ru_fail").visible = _loc6_ && !_loc3_;
         getChildByName("char_win").visible = _loc3_;
         getChildByName("char_fail").visible = !_loc3_;
         _loc7_ = §'$a§("gifts");
         var _loc8_:int = _loc7_.width >> 1;
         var _loc9_:int = 0;
         while(_loc9_ < _loc2_)
         {
            _loc10_ = §6#A§.§!&6§(§+"'§.§?9§);
            _loc11_ = _loc10_.width * (_loc9_ - _loc2_ / 2) + 5 * _loc9_;
            _loc7_.addChild(_loc10_);
            _loc10_.x = _loc8_ + _loc11_;
            this.gifts[this.gifts.length] = new QuestGiftItem(_loc10_,_loc9_,this.§1"]§);
            _loc9_++;
         }
         §>!-§.setVisible(false);
         §>!-§.setText(§0$N§.BUTTON_OK,§"-§.§+$m§);
      }
      
      private function §1"]§(param1:QuestGiftItem) : void
      {
         this.selected = param1;
         this.selected.§@#$§(true,0);
         §8"%§.§'%;§.§&y§(this.§4"#§);
      }
      
      private function §4"#§(param1:§9x§) : void
      {
         var _loc3_:§#$!§ = null;
         var _loc4_:§&!e§ = null;
         var _loc5_:§&!e§ = null;
         if(param1 is §#$!§)
         {
            _loc3_ = §#$!§(param1);
            if(_loc3_.getRewardType() == §+$A§.INGAME)
            {
               this.selected.§!!j§(param1.getCount());
            }
            else if(_loc3_.getRewardType() == §+$A§.REAL)
            {
               this.selected.§=%=§(param1.getCount());
            }
         }
         else if(param1 is §'"%§)
         {
            this.selected.§>%w§(param1.getCount());
         }
         else if(param1 is §!%&§)
         {
            _loc4_ = §1@§.§`$M§(§!%&§(param1).getId());
            this.selected.setItem(_loc4_,§!%&§(param1).getCount());
         }
         else if(param1 is §`%g§)
         {
            _loc5_ = §<$c§.§ !=§(§!%&§(param1).getId());
            this.selected.setItem(_loc5_,§!%&§(param1).getCount());
         }
         this.selected = null;
         var _loc2_:§1%z§ = §8"%§.§'%;§.§6$T§;
         if(_loc2_ == null || _loc2_.rewards.length == 0)
         {
            §8"%§.§'%;§.§'!!§ = false;
            §'%s§("notify").visible = false;
            §>!-§.setVisible(true);
         }
         Application.§5!>§.§8$w§();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.playAnimations();
      }
      
      override public function hide() : void
      {
         §0"e§.§6s§(this.pack.getWeapons(),null,null,this.pack.§]#x§());
         this.stopAnimations();
         super.hide();
      }
      
      public function playAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(isShown() && Boolean(this.§<S§))
         {
            for each(_loc1_ in this.§<S§)
            {
               _loc1_.play();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:QuestGiftItem = null;
         if(this.§<S§)
         {
            for each(_loc1_ in this.§<S§)
            {
               _loc1_.stop();
            }
         }
         if(this.gifts)
         {
            for each(_loc2_ in this.gifts)
            {
               _loc2_.stopAnimations();
            }
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:QuestGiftItem = null;
         if(this.gifts)
         {
            for each(_loc1_ in this.gifts)
            {
               _loc1_.destroy();
            }
         }
         this.gifts.length = this.§<S§.length = 0;
         this.gifts = null;
         this.§<S§ = null;
         this.pack = null;
         super.destroy();
      }
   }
}

