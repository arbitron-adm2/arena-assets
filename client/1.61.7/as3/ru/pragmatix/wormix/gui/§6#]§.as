package ru.pragmatix.wormix.gui
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §#$e§.§!a§;
   import §#5§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §%# §.§ !t§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §&#h§.*;
   import §&$Y§.*;
   import §&&6§.*;
   import §&x§.*;
   import §'$j§.QuestGiftItem;
   import §'%[§.§ i§;
   import §'%[§.§#&B§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §,#A§.§^"T§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1&-§.§ &=§;
   import §2!-§.DamageEvent;
   import §2!-§.WaterLevelChangedEvent;
   import §2"L§.§##l§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#W§.PvpChestBox;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3"_§.§?#w§;
   import §3#a§.§<#_§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4^§.§'!u§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §8$Z§.*;
   import §9"^§.UserParamsMenu;
   import §9%W§.§!"G§;
   import §;!Z§.*;
   import §<!W§.§;#A§;
   import §<$q§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§9#n§;
   import §="z§.*;
   import §=$#§.§ b§;
   import §=&!§.§]$d§;
   import §=1§.*;
   import §=7§.§?%4§;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<,§;
   import §@!i§.§@$&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[%§.*;
   import §]#[§.§2%o§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§5$1§;
   import §`v§.§2&H§;
   import config.achievements.§!$L§;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.setTimeout;
   import org.gestouch.core.ITouchHitTester;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.EndBattle;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.client.SetBackpackConf;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6#]§ extends §1#g§ implements §^c§
   {
      
      private var §1#N§:§?%>§;
      
      private var §7$>§:§?%>§;
      
      private var §+";§:§?%>§;
      
      private var §5$0§:MovieClip;
      
      private var §&"[§:MovieClip;
      
      private var §3"4§:MovieClip;
      
      private var §@#=§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var §]! §:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var §`#]§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var §5#<§:§^"T§;
      
      private var §]!T§:§?%>§;
      
      private var §2#9§:§?%>§;
      
      private var background:MovieClip;
      
      private var §'9§:MainInterface;
      
      public function §6#]§()
      {
         super(§6#A§.§!&6§(§+"'§.§`%a§));
         this.background = §'$a§("mainMenuBg");
         this.background.cacheAsBitmap = true;
         this.§1#N§ = §!&5§.§7#[§(getChildByName("mainMenuBg.arena"));
         this.§1#N§.§[!u§(this.§2"+§);
         this.§1#N§.§00§(null);
         this.§1#N§.§]%$§(§`!v§.§3"[§);
         this.§+";§ = §!&5§.§7#[§(getChildByName("mainMenuBg.shop"));
         this.§+";§.§[!u§(§`#-§);
         this.§+";§.§00§(null);
         this.§+";§.§]%$§(§`!v§.§3"[§);
         this.§7$>§ = §!&5§.§7#[§(getChildByName("mainMenuBg.home"));
         this.§7$>§.§00§(null);
         this.§7$>§.§]%$§(§`!v§.§3"[§);
         var _loc1_:DisplayObjectContainer = §'$a§("mainMenuBg.giftBtnContainer");
         var _loc2_:String = §0$N§.CHRISTMAS_BONUS_TITLE;
         this.§]!T§ = §!&5§.§7#[§(_loc1_.getChildByName("enabledBtn"));
         this.§]!T§.setQtip(_loc2_,§;#^§.DEFAULT,§+"'§.§3%y§);
         this.§]!T§.§[!u§(this.§7">§);
         this.§2#9§ = §!&5§.§7#[§(_loc1_.getChildByName("disabledBtn"));
         this.§2#9§.setQtip(_loc2_,§;#^§.DEFAULT,§+"'§.§3%y§);
         this.§2#9§.§[!u§(this.§7">§);
         this.§5$0§ = getChildByName("mainMenuBg.arena.but.arena") as MovieClip;
         this.§&"[§ = getChildByName("mainMenuBg.home.but.home") as MovieClip;
         this.§3"4§ = getChildByName("mainMenuBg.shop.but.shop") as MovieClip;
         this.§7t§();
         this.§3%8§();
         this.§6#d§();
         this.§-#A§();
         this.§'9§ = new MainInterface(this);
         addChild(this.§'9§);
      }
      
      private static function §`#-§(param1:Event) : void
      {
         §8"%§.§8"!§.showShopMenu();
      }
      
      private static function §0#U§() : void
      {
         §8"%§.§%w§.§^G§();
      }
      
      private function §-#A§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = this.background.getChildByName("volcanos") as MovieClip;
         if(_loc1_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_.numChildren)
            {
               _loc3_ = MovieClip(_loc1_.getChildAt(_loc2_));
               this.§@#=§.push(_loc3_);
               _loc2_++;
            }
         }
      }
      
      private function §7t§() : void
      {
         var i:int;
         var winter:DisplayObject;
         var spring:DisplayObject;
         var mc:MovieClip = null;
         var hider:MovieClip = null;
         if(§0#2§.§=$n§())
         {
            setTimeout(function():void
            {
               if(§8"%§.§&S§.§5#8§())
               {
                  §5#<§ = new §^"T§();
                  §?!C§(§5#<§);
               }
            },1000);
         }
         i = 0;
         do
         {
            mc = MovieClip(this.background.getChildByName("christDecor" + i));
            if(mc)
            {
               this.§]! §.push(mc);
               hider = MovieClip(this.background.getChildByName("christDecor" + i + "_hider"));
               if(hider)
               {
                  this.§`#]§.push(hider);
               }
            }
            i++;
         }
         while(mc);
         if(this.§]! §.length)
         {
            if(§0#2§.§=$n§())
            {
               for each(mc in this.§]! §)
               {
                  mc.cacheAsBitmap = true;
                  mc.mouseChildren = mc.mouseEnabled = false;
               }
               for each(mc in this.§`#]§)
               {
                  mc.cacheAsBitmap = true;
                  mc.mouseChildren = mc.mouseEnabled = false;
               }
            }
            else
            {
               for each(mc in this.§]! §)
               {
                  this.background.removeChild(mc);
               }
               for each(mc in this.§`#]§)
               {
                  this.background.removeChild(mc);
               }
            }
         }
         winter = this.background.getChildByName("winter");
         if(winter)
         {
            winter.visible = §0#2§.§0%Y§();
         }
         spring = this.background.getChildByName("spring");
         if(spring)
         {
            spring.visible = §0#2§.§0%Y§() || §0#2§.§ #§();
         }
      }
      
      private function §3%8§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            _loc2_ = §'$a§("mainMenuBg.cat" + _loc3_);
            if(_loc2_)
            {
               _loc1_.push(_loc2_);
               _loc2_.stop();
               MovieClip(_loc2_.getChildByName("body")).stop();
               _loc2_.visible = false;
            }
            _loc3_++;
         }
         if(_loc1_.length)
         {
            _loc2_ = _loc1_[Math.floor(Math.random() * _loc1_.length)];
            if(_loc2_)
            {
               _loc2_.play();
               MovieClip(_loc2_.getChildByName("body")).play();
               _loc2_.visible = true;
            }
         }
      }
      
      private function §6#d§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:§2"B§ = null;
         this.§!#F§(§2"B§.list,false);
         var _loc1_:§2"B§ = Social.settings.§@"G§();
         if(_loc1_ == §2"B§.UA)
         {
            _loc1_ = §2"B§.RU;
         }
         var _loc2_:String = _loc1_.§%F§();
         if(this.§ x§(_loc2_))
         {
            this.§!#F§(new <§2"B§>[_loc1_],true);
         }
         else
         {
            _loc3_ = Social.settings.§##i§();
            for each(_loc4_ in _loc3_)
            {
               if(this.§ x§(_loc4_.§%F§()))
               {
                  this.§!#F§(new <§2"B§>[_loc4_],true);
                  break;
               }
            }
         }
      }
      
      public function §>$W§(param1:Event = null) : void
      {
         this.§'9§.§>$W§();
      }
      
      private function §7">§(param1:Event) : void
      {
         if(Application.userProfile.§2!>§().§ %n§(§#"B§.§;#%§) == 0)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ATTENTION,§0$N§.NO_CHRISTMAS_GIFTS);
         }
         else
         {
            this.§]!T§.setDisabled(true);
            §8"%§.§9"<§.§0$!§(this.§2"J§);
         }
      }
      
      private function §2"J§(param1:OpenChestResult) : void
      {
         var _loc2_:§ !t§ = null;
         this.§]!T§.setDisabled(false);
         if(param1.result == ShopResult.SUCCESS)
         {
            _loc2_ = new § !t§(param1);
            _loc2_.show();
         }
         this.§<&<§();
      }
      
      public function §;"K§(param1:MouseEvent) : void
      {
         this.§'9§.§;"K§();
      }
      
      private function §!#F§(param1:Vector.<§2"B§>, param2:Boolean) : void
      {
         var _loc3_:§2"B§ = null;
         for each(_loc3_ in param1)
         {
            if(this.§ x§(_loc3_.§%F§()))
            {
               this.§5$0§.getChildByName("title_" + _loc3_.§%F§()).visible = param2;
               this.§&"[§.getChildByName("title_" + _loc3_.§%F§()).visible = param2;
               this.§3"4§.getChildByName("title_" + _loc3_.§%F§()).visible = param2;
            }
         }
      }
      
      private function § x§(param1:String) : Boolean
      {
         return Boolean(this.§5$0§.getChildByName("title_" + param1)) && Boolean(this.§&"[§.getChildByName("title_" + param1)) && Boolean(this.§3"4§.getChildByName("title_" + param1));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<&<§();
         if(!§8"%§.context.§]"&§().isLocal())
         {
            §8"%§.context.§2!k§()["showBanner"]();
         }
         this.§'9§.update();
      }
      
      private function §<&<§() : void
      {
         var _loc1_:Boolean = Application.userProfile.getLevel() >= §,! §.§5!`§;
         if(Application.userProfile.§2!>§().§ %n§(§#"B§.§;#%§) == 0)
         {
            this.§2#9§.setVisible(_loc1_);
            this.§]!T§.setVisible(false);
         }
         else
         {
            this.§2#9§.setVisible(false);
            this.§]!T§.setVisible(_loc1_);
         }
      }
      
      public function §7"`§(param1:MouseEvent) : void
      {
         this.§'9§.§7"`§();
      }
      
      public function §8!F§(param1:MouseEvent) : void
      {
         var _loc2_:§@$&§ = §@$&§.§=$S§(Application.userProfile.§=u§());
         if(_loc2_.§9#V§ < §@$&§.getMaxLevel())
         {
            UserParamsMenu.§=%<§(_loc2_);
         }
         else
         {
            §,#W§.§[#r§("Невероятно!","Вы достигли максимального уровня реакции!");
         }
      }
      
      public function §6#+§() : DisplayObject
      {
         return getChildByName("mainMenuBg");
      }
      
      private function §2"+§(param1:Event) : void
      {
         var _loc3_:§,#W§ = null;
         var _loc2_:int = §4! §.§ $O§(Application.userProfile);
         if(_loc2_ > 0 && Application.userProfile.getLevel() >= §,! §.§3"r§)
         {
            _loc3_ = §,#W§.§=$"§(§+"'§.§`#G§,§0$N§.TITLE_ATTENTION,§0$N§.ATTRIBUTE_BALLS_ATTENTION,§,#W§.§7"d§,this.§1"1§,§0#U§);
            _loc3_.§##b§(§0$N§.BUTTON_BALLS);
            _loc3_.§'"w§(§0$N§.BUTTON_ARENA);
            _loc3_.§="Q§(§`!v§.§4#7§);
            _loc3_.show();
         }
         else
         {
            §8"%§.§%w§.§^G§();
         }
      }
      
      private function §1"1§() : void
      {
         var _loc1_:UserParamsMenu = Application.§5!>§.§ &;§().§^#m§.§'"t§;
         _loc1_.show();
      }
      
      public function §&#"§() : void
      {
         this.§'9§.§&#"§();
      }
      
      public function §@&<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
      }
      
      public function playAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(isShown())
         {
            if(this.§5#<§)
            {
               this.§5#<§.playAnimations();
            }
            for each(_loc1_ in this.§@#=§)
            {
               _loc1_.play();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§5#<§)
         {
            this.§5#<§.stopAnimations();
         }
         for each(_loc1_ in this.§@#=§)
         {
            _loc1_.gotoAndStop(1);
         }
      }
      
      public function get §]%V§() : §?%>§
      {
         return this.§7$>§;
      }
      
      public function get mainInterface() : MainInterface
      {
         return this.§'9§;
      }
   }
}

