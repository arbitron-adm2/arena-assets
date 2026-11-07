package §2#8§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#]§.*;
   import §"% §.§4"^§;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2#V§.§-#U§;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §<!<§.§4"K§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §>%S§.§^!V§;
   import §?"j§.§`%+§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import config.§;"I§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetAbandonedFriends;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'A§ extends §0-§ implements §^c§
   {
      
      private var backPanel:MovieClip;
      
      private var §9$T§:Vector.<UserProfile>;
      
      private var §-%4§:UserProfile;
      
      private var profileForReplace:UserProfile;
      
      private var callback:Function;
      
      private var teamMemberType:int;
      
      private var §4%z§:int = 0;
      
      private var §<#<§:int;
      
      private var §?#z§:int;
      
      private var §]$ §:int;
      
      private var §4%"§:int;
      
      private var §6%s§:Boolean;
      
      private var §3&C§:Boolean;
      
      public function §'A§(param1:UserProfile, param2:int, param3:Function)
      {
         super(§6#A§.§!&6§(§+"'§.§^%L§));
         prev.removeAllWhenDisabled = true;
         next.removeAllWhenDisabled = true;
         this.teamMemberType = param2;
         this.callback = param3;
         this.§-%4§ = param1;
         this.backPanel = §'$a§("backPanel");
         §]"a§ = §'%s§("title");
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.TEAMMATE_SWAP_TITLE);
         this.§9$T§ = new Vector.<UserProfile>(0);
         this.§+#'§(param2);
         var _loc4_:Array = §0$c§.§^%_§(§""L§.§,"=§(Application.userProfile.§"]§()),Application.userProfile);
         this.setData(_loc4_);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §[%T§ = true;
         §<"b§ = true;
         §,!n§ = false;
         §7%c§ = false;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§<#<§ = §&%p§().getChildAt(0).width;
         this.§?#z§ = §&%p§().width;
         this.§]$ § = (§'$a§("backPanel").width - this.§?#z§) * 0.5;
         var _loc2_:int = int(§&%p§().numChildren);
         this.§4%"§ = (this.§?#z§ - _loc2_ * this.§<#<§) / (_loc2_ - 1);
      }
      
      override public function update() : void
      {
         §&#F§(true);
         super.update();
      }
      
      override protected function §;""§(param1:Array) : void
      {
         super.§;""§(param1);
         §&#F§(false);
         this.§`$B§();
      }
      
      override public function §%$S§(param1:int) : void
      {
         super.§%$S§(param1);
         this.§`$B§();
      }
      
      override public function setData(param1:Array) : void
      {
         this.store = new §4"K§(param1,§4#B§.numChildren);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§2!?§ = new §2!?§(SimpleButton(param1),null);
         _loc2_.§[!u§(this.§1!§);
         return _loc2_;
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         super.§3u§(param1,param2,param3);
         var _loc4_:UserProfile = UserProfile(param2);
         if(Boolean(this.§3&C§ && !this.§6%s§) && Boolean(_loc4_) && !§0$c§.§&"y§(_loc4_.§4!^§()))
         {
            param1.setDisabled(true);
         }
         else
         {
            param1.setDisabled(false);
         }
      }
      
      private function §+#'§(param1:int) : void
      {
         var _loc2_:UserProfile = null;
         var _loc4_:UserProfile = null;
         _loc2_ = Application.userProfile;
         var _loc3_:Vector.<UserProfile> = _loc2_.§"]§();
         this.§6%s§ = §0$c§.§6%s§();
         this.§3&C§ = this.§-%4§.§!#E§() && _loc2_.§!#E§() && this.§-%4§.clanMember.clanId == _loc2_.clanMember.clanId && this.§-%4§.getLevel() <= _loc2_.getLevel() && param1 == §2=§.§"!$§;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ != _loc2_)
            {
               this.§9$T§[this.§9$T§.length] = _loc4_;
            }
         }
      }
      
      private function §`$B§() : void
      {
         var _loc1_:§0$L§ = null;
         this.§4%z§ = 0;
         for each(_loc1_ in cells)
         {
            if(_loc1_.isVisible())
            {
               ++this.§4%z§;
            }
         }
         if(this.§4%z§ == 0)
         {
            return;
         }
         var _loc2_:int = this.§<#<§ * this.§4%z§;
         var _loc3_:int = (this.§4%z§ - 1) * this.§4%"§;
         var _loc4_:int = 0;
         for each(_loc1_ in cells)
         {
            _loc1_.x = (this.§?#z§ - _loc2_ - _loc3_) * 0.5 + _loc4_ * this.§<#<§ + _loc4_ * this.§4%"§;
            _loc4_++;
         }
      }
      
      private function §1!§(param1:Event) : void
      {
         var _loc2_:§2!?§ = §2!?§(param1.target);
         this.profileForReplace = _loc2_.getItem() as UserProfile;
         this.hide();
         if(this.callback != null)
         {
            this.callback(this.profileForReplace);
         }
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      override protected function §]$x§(param1:§0$L§) : void
      {
         param1.setItem(null);
         §2!?§(param1).removeHandler(this.§1!§);
         super.§]$x§(param1);
      }
      
      override public function destroy() : void
      {
         this.§-%4§ = null;
         this.§9$T§ = null;
         super.destroy();
      }
      
      public function playAnimations() : void
      {
         var _loc1_:§#$w§ = null;
         for each(_loc1_ in cells)
         {
            _loc1_.playAnimations();
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:§#$w§ = null;
         for each(_loc1_ in cells)
         {
            _loc1_.stopAnimations();
         }
      }
   }
}

