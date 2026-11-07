package ru.pragmatix.wormix.gui.window
{
   import § !8§.§`!d§;
   import § #9§.§9j§;
   import § $q§.§-%f§;
   import § &5§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§'%u§;
   import §#"V§.§6"%§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§3$§;
   import §+%S§.§?3§;
   import §-%B§.*;
   import §0!§.§8$Y§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4#2§.§,%g§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7!B§.§`s§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §;!J§.§8!a§;
   import §<!W§.§#&#§;
   import §<$2§.§+$9§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §?#g§.§&"P§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@"s§.§]!>§;
   import §@"x§.*;
   import §@%I§.§2R§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import com.adobe.images.JPGEncoder;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.easing.Linear;
   import com.greensock.events.LoaderEvent;
   import com.greensock.events.TweenEvent;
   import com.greensock.loading.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5$t§ extends §@& § implements §^c§
   {
      
      public static const §^$k§:uint = 0;
      
      public static const §`"@§:uint = 1;
      
      public static const §[$D§:uint = 5;
      
      private var §`#c§:TextField;
      
      private var §[#N§:§9j§;
      
      private var bbar:MovieClip;
      
      private var §4%H§:MovieClip;
      
      private var §]%=§:uint;
      
      private var _time:uint;
      
      private var §>h§:§3%z§;
      
      public function §5$t§(param1:uint, param2:uint, param3:Boolean = false)
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param1 == §`"@§)
         {
            _loc4_ = §+"'§.§9!§;
            _loc5_ = §0$N§.BATTLE_OP_REQUEST_TITLE;
         }
         else
         {
            _loc4_ = §+"'§.§0$2§;
            _loc5_ = §0$N§.ENEMY_WAITING_MSG;
         }
         super(§6#A§.§!&6§(_loc4_));
         §#7§(_loc5_);
         §6%e§ = false;
         this.§]%=§ = Application.instance.§#&7§() ? 4 : param2;
         this.bbar = §'$a§("bbar");
         this.§4%H§ = §'$a§("grenade");
         this.stopAnimations();
         this.§`#c§ = TextField(this.bbar.getChildByName("time"));
         §&$9§.§9"b§(this.bbar,"waitBattleLabel",§0$N§.BATTLE_WAIT_LABEL);
         TextField(this.bbar.secLabel).text = §0$N§.SEC_LABEL;
         var _loc6_:MovieClip = MovieClip(getChildByName("playerCard"));
         if(_loc6_)
         {
            this.§[#N§ = new §9j§(_loc6_);
            this.§[#N§.§9%8§ = false;
            this.§3"+§(param3);
         }
         this.§4#9§(§0$N§.BATTLE_REQUEST_MSG);
         this.§>h§ = new §3%z§(getContainer() as MovieClip,panel as MovieClip);
      }
      
      public function §[$%§(param1:String) : void
      {
         this.§4#9§(param1);
      }
      
      public function §8%;§(param1:String) : void
      {
         §#7§(param1);
      }
      
      private function §4#9§(param1:String) : void
      {
         var _loc2_:TextField = §'%s§("msg");
         if(_loc2_)
         {
            _loc2_.text = param1;
         }
      }
      
      public function §3"+§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[#N§.§!#n§();
         }
         else
         {
            this.§[#N§.§'O§();
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
         §-!^§ = §0$N§.BUTTON_CANCEL;
      }
      
      override public function destroy() : void
      {
         if(this.§[#N§)
         {
            this.§[#N§.destroy();
         }
         super.destroy();
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(§4$T§.CANCEL_BATTLE_REQUEST));
         §8"%§.§?!W§.dispatchEvent(new Event(§4$T§.CANCEL_BATTLE_REQUEST));
         super.§0!j§(param1);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.§<%o§(false);
         §!S§.setVisible(false);
         this.bbar.visible = true;
         this.§-&3§(this.§]%=§);
         this.playAnimations();
         this.§>h§.show();
      }
      
      override public function hide() : void
      {
         this.§>h§.setVisible(false);
         this.stopAnimations();
         super.hide();
      }
      
      public function §<%o§(param1:Boolean) : void
      {
         §!S§.setDisabled(param1);
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.§[#N§.§3%,§(param1);
      }
      
      private function §-&3§(param1:uint) : void
      {
         this.§ !D§();
         TweenMax.to(this,param1,{
            "startAt":{"time":param1},
            "time":0,
            "onComplete":this.onDelay,
            "ease":Linear.easeNone
         });
      }
      
      public function § !D§() : void
      {
         TweenMax.killTweensOf(this);
      }
      
      private function onDelay() : void
      {
         §!S§.setVisible(true);
         this.bbar.visible = false;
      }
      
      public function playAnimations() : void
      {
         if(Boolean(this.§4%H§) && isVisible())
         {
            this.§4%H§.play();
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.§4%H§)
         {
            this.§4%H§.stop();
         }
      }
      
      public function set time(param1:uint) : void
      {
         this._time = param1;
         this.§`#c§.text = param1.toString();
      }
      
      public function get time() : uint
      {
         return this._time;
      }
   }
}

