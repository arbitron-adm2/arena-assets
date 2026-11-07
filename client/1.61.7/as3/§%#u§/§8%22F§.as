package §%#u§
{
   import § !P§.§1!8§;
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§0!-§;
   import §##j§.§0m§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §4!x§.§@& §;
   import §4f§.§-&§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §9%k§.§0"^§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8"F§ extends §@& §
   {
      
      private var §;%#§:Vector.<§`"_§> = new Vector.<§`"_§>(0);
      
      private var rewards:Array;
      
      private var postBtn:§?%>§;
      
      private var §8"`§:DisplayObjectContainer;
      
      private var §;"p§:Function;
      
      private var bonus:§]+§;
      
      public function §8"F§()
      {
         super(§6#A§.§!&6§(§+"'§.§?"T§));
      }
      
      public static function §5%#§(param1:§]+§, param2:Function = null) : §@& §
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc3_:§8"F§ = new §8"F§();
         _loc3_.bonus = param1;
         _loc3_.§;"p§ = param2;
         _loc3_.§=&8§();
         _loc4_ = int(param1.attach.rank);
         _loc5_ = int(param1.attach.place);
         _loc6_ = _loc4_ == 0;
         var _loc7_:Boolean = (_loc6_) && _loc5_ > 0 && _loc5_ < 101;
         var _loc8_:String = _loc6_ ? String(_loc7_ ? _loc5_ : " ") : param1.attach.rank;
         §7&5§.§?$k§(_loc3_.§'%s§("rankSign.text"),_loc8_);
         _loc3_.getChildByName("rankSign.simple").visible = !_loc6_;
         var _loc9_:String = !_loc6_ ? §0$N§.§%! §("TOP_RANK_IN_THIS_SEASON_MESSAGE") : §0$N§.§%! §("ZERO_TOP_RANK_IN_COMPLETE_SEASON") + (_loc7_ ? "\n" + §0$N§.§%! §("PLACE_IN_TOP_RANK_IN_COMPLETE_SEASON") : "");
         var _loc10_:TextField = _loc3_.§'%s§("msg");
         if(_loc6_ && _loc7_)
         {
            _loc10_.multiline = true;
            _loc10_.height *= 2;
            _loc10_.y -= 10;
         }
         §7&5§.§>&<§(_loc10_,_loc9_);
         return _loc3_;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:Date = null;
         var _loc3_:String = null;
         super.§@"o§(param1);
         _loc2_ = §0#2§.§'#`§(§0#2§.§@&6§());
         --_loc2_.month;
         _loc3_ = §0#2§.§ R§(int(_loc2_.getMonth()));
         var _loc4_:String = §7&5§.format(§0$N§.§%! §("RANK_SEASON_COMPLETE_TITLE"),{
            "month":_loc3_,
            "year":_loc2_.fullYear
         });
         §7&5§.§>&<§(§'%s§("title"),_loc4_);
         §7&5§.§>&<§(§'%s§("msg2"),§0$N§.§%! §("YOUR_REWARD_MESSAGE"));
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_OK);
         var _loc5_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn");
         this.postBtn = §!&5§.§7#[§(_loc5_);
         this.postBtn.setText(§0$N§.BTN_SHARE_NAME,§"-§.§+$m§);
         this.postBtn.§[!u§(this.§&&>§);
         this.§8"`§ = this.postBtn.getContainer().parent;
         §>!-§.setDisabled(true);
         this.postBtn.setDisabled(true);
         getChildByName("close").visible = false;
      }
      
      protected function §&&>§(param1:MouseEvent) : void
      {
         if(this.§;"p§ != null && this.bonus != null)
         {
            this.§;"p§(this.bonus);
         }
         onOkClick(null);
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         onOkClick(null);
         super.§0!j§(param1);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
      }
      
      private function §=&8§() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc11_:§9x§ = null;
         var _loc12_:int = 0;
         var _loc13_:§`"_§ = null;
         var _loc14_:Object = null;
         this.rewards = new Array().concat(this.bonus.pack.rewards);
         _loc1_ = int(this.rewards.length);
         var _loc2_:MovieClip = new MovieClip();
         §?!C§(_loc2_);
         var _loc3_:Number = 1.1;
         _loc4_ = 6;
         var _loc5_:int = _loc1_ > _loc4_ ? int(Math.ceil(_loc1_ * 0.5)) : _loc4_;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Array = [];
         var _loc10_:int = 0;
         while(_loc10_ < _loc1_)
         {
            if(!(this.rewards[_loc10_] is §'"%§ && Application.userProfile.getLevel() == §<!9§.getMaxLevel()))
            {
               _loc9_ = §6#A§.§!&6§(§+"'§.§3%f§);
               _loc11_ = this.rewards[_loc10_];
               _loc12_ = this.§<"=§(_loc11_,_loc11_.getCount());
               _loc13_ = new §`"_§(_loc9_,_loc12_,this.§#$,§);
               _loc14_ = this.§?%C§(_loc11_,_loc13_);
               this.§;%#§.push(_loc13_);
               _loc2_.addChild(_loc9_);
               _loc9_.x = _loc6_ * _loc9_.width * _loc3_;
               _loc9_.y = _loc7_ * _loc9_.height;
               if(_loc7_ > 0)
               {
                  _loc8_.push(_loc9_);
               }
               if(++_loc6_ == _loc5_)
               {
                  _loc8_ = [];
                  _loc6_ = 0;
                  _loc7_++;
               }
            }
            _loc10_++;
         }
         if(_loc8_.length > 0)
         {
            _loc6_ = 0;
            for each(_loc9_ in _loc8_)
            {
               _loc9_.x = _loc6_ * _loc9_.width * _loc3_ + (_loc5_ - _loc8_.length) * _loc9_.width * 0.5 * _loc3_;
               _loc6_++;
            }
         }
         §`o§.§%&%§(_loc2_);
         _loc2_.y = §>!-§.y - 80 - _loc2_.height * 0.5;
         if(_loc7_ == 1 && _loc8_.length > 0 || _loc7_ == 2)
         {
            panel.height += 50;
            §>!-§.y = this.§8"`§.y = panel.height - §>!-§.height;
            _loc2_.y = §>!-§.y - 100 - _loc2_.height * 0.5;
         }
      }
      
      private function §?%C§(param1:§9x§, param2:§`"_§) : Object
      {
         var _loc3_:§&!e§ = null;
         var _loc4_:§&!e§ = null;
         if(param1 is §#$!§)
         {
            if(§#$!§(param1).getRewardType() == §+$A§.INGAME)
            {
               param2.§!!j§(param1.getCount());
            }
            else if(§#$!§(param1).getRewardType() == §+$A§.REAL)
            {
               param2.§=%=§(param1.getCount());
            }
         }
         else if(param1 is §0m§)
         {
            param2.§=#6§(param1.getCount());
         }
         else if(param1 is §'"%§)
         {
            param2.§>%w§(param1.getCount());
         }
         else if(param1 is §`%g§)
         {
            _loc3_ = §<$c§.§ !=§(§`%g§(param1).getId());
            param2.setItem(_loc3_,§`%g§(param1).getCount());
         }
         else if(param1 is §]$X§)
         {
            _loc4_ = §<$c§.§8&E§(§]$X§(param1).getId(),Application.userProfile.getRace());
            param2.setItem(_loc4_);
         }
         return {
            "weaponRecord":_loc3_,
            "equipRecord":_loc4_
         };
      }
      
      private function §<"=§(param1:§9x§, param2:int) : int
      {
         if(param1 is §`%g§)
         {
            if(param2 == §0"^§.§%#b§)
            {
               return §0!-§.§@%d§;
            }
            if(param2 == §0"^§.§#$]§)
            {
               return §0!-§.MEDIUM;
            }
            if(param2 == §0"^§.§4"f§)
            {
               return §0!-§.§7q§;
            }
            return 3;
         }
         return 3;
      }
      
      private function §#$,§(param1:§`"_§) : void
      {
         this.§;%#§.shift();
         param1.§@#$§(true,0);
         if(this.§;%#§.length == 0)
         {
            §>!-§.setDisabled(false);
            this.postBtn.setDisabled(false);
            getChildByName("close").visible = true;
         }
      }
   }
}

