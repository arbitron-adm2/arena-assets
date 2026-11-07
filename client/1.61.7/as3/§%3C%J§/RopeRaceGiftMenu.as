package §<%J§
{
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'$j§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-@§.§0"e§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §4!x§.§@& §;
   import §4f§.§-&§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §<"?§.§3>§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=$#§.*;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class RopeRaceGiftMenu extends §@& § implements §^c§
   {
      
      private var §<S§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      private var gifts:Vector.<QuestGiftItem> = new Vector.<QuestGiftItem>(0);
      
      private var selected:QuestGiftItem;
      
      private var pack:§1%z§;
      
      public function RopeRaceGiftMenu()
      {
         super(§6#A§.§!&6§(§+"'§.§^l§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc4_:String = null;
         var _loc6_:MovieClip = null;
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:int = 0;
         super.§@"o§(param1);
         this.pack = new §1%z§(§8"%§.§?$5§.§>2§.rewards.concat());
         var _loc2_:int = this.pack.rewards.length > 0 ? int(this.pack.rewards.length) : §!"b§.§3%&§;
         var _loc3_:String = §0%§.format(§0$N§.RACE_QUEST_GIFT_WIN,{"br":"\n"});
         §7&5§.§>&<§(§'%s§("notify"),§0$N§.§]"r§);
         §7&5§.§>&<§(§'%s§("text"),_loc3_);
         _loc4_ = Social.settings.§@"G§().toString();
         var _loc5_:Boolean = _loc4_ == "ru" || _loc4_ == "ua";
         getChildByName("title_en_win").visible = !_loc5_;
         getChildByName("title_ru_win").visible = _loc5_;
         _loc6_ = §'$a§("gifts");
         var _loc7_:int = _loc6_.width >> 1;
         _loc8_ = 0;
         while(_loc8_ < _loc2_)
         {
            _loc9_ = §6#A§.§!&6§(§+"'§.§?9§);
            _loc10_ = _loc9_.width * (_loc8_ - _loc2_ / 2) + 5 * _loc8_;
            _loc6_.addChild(_loc9_);
            _loc9_.x = _loc7_ + _loc10_;
            this.gifts[this.gifts.length] = new QuestGiftItem(_loc9_,_loc8_,this.§1"]§);
            _loc8_++;
         }
         §>!-§.setVisible(false);
         §>!-§.setText(§0$N§.BUTTON_OK,§"-§.§+$m§);
      }
      
      private function §1"]§(param1:QuestGiftItem) : void
      {
         this.selected = param1;
         this.selected.§@#$§(true,0);
         §8"%§.§?$5§.§?&%§(this.§-%6§);
      }
      
      private function §-%6§(param1:§9x§) : void
      {
         var _loc3_:§#$!§ = null;
         var _loc4_:§&!e§ = null;
         var _loc5_:§&!e§ = null;
         if(param1 is §#$!§)
         {
            _loc3_ = §#$!§(param1);
            if(_loc3_.getRewardType() == §+$A§.INGAME)
            {
               this.selected.§!!j§(param1.getCount());
            }
            else if(_loc3_.getRewardType() == §+$A§.REAL)
            {
               this.selected.§=%=§(param1.getCount());
            }
         }
         else if(param1 is §'"%§)
         {
            this.selected.§>%w§(param1.getCount());
         }
         else if(param1 is §!%&§)
         {
            _loc4_ = §1@§.§`$M§(§!%&§(param1).getId());
            this.selected.setItem(_loc4_,§!%&§(param1).getCount());
         }
         else if(param1 is §`%g§)
         {
            _loc5_ = §<$c§.§ !=§(§`%g§(param1).getId());
            this.selected.setItem(_loc5_,§`%g§(param1).getCount());
         }
         this.selected = null;
         var _loc2_:§1%z§ = §8"%§.§?$5§.§>2§;
         if(_loc2_ == null || _loc2_.rewards.length == 0)
         {
            §8"%§.§?$5§.§'!!§ = true;
            §'%s§("notify").visible = false;
            §>!-§.setVisible(true);
         }
         Application.§5!>§.§8$w§();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.playAnimations();
      }
      
      override public function hide() : void
      {
         §0"e§.§6s§(this.pack.getWeapons(),null,null,this.pack.§]#x§());
         this.stopAnimations();
         super.hide();
      }
      
      public function playAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(isShown() && Boolean(this.§<S§))
         {
            for each(_loc1_ in this.§<S§)
            {
               _loc1_.play();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:QuestGiftItem = null;
         if(this.§<S§)
         {
            for each(_loc1_ in this.§<S§)
            {
               _loc1_.stop();
            }
         }
         if(this.gifts)
         {
            for each(_loc2_ in this.gifts)
            {
               _loc2_.stopAnimations();
            }
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:QuestGiftItem = null;
         if(this.gifts)
         {
            for each(_loc1_ in this.gifts)
            {
               _loc1_.destroy();
            }
         }
         this.gifts.length = this.§<S§.length = 0;
         this.gifts = null;
         this.§<S§ = null;
         this.pack = null;
         super.destroy();
      }
   }
}

