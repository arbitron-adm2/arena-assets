package ru.pragmatix.wormix.gui.house.team
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!m§.§;#[§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §3"@§.§##L§;
   import §3#a§.*;
   import §4'§.§#"l§;
   import §4u§.§[%u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.TeamController;
   import §<!<§.§4"K§;
   import §<!W§.§!"+§;
   import §<!^§.§["l§;
   import §<"?§.§3>§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §<K§.RatingTabAllTime;
   import §<V§.§!&-§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§!q§;
   import §?>§.§0!7§;
   import §?>§.§4#o§;
   import §?>§.§]!V§;
   import §?>§.§^&<§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §]$v§.*;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.easing.Circ;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.plugins.*;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class §@$y§ extends §0&'§ implements §]!V§, §^c§
   {
      
      protected var lockBar:§!q§;
      
      protected var §%f§:§^&<§;
      
      protected var profile:UserProfile;
      
      protected var §;i§:TeamRoom;
      
      public function §@$y§(param1:MovieClip, param2:TeamRoom)
      {
         super(param1);
         this.§;i§ = param2;
         this.lockBar = new §!q§(§'$a§("lockBar"),this);
         this.§%f§ = new §^&<§(§'$a§("userBar"),this);
      }
      
      [Abstract]
      public function initFromProfile(param1:UserProfile) : void
      {
      }
      
      override public function activate() : void
      {
         super.activate();
         this.lockBar.setVisible(false);
         this.§%f§.setVisible(false);
      }
      
      override public function setData(param1:Array) : void
      {
         this.store = new §4"K§(param1,§4#B§.numChildren);
      }
      
      override protected function §;""§(param1:Array) : void
      {
         super.§;""§(param1);
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
      }
      
      protected function §!"&§(param1:Event = null) : void
      {
         §?%1§(null);
         this.§%f§.§3%,§(null);
         this.lockBar.setVisible(false);
      }
      
      [Abstract]
      public function §[#C§(param1:Boolean) : void
      {
      }
      
      public function §<'§() : void
      {
         §?%1§(null);
         this.§%f§.setVisible(false);
         this.lockBar.setVisible(false);
         dispatchEvent(new §4#o§(§4#o§.§0%'§));
      }
      
      public function §]#_§(param1:UserProfile) : void
      {
         §8"%§.§%!m§.§!&B§(param1,true);
      }
      
      public function §5%U§() : void
      {
         §8"%§.§%!m§.§5%U§(this.profile);
      }
      
      [Abstract]
      public function §[!G§(param1:int) : void
      {
      }
      
      public function §3!$§(param1:int) : void
      {
         §?%1§(null);
         this.lockBar.§3!$§(param1);
         dispatchEvent(new §4#o§(§4#o§.§0%'§));
      }
      
      public function §^%E§() : Vector.<§0!7§>
      {
         var _loc2_:§3$B§ = null;
         var _loc1_:Vector.<§0!7§> = new Vector.<§0!7§>(0);
         for each(_loc2_ in cells)
         {
            if(_loc2_.getProfile() != null)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
         this.§8"S§(false);
      }
      
      private function §8"S§(param1:Boolean) : void
      {
         var _loc2_:§3$B§ = null;
         for each(_loc2_ in _loc2_)
         {
            if(param1)
            {
               _loc2_.playAnimations();
            }
            else
            {
               _loc2_.stopAnimations();
            }
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.stopAnimations();
         this.§%f§.setVisible(false);
         this.lockBar.setVisible(false);
      }
      
      override protected function §]$x§(param1:§0$L§) : void
      {
         §3$B§(param1).tglLight.removeHandler(this.§!"&§);
         super.§]$x§(param1);
      }
      
      override public function destroy() : void
      {
         this.stopAnimations();
         this.§%f§.destroy();
         this.lockBar.destroy();
         super.destroy();
      }
   }
}

