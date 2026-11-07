package ru.pragmatix.wormix.gui.window
{
   import § !8§.§`!d§;
   import § #9§.§9j§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.*;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%E§.§2§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §,"v§.§9%d§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1"r§.§4!u§;
   import §1#p§.*;
   import §2!-§.§'5§;
   import §2"L§.§,'§;
   import §2#H§.§3$p§;
   import §2#s§.*;
   import §2#x§.*;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §4'§.§"@§;
   import §4f§.§-&§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5"J§.*;
   import §6"'§.§9$Z§;
   import §6%2§.§'"Y§;
   import §7$t§.§9#x§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<$q§.§"%r§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=&!§.§ "^§;
   import §>$q§.§4#;§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[$<§.§;"E§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
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
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BattleOfferDialog extends §@& § implements §4%?§
   {
      
      private var §[#N§:§9j§;
      
      private var §0"J§:Vector.<§6"%§>;
      
      private var §3$M§:Vector.<§6"%§>;
      
      private var randomWeapons:§6"%§;
      
      private var endlessFlooding:§6"%§;
      
      private var disabledFlooding:§6"%§;
      
      private var upFlooding:§6"%§;
      
      private var clanBanners:§6"%§;
      
      private var mirrorMap:§6"%§;
      
      private var §^%8§:§6"%§;
      
      private var damageZone:§6"%§;
      
      private var mapName:TextField;
      
      protected var ignoreBtn:§?%>§;
      
      public function BattleOfferDialog(param1:DisplayObjectContainer = null)
      {
         super(param1 ? param1 : §6#A§.§!&6§(§+"'§.§3##§));
         var _loc2_:MovieClip = getChildByName("playerCard") as MovieClip;
         if(_loc2_)
         {
            this.§[#N§ = new §9j§(_loc2_);
            this.§[#N§.§9%8§ = false;
         }
         §=%1§ = §5!r§.§<![§;
         var _loc3_:DisplayObject = getChildByName("mapName");
         if(_loc3_)
         {
            this.mapName = _loc3_ as TextField;
         }
         this.§0"J§ = new Vector.<§6"%§>(0);
         this.§3$M§ = new Vector.<§6"%§>(0);
         this.endlessFlooding = this.§>%O§(this.§3$M§,"endlessFlooding",§0$N§.ENDLESS_FLOODING);
         this.disabledFlooding = this.§>%O§(this.§3$M§,"disabledFlooding",§0$N§.DISABLED_FLOODING);
         this.upFlooding = this.§>%O§(this.§3$M§,"upFlooding",§0$N§.FLOODING_UP);
         this.randomWeapons = this.§>%O§(this.§0"J§,"randomWeapons",§0$N§.SELECT_RANDOM_WEAPON);
         this.clanBanners = this.§>%O§(this.§0"J§,"clanBanners",§0$N§.§%! §("BANNER_NAME_1"),true);
         this.mirrorMap = this.§>%O§(this.§0"J§,"mirrorMap",§0$N§.MIRROR_MAP);
         this.§^%8§ = this.§>%O§(this.§0"J§,"unitProtections",§0$N§.THROWING_PROTECTIONS,true);
         this.damageZone = this.§>%O§(this.§0"J§,"damageZone",§0$N§.DAMAGE_ZONE);
         this.ignoreBtn = §!&5§.§7#[§(getChildByName("ignoreBtn"));
         this.ignoreBtn.setText(§0$N§.IGNORE_USER_BTN);
         this.ignoreBtn.§[!u§(this.§ "+§);
      }
      
      private function §>%O§(param1:Vector.<§6"%§>, param2:String, param3:String, param4:Boolean = false) : §6"%§
      {
         var _loc6_:§6"%§ = null;
         var _loc5_:DisplayObject = getChildByName(param2);
         if(_loc5_)
         {
            _loc6_ = new §6"%§(_loc5_ as SimpleButton);
            _loc6_.setDisabled(true);
            _loc6_.setVisible(false);
            _loc6_.setPressed(param4);
            _loc6_.setText(param3);
            param1.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      override protected function §%&9§() : void
      {
         §<"b§ = true;
         §=#h§ = §0$N§.BATTLE_OFFER_ACCEPT;
         §-!^§ = §0$N§.BUTTON_REJECT;
         super.§%&9§();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.§<%o§(false);
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.§[#N§.§3%,§(param1);
      }
      
      public function §%&§(param1:String) : void
      {
         var _loc2_:§6"%§ = null;
         var _loc3_:§ "^§ = null;
         for each(_loc2_ in this.§0"J§)
         {
            _loc2_.setVisible(true);
            _loc2_.setPressed(false);
         }
         for each(_loc3_ in § "^§.§#&$§())
         {
            if(§ "^§.getValue(param1,_loc3_))
            {
               for each(_loc2_ in this.§0"J§)
               {
                  if(_loc2_.simpleButton.name == _loc3_.name)
                  {
                     _loc2_.setPressed(true);
                     break;
                  }
               }
            }
         }
      }
      
      public function §@#^§(param1:String) : void
      {
         var _loc2_:§6"%§ = null;
         for each(_loc2_ in this.§3$M§)
         {
            _loc2_.setVisible(true);
            _loc2_.setPressed(false);
         }
         switch(param1)
         {
            case §"%r§.FLOODING_ENDLESS.name:
               if(this.endlessFlooding)
               {
                  this.endlessFlooding.setPressed(true);
               }
               break;
            case §"%r§.STABLE.name:
               if(this.disabledFlooding)
               {
                  this.disabledFlooding.setPressed(true);
               }
               break;
            case §"%r§.UPFLOODING_ENDLESS.name:
               if(this.upFlooding)
               {
                  this.upFlooding.setPressed(true);
               }
         }
      }
      
      public function §=o§(param1:Boolean, param2:uint) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc3_:§9$Z§ = §=%A§.§7S§(param2);
         if(this.mapName)
         {
            _loc4_ = "MAP.";
            _loc5_ = param1 ? §0$N§.RANDOM_MAP : §0$N§.MAP_SELECTED + " " + §0$N§.§%! §(_loc4_ + _loc3_.name.toUpperCase());
            this.mapName.text = _loc5_;
         }
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(§4$T§.DECLINE_BATTLE_OFFER));
         hide();
      }
      
      override protected function okAction() : void
      {
         dispatchEvent(new Event(§4$T§.ACCEPT_BATTLE_OFFER));
         super.okAction();
      }
      
      protected function § "+§(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(§4$T§.DECLINE_OFFER_AND_IGNORE_USER));
         hide();
      }
      
      public function §`![§(param1:Vector.<int>) : void
      {
      }
      
      public function §-"r§() : void
      {
      }
      
      public function §<%o§(param1:Boolean) : void
      {
         §!S§.setDisabled(param1);
      }
      
      public function §1#j§() : void
      {
         var _loc1_:§6"%§ = null;
         for each(_loc1_ in this.§3$M§)
         {
            _loc1_.setVisible(false);
         }
      }
   }
}

