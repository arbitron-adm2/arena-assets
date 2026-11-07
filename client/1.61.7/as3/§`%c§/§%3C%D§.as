package §`%c§
{
   import § !P§.*;
   import § $q§.*;
   import § &5§.§!$#§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§1! §;
   import §#",§.*;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§6[§;
   import §&%X§.§-#N§;
   import §&%X§.§<$M§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§6!?§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4'§.§4$&§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §8$V§.§[#_§;
   import §9%W§.§&!P§;
   import §<!W§.§!"+§;
   import §<!W§.§7!L§;
   import §<"?§.*;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§&#Z§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@!i§.§@$&§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.CraftRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §<%D§ extends §6[§ implements §^c§
   {
      
      private var anim:MovieClip;
      
      private var §<S§:Vector.<MovieClip>;
      
      public function §<%D§(param1:uint, param2:Date)
      {
         super(param1,param2);
         this.§26§();
      }
      
      protected function §26§() : void
      {
         var _loc1_:String = null;
         var _loc5_:String = null;
         §3#1§("subTitle",§0$N§.NEWS_SUBTITLE);
         §`"R§("newsDate",§&n§);
         _loc1_ = Social.settings.§@"G§().toString();
         var _loc2_:Boolean = _loc1_ == "ru" || _loc1_ == "ua";
         var _loc3_:int = 0;
         while(_loc3_ < §?&§)
         {
            _loc5_ = "page" + _loc3_;
            if(getChildByName(_loc5_ + ".en"))
            {
               getChildByName(_loc5_ + ".en").visible = !_loc2_;
            }
            if(getChildByName(_loc5_ + ".ru"))
            {
               getChildByName(_loc5_ + ".ru").visible = _loc2_;
            }
            if(getChildByName(_loc5_ + ".text"))
            {
               §3#1§(_loc5_ + ".text",§0$N§.§%! §("PAGE" + _loc3_ + "_TEXT"),§"-§.§+$m§);
            }
            _loc3_++;
         }
         var _loc4_:§?%>§ = §!&5§.§7#[§(getChildByName("page0.btn"));
         _loc4_.setText(§0$N§.BUTTON_RELEASE_NOTES,§"-§.§+$m§);
         _loc4_.§[!u§(this.§3!i§);
         if(§8"%§.VERSION == §8"%§.§^"A§)
         {
            if(getChildByName("page2"))
            {
               this.anim = §'$a§("page2.anim");
            }
         }
         this.§<S§ = §3!3§.§#"R§(getContainer() as MovieClip);
      }
      
      override protected function §0"f§(param1:Event) : void
      {
         super.§0"f§(param1);
         this.§,%e§();
      }
      
      override protected function §"#[§(param1:Event) : void
      {
         super.§"#[§(param1);
         this.§,%e§();
      }
      
      private function §,%e§() : void
      {
         if(§8"%§.VERSION == §8"%§.§^"A§)
         {
            if(page == 2)
            {
               if(this.anim)
               {
                  this.anim.gotoAndPlay(0);
               }
            }
         }
      }
      
      protected function §3!i§(param1:Event) : void
      {
         var _loc2_:String = §8"%§.context.§2!k§()[§-#N§.§&"t§] || §8"%§.§[f§.§<#d§();
         navigateToURL(new URLRequest(_loc2_),"_blank");
      }
      
      private function §<"§(param1:Event) : void
      {
         §5%C§.§?&F§();
      }
      
      private function §[!?§(param1:Event) : void
      {
         this.hide();
         §8"%§.§8"!§.§2$X§();
      }
      
      private function §3#Z§(param1:Event) : void
      {
         this.hide();
         §8"%§.§8"!§.§4%a§();
      }
      
      private function §1"y§(param1:Event) : void
      {
         this.hide();
         Application.§5!>§.§'%w§(Application.userProfile,CraftRoom.§19§);
      }
      
      private function §9!G§(param1:Event) : void
      {
         this.hide();
         §8"%§.§%w§.§^G§();
      }
      
      public function playAnimations() : void
      {
         if(this.anim)
         {
            this.anim.play();
         }
         if(this.§<S§)
         {
            §3!3§.§<%W§(this.§<S§);
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.anim)
         {
            this.anim.stop();
         }
         if(this.§<S§)
         {
            §3!3§.§>!j§(this.§<S§);
         }
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.playAnimations();
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
   }
}

