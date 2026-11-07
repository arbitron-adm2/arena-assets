package ru.pragmatix.wormix.gui.house.craft
{
   import § !8§.§`!d§;
   import § #g§.§##o§;
   import § #m§.§;#^§;
   import § %?§.§;!T§;
   import § &5§.§=#P§;
   import §!!i§.§'"m§;
   import §!!i§.§@&&§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §##j§.§'"%§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§[0§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.UpgradeEvent;
   import §0&F§.§`"^§;
   import §2"L§.§,'§;
   import §2"v§.§#§;
   import §2"v§.§%&"§;
   import §2#H§.§>#M§;
   import §2#H§.§^!J§;
   import §2#x§.*;
   import §2$]§.*;
   import §2o§.§]#@§;
   import §4!!§.§!%n§;
   import §4!x§.§@& §;
   import §4&F§.*;
   import §4^§.§'!u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.§'"Y§;
   import §65§.§`"C§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §;"9§.*;
   import §<"L§.§##-§;
   import §<%E§.§%#z§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=#g§.§!"X§;
   import §=&!§.§ "^§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §["3§.§3""§;
   import §[$P§.§+H§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §[%§.Dragon;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class CraftRoom extends §@& § implements §'"m§
   {
      
      public static const §19§:String = "Craft";
      
      private const §"%C§:String = "craft_room";
      
      private var §1"D§:§##6§;
      
      private var § #p§:§%&"§;
      
      private var §,§:§3""§;
      
      private var §'!C§:§&#,§;
      
      private var workPanel:MovieClip;
      
      private var chooseWeaponMenu:MovieClip;
      
      private var reagentsPanel:§##o§;
      
      public function CraftRoom()
      {
         id = §19§;
         super(null);
      }
      
      private static function §'%<§() : Array
      {
         var _loc2_:§#$s§ = null;
         var _loc3_:uint = 0;
         var _loc4_:§;#_§ = null;
         var _loc5_:uint = 0;
         var _loc6_:§;#_§ = null;
         var _loc7_:uint = 0;
         var _loc1_:Array = [];
         for each(_loc2_ in §1@§.§""!§())
         {
            if(_loc2_.prevUpgradeId < §'"Y§.§;9§)
            {
               _loc4_ = §<$c§.§ !=§(_loc2_.prevUpgradeId);
               if(_loc1_.indexOf(_loc4_) == -1)
               {
                  _loc1_.push(_loc4_);
               }
            }
         }
         _loc3_ = _loc1_.length / 2;
         while(_loc3_ > 0)
         {
            _loc5_ = _loc3_;
            while(_loc5_ < _loc1_.length)
            {
               _loc6_ = _loc1_[_loc5_];
               _loc7_ = _loc5_;
               while(_loc7_ >= _loc3_ && _loc1_[_loc7_ - _loc3_].getRealPrice() > _loc6_.getRealPrice())
               {
                  _loc1_[_loc7_] = _loc1_[_loc7_ - _loc3_];
                  _loc7_ -= _loc3_;
               }
               _loc1_[_loc7_] = _loc6_;
               _loc5_++;
            }
            _loc3_ = Math.round(_loc3_ / 2.2);
         }
         return _loc1_;
      }
      
      private static function §]#L§() : Array
      {
         var _loc4_:CraftedEquipFamily = null;
         var _loc1_:Array = [];
         var _loc2_:§`!d§ = §@&&§.getProfile().getRace();
         var _loc3_:Object = §<$c§.§1$E§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§-!T§)
            {
               _loc1_.push(_loc4_);
            }
         }
         return _loc1_;
      }
      
      public function §2D§() : String
      {
         return this.§"%C§;
      }
      
      public function §`V§() : String
      {
         return §+"'§.§@%s§;
      }
      
      public function getId() : String
      {
         return §19§;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.chooseWeaponMenu = param1["chooseWeaponMenu"] as MovieClip;
         this.workPanel = param1["workPanel"] as MovieClip;
         this.§ #p§ = new §%&"§();
         this.§ #p§.x = this.workPanel.x;
         this.§ #p§.y = this.workPanel.y;
         this.§ #p§.visible = false;
         this.§ #p§.addEventListener(Event.CLOSE,this.§3"n§);
         §?!C§(this.§ #p§.getContainer());
         this.§1"D§ = new §##6§();
         this.§1"D§.addEventListener(UpgradeEvent.NAME,this.§ $?§);
         this.§1"D§.addEventListener(§]#@§.BUY_ITEM,this.§8%b§);
         §?!C§(this.§1"D§);
         this.§1"D§.x = -250;
         this.§,§ = new §3""§();
         this.§,§.x = this.workPanel.x;
         this.§,§.y = this.workPanel.y;
         this.§,§.visible = false;
         §?!C§(this.§,§.getContainer());
         this.§'!C§ = new §&#,§(this.chooseWeaponMenu,param1["chooseModeTabs"]);
         this.§'!C§.§-#4§(§'%<§());
         this.§'!C§.§-%S§(§]#L§());
         this.§'!C§.init();
         this.§'!C§.addEventListener(SelectObjectEvent.NAME,this.§;"C§);
         this.§'!C§.addEventListener(§;!T§.§8"R§,this.§8@§);
         this.§'!C§.addEventListener(§;!T§.§;!g§,this.§31§);
         this.§'!C§.addEventListener(§;!T§.§`%y§,this.§'"?§);
         this.§'!C§.update();
         this.reagentsPanel = new §##o§(param1["reagentsPanel"] as MovieClip);
         §]%N§(this.§ #p§.getContainer(),param1["titleContainer"]);
         §]%N§(this.§,§.getContainer(),param1["titleContainer"]);
         §&$9§.§>&F§(param1["titleContainer"]["title"],§"-§.§+$m§,§0$N§.CRAFT_QTIP);
         §8"%§.§#m§.§&#t§(param1,§!"X§.§4&;§);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         if(this.§'!C§.§;"?§() == §=%G§.§;!g§)
         {
            this.§3"n§(null);
         }
         this.§'!C§.§-#4§(§'%<§());
         this.§'!C§.§-%S§(§]#L§());
         _loc1_ = §@&&§.isMe();
         var _loc2_:Boolean = !_loc1_;
         this.§'!C§.disableCraft(_loc2_);
         this.§'!C§.§#"#§().setDisabled(!_loc1_);
         if(this.§'!C§.§;"?§() == §=%G§.§`%y§ && _loc1_)
         {
            this.§'!C§.§,!4§();
         }
         else if(this.§'!C§.§;"?§() == §=%G§.§8"R§ && !_loc2_)
         {
            this.§'!C§.§?$0§();
         }
         else
         {
            this.§'!C§.§'%§();
         }
      }
      
      private function §31§(param1:§;!T§) : void
      {
         this.§'!C§.§"#a§(§=%G§.§;!g§);
         this.§1"D§.visible = true;
         this.§,§.visible = false;
         this.chooseWeaponMenu.visible = true;
         this.reagentsPanel.getContainer().visible = false;
      }
      
      private function §8@§(param1:§;!T§) : void
      {
         if(§@&&§.isMe())
         {
            this.§'!C§.§"#a§(§=%G§.§8"R§);
            this.§ #p§.visible = false;
            this.§1"D§.visible = false;
            this.§,§.visible = true;
            this.chooseWeaponMenu.visible = true;
            this.reagentsPanel.getContainer().visible = false;
         }
      }
      
      private function §'"?§(param1:§;!T§) : void
      {
         this.§'!C§.§"#a§(§=%G§.§`%y§);
         var _loc2_:Array = §@&&§.getProfile().§2!>§().§,!V§();
         var _loc3_:* = int(_loc2_.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].getCount() <= 0)
            {
               _loc2_.splice(_loc3_,1);
            }
            _loc3_--;
         }
         this.reagentsPanel.setData(_loc2_);
         this.§ #p§.visible = false;
         this.§1"D§.visible = false;
         this.§,§.visible = false;
         this.chooseWeaponMenu.visible = false;
         this.reagentsPanel.getContainer().visible = true;
         this.reagentsPanel.activate();
      }
      
      private function §;"C§(param1:SelectObjectEvent) : void
      {
         if(this.§'!C§.§;"?§() == §=%G§.§;!g§)
         {
            this.§;"r§(param1.object);
         }
         else
         {
            this.§4"8§(param1.object);
         }
      }
      
      private function §;"r§(param1:Object) : void
      {
         this.§1"D§.§,$s§(int(param1));
         if(this.§ #p§.visible == true)
         {
            this.§3"n§(null);
         }
         else
         {
            this.§1"D§.update();
         }
         this.§1"D§.x = this.workPanel.x + (this.workPanel.width - this.§1"D§.width) / 2;
         this.§1"D§.y = this.workPanel.y + (this.workPanel.height - this.§1"D§.height) / 2;
      }
      
      private function §4"8§(param1:Object) : void
      {
         this.§,§.§5#J§(int(param1));
         this.§,§.update();
      }
      
      private function § $?§(param1:UpgradeEvent) : void
      {
         this.§ #p§.update(param1.recipeRecord,param1.assemble);
         this.§ #p§.visible = true;
         this.§1"D§.visible = false;
      }
      
      private function §3"n§(param1:Event) : void
      {
         if(this.§'!C§.§6#4§() is §;#_§ && !§;#_§(this.§'!C§.§6#4§()).isComplex() && !§;#_§(this.§'!C§.§6#4§()).getInfinite())
         {
            this.§ #p§.visible = true;
            this.§1"D§.visible = false;
         }
         else
         {
            this.§ #p§.visible = false;
            this.§1"D§.visible = true;
         }
         this.§1"D§.update();
      }
      
      private function §8%b§(param1:Event) : void
      {
         this.§'!C§.update();
      }
   }
}

