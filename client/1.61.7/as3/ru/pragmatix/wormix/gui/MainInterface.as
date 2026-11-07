package ru.pragmatix.wormix.gui
{
   import § #m§.§;#^§;
   import §!!!§.BuySkinDialog;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"#x§.§'"$§;
   import §#",§.§ ^§;
   import §#",§.§+7§;
   import §#",§.§=&G§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#E§.§;2§;
   import §&#h§.§&N§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §+%S§.§`$l§;
   import §,"v§.§9%d§;
   import §-!U§.§&%j§;
   import §-8§.§`%[§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §3"@§.*;
   import §5#`§.*;
   import §6",§.§[%w§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<!W§.§1N§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=#g§.§!"X§;
   import §=$#§.§ "V§;
   import §=&!§.§<$!§;
   import §=;§.§@§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@$f§.§78§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[" §.§ #a§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterPayment;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class MainInterface extends §`&-§
   {
      
      private var §5"!§:MovieClip;
      
      private var §]&6§:MovieClip;
      
      private var §6$ §:int;
      
      private var §;"Q§:int;
      
      private var dailyTasksBtn:§?%>§;
      
      private var promocodeBtn:§?%>§;
      
      private var newsBtn:§?%>§;
      
      private var rangBtn:§?%>§;
      
      private var rangRubyBtn:§?%>§;
      
      public var §9$Q§:§?%>§;
      
      public var § $`§:§ #a§;
      
      private var §;#0§:RatingWindow;
      
      private var settingsBtn:§?%>§;
      
      private var §9[§:§=&G§;
      
      private var §3M§:§+7§;
      
      private var §&&&§:§ ^§;
      
      private var §0!z§:§;2§;
      
      private var dndBtn:§8"@§;
      
      private var §2%t§:ConnectIcon;
      
      private var § %6§:§ %p§;
      
      private var menu:§6#]§;
      
      public function MainInterface(param1:§6#]§)
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:DisplayObject = null;
         var _loc6_:int = 0;
         var _loc8_:§?%>§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         this.menu = param1;
         super(§6#A§.§!&6§(§+"'§.§9$A§));
         _loc2_ = §'$a§("groupBtnContainer");
         _loc3_ = _loc2_.getChildByName(§8"%§.§[f§.getType().name);
         if(_loc3_)
         {
            _loc8_ = §!&5§.§7#[§(_loc3_);
            _loc8_.setQtip(§0$N§.OFFICIAL_GROUP_BTN_QTIP,§;#^§.§[!K§,§+"'§.§3%y§);
            _loc8_.§[!u§(Social.§8%K§);
            §8"%§.§#m§.§&#t§(_loc8_,§!"X§.§;%;§);
            _loc9_ = 0;
            _loc10_ = _loc2_.numChildren;
            while(_loc9_ < _loc10_)
            {
               _loc2_.getChildAt(_loc9_).visible = false;
               _loc9_++;
            }
            _loc8_.setVisible(true);
            this.§ %6§ = new § %p§();
            addChild(this.§ %6§);
            this.§ %6§.y = _loc2_.y + _loc2_.height;
            this.§ %6§.x = _loc2_.x - this.§ %6§.width * 0.5 + 10;
            §8"%§.§#m§.§&#t§(this.§ %6§,§!"X§.§;%;§);
         }
         else
         {
            _loc2_.visible = false;
         }
         this.dailyTasksBtn = §!&5§.§7#[§(getChildByName("dailyTasksBtnCont.dailyTasksBtn"));
         this.§5"!§ = §'$a§("dailyTasksBtnCont.exclamation");
         this.§5"!§.mouseEnabled = false;
         this.§]&6§ = §'$a§("dailyTasksBtnCont.check");
         this.§]&6§.mouseEnabled = false;
         this.§6$ § = this.dailyTasksBtn.x - this.§5"!§.x;
         this.§;"Q§ = this.dailyTasksBtn.x - this.§]&6§.x;
         this.dailyTasksBtn.§[!u§(this.§0&7§);
         this.dailyTasksBtn.§]%$§(§`!v§.§3"[§);
         this.dailyTasksBtn.setQtip(§0$N§.DAILY_TASKS,§;#^§.§[!K§,§+"'§.§3%y§);
         if(!_loc3_)
         {
            this.dailyTasksBtn.x = _loc2_.x - 60;
            this.§5"!§.x = this.dailyTasksBtn.x + this.§6$ §;
            this.§]&6§.x = this.dailyTasksBtn.x + this.§;"Q§;
         }
         §8"%§.§#m§.§&#t§(this.dailyTasksBtn,§!"X§.§;%;§);
         §8"%§.§#m§.§&#t§(this.§]&6§,§!"X§.§;%;§);
         §8"%§.§#m§.§&#t§(this.§5"!§,§!"X§.§;%;§);
         this.dailyTasksBtn.setVisible(§,! §.§4"!§());
         this.promocodeBtn = §!&5§.§7#[§(getChildByName("promocodeBtn"));
         this.promocodeBtn.§[!u§(this.§&#f§);
         this.promocodeBtn.§]%$§(§`!v§.§3"[§);
         this.promocodeBtn.setQtip(§0$N§.PROMOCODE,§;#^§.§[!K§,§+"'§.§3%y§);
         if(!_loc3_)
         {
            this.promocodeBtn.x = _loc2_.x - 60;
         }
         §8"%§.§#m§.§&#t§(this.promocodeBtn,§!"X§.§;%;§);
         this.newsBtn = §!&5§.§7#[§(getChildByName("newsBtn"));
         this.newsBtn.setVisible(Social.§%#-§());
         this.newsBtn.§[!u§(this.§2$Z§);
         this.newsBtn.§00§(null);
         this.newsBtn.§]%$§(§`!v§.§3"[§);
         this.newsBtn.setQtip(§0$N§.NEWS_QTIP,§;#^§.§[!K§,§+"'§.§3%y§);
         if(!_loc3_)
         {
            this.newsBtn.x = _loc2_.x - 20;
         }
         §8"%§.§#m§.§&#t§(this.newsBtn,§!"X§.§;%;§);
         this.rangBtn = §!&5§.§7#[§(getChildByName("rangBtn"));
         this.rangBtn.§[!u§(this.§7"`§);
         this.rangBtn.§00§(null);
         this.rangBtn.§]%$§(§`!v§.§3"[§);
         this.rangBtn.setQtip(§0$N§.YOUR_RANK_TITLE,§;#^§.§[!K§,§+"'§.§3%y§);
         §8"%§.§#m§.§&#t§(this.rangBtn,§!"X§.§;%;§);
         this.rangRubyBtn = §!&5§.§7#[§(getChildByName("rangRubyBtn"));
         this.rangRubyBtn.§[!u§(this.§7"`§);
         this.rangRubyBtn.§00§(null);
         this.rangRubyBtn.§]%$§(§`!v§.§3"[§);
         this.rangRubyBtn.setQtip(§0$N§.YOUR_RANK_TITLE,§;#^§.§[!K§,§+"'§.§3%y§);
         §8"%§.§#m§.§&#t§(this.rangRubyBtn,§!"X§.§;%;§);
         this.§3M§ = new §+7§(getChildByName("friendList") as MovieClip);
         if(Social.settings.§1"@§())
         {
            this.§9[§ = new §=&G§();
         }
         var _loc4_:int = §8"%§.§^%W§.getCorrectResolution2().§'$#§();
         var _loc5_:int = §8"%§.§^%W§.getCorrectResolution2().§@%<§();
         _loc6_ = 12;
         var _loc7_:int = 1;
         this.§&&&§ = new § ^§(§'$a§("friendsBtn"),this.§3M§);
         this.§&&&§.x = _loc5_ - this.§&&&§.width - _loc6_;
         this.§&&&§.y = _loc4_ - _loc6_ - this.§&&&§.height;
         §8"%§.§#m§.§&#t§(this.§&&&§,§!"X§.§`"V§);
         this.§9$Q§ = §!&5§.§7#[§(getChildByName("btnFriendsControl"));
         this.§9$Q§.addEventListener(MouseEvent.CLICK,§[h§);
         this.§9$Q§.setQtip(§0$N§.SEARCH_FRIEND_BTN,§;#^§.§4!f§,§+"'§.§3%y§);
         this.§9$Q§.x = _loc6_;
         this.§9$Q§.y = _loc4_ - _loc6_ - this.§9$Q§.height;
         §8"%§.§#m§.§&#t§(this.§9$Q§,§!"X§.§[&I§);
         this.§ $`§ = new § #a§(getChildByName("fsOnBtn"),getChildByName("fsOffBtn"),§+"'§.§3%y§);
         this.§ $`§.addEventListener(MouseEvent.CLICK,§-#a§);
         this.§ $`§.§6$i§();
         this.§ $`§.x = _loc5_ - this.§ $`§.width - _loc6_;
         this.§ $`§.y = this.§9$Q§.y - this.§9$Q§.height - _loc7_;
         §8"%§.§#m§.§&#t§(this.§ $`§,§!"X§.§`"V§);
         this.settingsBtn = §!&5§.§7#[§(getChildByName("settingsBtn"));
         this.settingsBtn.§[!u§(§8"%§.§&S§.§4"[§);
         this.settingsBtn.setQtip(§0$N§.SETTINGS_QTIP,§;#^§.LEFT,§+"'§.§3%y§);
         this.settingsBtn.x = _loc5_ - this.settingsBtn.width - _loc6_;
         this.settingsBtn.y = this.§ $`§.y - this.§ $`§.height - _loc7_;
         §8"%§.§#m§.§&#t§(this.settingsBtn,§!"X§.§`"V§);
         this.dndBtn = §!&5§.§;#z§(getChildByName("dndBtn"));
         this.dndBtn.§[!u§(this.§5%3§);
         this.dndBtn.x = _loc5_ - this.dndBtn.width - _loc6_;
         this.dndBtn.y = this.settingsBtn.y - this.settingsBtn.height - _loc7_;
         §8"%§.§#m§.§&#t§(this.dndBtn,§!"X§.§`"V§);
         this.§2%t§ = new ConnectIcon(§%%w§.§7F§,this.dndBtn.width,§;#^§.LEFT,§+"'§.§3%y§);
         addChild(this.§2%t§);
         this.§2%t§.x = _loc5_ - this.§2%t§.width - _loc6_;
         this.§2%t§.y = this.dndBtn.y - this.dndBtn.height - _loc6_;
         §8"%§.§#m§.§&#t§(this.§2%t§,§!"X§.§`"V§);
         this.§0!z§ = §;2§.getInstance(param1,this);
      }
      
      private static function §[h§(param1:MouseEvent) : void
      {
         §8"%§.§^$H§.showMenu();
      }
      
      private static function §-#a§(param1:MouseEvent) : void
      {
         §8"%§.§^%W§.§5$q§();
      }
      
      private function §5%3§(param1:Event = null) : void
      {
         Application.§1"i§(this.dndBtn.isPressed());
         this.§@[§();
      }
      
      private function §@[§() : void
      {
         if(Application.isUserIgnoring())
         {
            this.dndBtn.setQtip(§0$N§.PVP_IGNORE_MODE_ON,§;#^§.LEFT,§+"'§.§3%y§);
         }
         else
         {
            this.dndBtn.setQtip(§0$N§.PVP_IGNORE_MODE_OFF,§;#^§.LEFT,§+"'§.§3%y§);
         }
      }
      
      public function §>$W§(param1:Event = null) : void
      {
         this.dndBtn.setPressed(!this.dndBtn.isPressed());
         this.§5%3§();
      }
      
      public function §;"K§(param1:MouseEvent = null) : void
      {
         this.§9[§.show();
      }
      
      public function §7"`§(param1:MouseEvent = null) : void
      {
         if(!this.§;#0§)
         {
            this.§;#0§ = new RatingWindow();
         }
         this.§;#0§.show();
         this.§;#0§.§6!<§();
      }
      
      private function §2$Z§(param1:MouseEvent) : void
      {
         Social.§9Q§.§%%+§().show();
      }
      
      private function §&#f§(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         try
         {
            §8"%§.§[f§.§>%9§(function(param1:§0#G§):void
            {
               var response:§0#G§ = param1;
               if(response.isMember)
               {
                  new §78§().show();
               }
               else
               {
                  §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.REFFERAL_BONUS_REQUIRED_TEXT,§,#W§.§7"d§,function():void
                  {
                     navigateToURL(new URLRequest(§8"%§.§[f§.§<#d§()),"_blank");
                  });
               }
            });
         }
         catch(e:Error)
         {
         }
      }
      
      private function §0&7§(param1:MouseEvent) : void
      {
         if(§,! §.§+!I§())
         {
            §8"%§.§8!E§.§=!;§();
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.DAILY_TASKS_ACCESS);
         }
      }
      
      public function §&#"§() : void
      {
         if(isShown())
         {
            this.§&&&§.§'$9§();
         }
      }
      
      public function update() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = Application.userProfile.§+X§();
         var _loc2_:Boolean = _loc1_ == 0;
         this.rangBtn.setVisible(!_loc2_);
         this.rangRubyBtn.setVisible(_loc2_);
         if(!_loc2_)
         {
            §4"0§.§>&F§(this.rangBtn.simpleButton,§"-§.§6"j§,_loc1_.toString());
         }
         this.dndBtn.setPressed(Application.isUserIgnoring());
         this.§@[§();
         if(this.§ %6§)
         {
            this.§ %6§.update();
         }
         this.dailyTasksBtn.setVisible(§,! §.§4"!§());
         var _loc3_:§&N§ = §8"%§.§8!E§.rec;
         this.§5"!§.visible = Boolean(_loc3_) && (_loc3_.§%&A§() || _loc3_.§?!S§());
         this.§]&6§.visible = Boolean(_loc3_) && !this.§5"!§.visible && _loc3_.§!&2§();
      }
   }
}

