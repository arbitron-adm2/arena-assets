package §2#s§
{
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&%X§.§^#=§;
   import §-@§.§0"e§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §7"N§ extends §1#g§
   {
      
      private var bonus:§<,§;
      
      private var getBtn:§?%>§;
      
      private var §+$d§:int;
      
      private var §3%-§:int;
      
      private var §6$+§:Boolean;
      
      private var cards:Vector.<§+!Y§> = new Vector.<§+!Y§>(0);
      
      private var weeks:Vector.<§^%B§> = new Vector.<§^%B§>(0);
      
      public function §7"N§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         var _loc2_:§<,§ = §8"%§.§]$s§.§%%h§();
         this.§6$+§ = _loc2_ == null;
         if(this.§6$+§)
         {
            this.§+$d§ = §^#=§(§8"%§.§]$s§).loginSequence;
            switch(§<,§.§'&B§(this.§+$d§))
            {
               case 1:
                  _loc2_ = §<,§.§1!T§;
                  break;
               case 2:
                  _loc2_ = §<,§.§ &'§;
                  break;
               case 3:
                  _loc2_ = §<,§.§0#i§;
                  break;
               case 4:
                  _loc2_ = §<,§.§&"f§;
                  break;
               case 5:
                  _loc2_ = §<,§.§=!b§;
                  break;
               case 6:
                  _loc2_ = §<,§.§]$f§;
                  break;
               case 7:
                  _loc2_ = §<,§.§,&%§;
            }
         }
         else
         {
            this.§+$d§ = _loc2_.§7!d§;
         }
         this.§3%-§ = this.§+$d§ / §<,§.§4"X§ + (this.§+$d§ % §<,§.§4"X§ == 0 ? 0 : 1);
         this.§<"n§(_loc2_);
      }
      
      public function §<"n§(param1:§<,§) : void
      {
         var _loc5_:String = null;
         var _loc6_:§<,§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§+!Y§ = null;
         var _loc10_:§^%B§ = null;
         this.bonus = param1;
         §3#1§("title",§0$N§.DAILY_BONUS_TITLE,§"-§.§+$m§);
         §3#1§("descr",§0$N§.DAILY_BONUS_TEXT,§"-§.§+$m§);
         this.getBtn = §!&5§.§7#[§(getChildByName("getBtn"));
         this.getBtn.setText(§0$N§.DAILY_BONUS_BTN,§"-§.§+$m§);
         var _loc2_:int = param1.§[![§ - 1;
         var _loc3_:int = this.§3%-§ - 1;
         var _loc4_:int = 0;
         while(_loc4_ < §<,§.§4"X§)
         {
            _loc6_ = §<,§.§2%R§(_loc4_ + 1);
            _loc7_ = _loc6_.§9#m§.length == 1 ? _loc6_.type : int(§=$,§(_loc6_.§9#m§[_loc3_]).serverCode);
            _loc8_ = int(_loc6_.§2$j§[_loc3_]);
            _loc9_ = new §+!Y§(getChildByName("cards.dayCard" + _loc4_),_loc4_,_loc7_,_loc8_);
            _loc9_.setExist(_loc4_ < _loc2_);
            this.cards.push(_loc9_);
            _loc4_++;
         }
         this.cards[_loc2_].§%#=§(true);
         if(!this.§6$+§)
         {
            this.getBtn.x = this.cards[_loc2_].x + 1;
            this.getBtn.§[!u§(this.§"7§);
            this.getBtn.setDisabled(false);
         }
         else
         {
            this.getBtn.setVisible(false);
            this.cards[_loc2_].setExist(true);
         }
         _loc4_ = 0;
         while(_loc4_ < §<,§.§6l§)
         {
            if(Application.userProfile.getLevel() < §<,§.§8%d§[_loc4_])
            {
               _loc5_ = §^%B§.§#!i§;
            }
            else if(_loc3_ == _loc4_)
            {
               _loc5_ = §^%B§.§8"g§;
            }
            else if(_loc3_ > _loc4_)
            {
               _loc5_ = §^%B§.§9!D§;
            }
            else if(_loc3_ < _loc4_)
            {
               _loc5_ = §^%B§.§!%p§;
            }
            _loc10_ = new §^%B§(getChildByName("weeks.week" + (_loc4_ + 1)),_loc4_,_loc5_);
            if(_loc5_ == §^%B§.§#!i§)
            {
               _loc10_.setLevel(§<,§.§8%d§[_loc4_]);
            }
            this.weeks.push(_loc10_);
            _loc4_++;
         }
      }
      
      private function §"7§(param1:MouseEvent) : void
      {
         this.getBtn.setDisabled(true);
         §%%w§.§##$§(GetDailyBonusResult,this.§ %u§);
         §%%w§.§,U§(new GetDailyBonus());
      }
      
      private function § %u§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(GetDailyBonus,this.§ %u§);
         var _loc2_:GetDailyBonusResult = GetDailyBonusResult(param1.message);
         this.§6$+§ = _loc2_.result == 0;
         Application.loginfo(this + " onGetDailyBonus " + this.§6$+§ + " result=" + _loc2_.result + " type=" + this.bonus.type + " count=" + this.bonus.count);
         if(this.§6$+§)
         {
            this.getBtn.setVisible(false);
            this.getBtn.removeHandler(this.§"7§);
            §+!Y§(this.cards[int(this.bonus.§[![§ - 1)]).setExist(true);
            switch(this.bonus.type)
            {
               case §=$,§.FUZY.serverCode:
                  Application.userProfile.§1%'§(this.bonus.count);
                  break;
               case §=$,§.RUBY.serverCode:
                  Application.userProfile.§9%D§(this.bonus.count);
                  §8"%§.§@1§.increase([§!$L§.§1&<§],[1]);
                  Social.§!g§.enter7DaySequence(this.bonus);
                  break;
               case §=$,§.REACTION.serverCode:
                  Application.userProfile.§%`§(this.bonus.count);
                  break;
               case §=$,§.§=$K§.serverCode:
                  LevelUpDialog.§@#X§(this.bonus.count,this.§`#?§);
                  break;
               case §=$,§.§<$e§.serverCode:
                  this.§ E§(_loc2_.awards);
                  break;
               case §=$,§.§!&F§.serverCode:
                  Application.userProfile.§2!>§().§!&G§(§#"B§.§;#%§,this.bonus.count,true);
            }
            §8"%§.§]$s§.§7$o§();
            Application.§5!>§.§8$w§();
         }
         else
         {
            this.getBtn.setDisabled(false);
         }
      }
      
      private function §`#?§(param1:Event) : void
      {
         var _loc2_:LevelUpDialog = param1.target as LevelUpDialog;
         if(_loc2_.§>#U§)
         {
            Social.§!g§.§8%I§(_loc2_.§8%I§);
         }
         else if(_loc2_.§-&=§)
         {
            §8"%§.§8"!§.showShopMenu();
         }
      }
      
      private function § E§(param1:Array) : void
      {
         var message:AwardGranted = null;
         var award:GenericAwardStructure = null;
         var window:§##U§ = null;
         var awards:Array = param1;
         message = new AwardGranted();
         message.bonus = new §]+§();
         for each(award in awards)
         {
            if(award.awardKind == §[#c§.§<#^§)
            {
               message.bonus.§2&4§[award.itemId] = award.count;
            }
            else
            {
               message.bonus.items[award.itemId] = award.count;
            }
         }
         §2"e§.§,%6§(message.bonus,message.attach);
         window = §##U§.§"X§(message.bonus);
         window.addEventListener(§[%w§.WINDOW_CLOSE,function(param1:Event):void
         {
            §0"e§.§`"T§(message.bonus.items,message.bonus.§2&4§);
         });
         window.show();
      }
   }
}

