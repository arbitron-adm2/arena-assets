package §3%J§
{
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%E§.§<#l§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+$=§.§9"%§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §-&5§.§ &8§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2"$§.*;
   import §2#H§.§>#M§;
   import §2#i§.§+%z§;
   import §4!x§.§@& §;
   import §4#`§.§+!l§;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §6$0§.§=!N§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<!W§.§1N§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §=7§.§?%4§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§&#Z§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;&<§ extends §@& §
   {
      
      public static const LOG:§&`§ = new §&`§(§;&<§);
      
      private var buyBtn:§?%>§;
      
      private var §0%o§:§9#x§;
      
      private var info:§ &8§;
      
      public function §;&<§()
      {
         super(null);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         var window:§@& § = null;
         var showModal:Boolean = param1;
         window = this;
         var fn:Function = function():void
         {
            Application.setUserBusy(true);
            if(!window.getContainer())
            {
               §[&G§.§8"&§.show();
               §6#A§.§0M§("specialDeal",§1%"§.§]$<§(§[Y§,window,[window,window.show]),§=%m§);
               LOG.info(" --> OFFER WINDOW LOADING");
               return;
            }
            LOG.info(" --> OFFER WINDOW SHOW");
            §"#X§();
            if(!§<#l§.§7"&§ || §8"%§.§8"!§.§0!c§().length == 0 || !§0%o§)
            {
               window.getContainer().visible = false;
               window.hide();
            }
         };
         if(§8"%§.§8"!§.§0!c§().length == 0)
         {
            §1%"§.delay(fn,this,500);
         }
         else
         {
            fn();
         }
      }
      
      public function §8!<§(param1:§9#x§) : void
      {
         this.§0%o§ = param1;
         this.show();
      }
      
      private function §"#X§() : void
      {
         super.show();
      }
      
      private function §[Y§(param1:§@& §, param2:Function = null) : void
      {
         param1.§@"o§(§6#A§.§!&6§(§+"'§.§5$S§));
         §[&G§.§8"&§.hide();
         if(param2 != null)
         {
            param2();
         }
      }
      
      private function §=%m§(param1:§9"%§) : void
      {
         §[&G§.§8"&§.hide();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc3_:String = null;
         var _loc14_:DisplayObject = null;
         var _loc15_:§&!e§ = null;
         super.§@"o§(param1);
         id = "StarterBundleOffer";
         if(!this.§0%o§)
         {
            this.§0%o§ = §8"%§.§8"!§.§#"w§();
         }
         if(Boolean(this.§0%o§) && this.§0%o§.§,#Q§().length > 6)
         {
            this.§0%o§ = null;
         }
         if(!this.§0%o§)
         {
            return;
         }
         §>!-§.setText(§0$N§.MORE_BUNDLES,§"-§.§+$m§);
         this.buyBtn = §!&5§.§7#[§(getChildByName("buyBtn"));
         var _loc2_:String = §0%§.format(§0$N§.BUNDLE_BTN,{
            "count":this.§0%o§.§&V§(),
            "currency":this.§0%o§.§2$[§()
         });
         this.buyBtn.setText(_loc2_,§"-§.§+$m§);
         this.buyBtn.§[!u§(this.§`&1§);
         §=%1§ = §5!r§.§<![§;
         _loc3_ = Social.settings.§@"G§().toString();
         var _loc4_:Boolean = _loc3_ == "ru" || _loc3_ == "ua";
         var _loc5_:MovieClip = §'$a§("titleRU");
         var _loc6_:MovieClip = §'$a§("titleEN");
         if(_loc4_)
         {
            if(_loc6_)
            {
               _loc6_.visible = false;
            }
         }
         else if(_loc5_)
         {
            _loc5_.visible = false;
         }
         var _loc7_:TextField = §'%s§("saleLabel.saleDelta");
         if(this.§0%o§.§,!H§())
         {
            §&$9§.§>&F§(_loc7_,§"-§.§6"j§,"-" + this.§0%o§.§,!H§() + "%");
         }
         else
         {
            getChildByName("saleLabel").visible = false;
         }
         var _loc8_:MovieClip = §6#A§.§!&6§(§+"'§.§'#2§) as MovieClip;
         var _loc9_:String = §8$5§.§^&"§[this.§0%o§.getType()];
         var _loc10_:int = 0;
         var _loc11_:int = _loc8_.numChildren;
         while(_loc10_ < _loc11_)
         {
            _loc14_ = _loc8_.getChildByName(§8$5§.§^&"§[_loc10_]);
            MovieClip(SimpleButton(_loc14_).upState).stop();
            if(_loc9_ != _loc14_.name)
            {
               _loc8_.removeChild(_loc14_);
            }
            else if(this.§0%o§.§%#+§())
            {
               _loc15_ = §<$c§.§8&E§(this.§0%o§.§%#+§() + 1,Application.userProfile.getRace());
               §4"0§.§"$L§(SimpleButton(_loc14_),_loc15_);
            }
            _loc10_++;
         }
         §?!C§(_loc8_);
         var _loc12_:MovieClip = §'$a§("itemBack");
         _loc8_.x = _loc12_.x + _loc12_.width * 0.5 - _loc8_.width * 0.5;
         _loc8_.y = _loc12_.y + _loc12_.height * 0.5 - _loc8_.height * 0.5;
         this.info = new § &8§(getContainer(),false);
         this.info.setItem(this.§0%o§);
         this.info.§^&B§().requirements.htmlText = this.§0%o§.§0!"§ ? §0$N§.EQUIP_STACKING_NOTIFY : "";
         var _loc13_:TextField = §'%s§("description");
         §&$9§.§>&F§(_loc13_,§"-§.§+$m§,this.§0%o§.§]G§());
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         §8"%§.§8"!§.§2$X§();
      }
      
      private function §`&1§(param1:Event = null) : void
      {
         var _loc2_:uint = 0;
         _loc2_ = uint(this.§0%o§.getCode());
         var _loc3_:§1e§ = new §1e§(_loc2_,0,this.§0%o§.§&V§(),§+$A§.REAL,§#"l§.BUNDLE.name);
         Social.§-%=§.callPayController(_loc3_);
         this.hide();
      }
      
      override public function hide() : void
      {
         Application.setUserBusy(false);
         super.hide();
         this.§0%o§ = null;
      }
   }
}

