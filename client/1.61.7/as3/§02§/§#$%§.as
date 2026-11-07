package §02§
{
   import § #9§.§"$t§;
   import § #g§.*;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §4u§.ReagentHint;
   import §6_§.*;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §8$V§.TeamController;
   import §<%E§.*;
   import §=!p§.§8#x§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §`#x§.*;
   import com.greensock.TweenLite;
   import config.achievements.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.net.*;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §#$%§ extends §3$B§
   {
      
      private var textUnlock:TextField;
      
      private var §[T§:MovieClip;
      
      private var btnUnlock:§?%>§;
      
      private var §["o§:§`&-§;
      
      private var §9!H§:TextField;
      
      public function §#$%§(param1:DisplayObjectContainer, param2:String, param3:§]!V§)
      {
         super(param1,param2,param3);
         this.§[T§ = §'$a§("item.hired");
         §7&5§.§>&<§(§'%s§("item.hired.bubble.text"),§0$N§.MEMBER_IS_ACTIVE);
         this.btnUnlock = §!&5§.§7#[§(getChildByName("btnUnlock") as SimpleButton);
         this.btnUnlock.setQtip(§0$N§.BUTTON_OPEN,§;#^§.DEFAULT,§+"'§.§3%y§);
         this.btnUnlock.§[!u§(this.§2#?§);
         this.§["o§ = new §`&-§(getChildByName("item.bottomBlock.lockBuy"));
         this.§9!H§ = §'%s§("item.bottomBlock.lockBuy.text");
         this.textUnlock = §'%s§("item.bottomBlock.textUnlock");
         §7&5§.§>&<§(this.textUnlock,§0$N§.BUTTON_OPEN);
         this.reset();
      }
      
      private function §2#?§(param1:Event) : void
      {
         §"&;§.setVisible(true);
         §"&;§.setPressed(true);
         §'#y§.§[!G§(Math.min(§%h§.§%$3§(),§5&4§.§;"T§.length - 1));
      }
      
      override public function §!"&§(param1:Event = null) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = §<!9§.§4p§(§%h§.getLevel());
         _loc3_ = §%h§.§%$3§();
         _loc4_ = _loc2_ + _loc3_;
         var _loc5_:int = _loc4_ - 1;
         §'#y§.§3!$§(§8!z§ - _loc5_ + _loc2_ + 1);
         super.§!"&§(param1);
      }
      
      override protected function §9"!§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         _loc2_ = §0$c§.§1!B§(§%h§);
         _loc3_ = §<!9§.§4p§(§%h§.getLevel());
         _loc4_ = §0$c§.§5G§(§%h§);
         _loc5_ = Boolean(profile) && §2=§.§]!$§(profile);
         _loc6_ = Boolean(profile) && §0$c§.§&"y§(profile.§4!^§());
         _loc7_ = !_loc6_ || _loc2_ < 1;
         var _loc8_:Boolean = profile && !profile.isActive() && !_loc5_ && _loc4_ < _loc3_ && _loc7_;
         var _loc9_:Boolean = Boolean(profile) && profile.isActive();
         if(!_loc8_ && !_loc9_)
         {
            return;
         }
         super.§9"!§(param1);
         this.setItem(profile);
         Application.§5!>§.§^P§.§6X§();
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:String = null;
         super.setItem(param1);
         _loc2_ = profile != null;
         _loc3_ = §@&&§.isMe();
         _loc4_ = §<!9§.§4p§(§%h§.getLevel());
         _loc5_ = §%h§.§%$3§();
         _loc6_ = _loc4_ + _loc5_;
         _loc7_ = TeamController.§4%K§ - _loc4_;
         _loc8_ = _loc6_ - 1;
         var _loc9_:int = _loc6_ - §&#j§;
         var _loc10_:Boolean = §8!z§ >= §&#j§ - 1 && §8!z§ < _loc8_;
         var _loc11_:Boolean = §8!z§ >= _loc8_ && §8!z§ < _loc8_ + _loc7_;
         var _loc12_:Boolean = _loc3_ && !_loc2_ && §8!z§ >= _loc8_ + _loc7_;
         locked = !_loc2_ && _loc11_;
         §'b§.setVisible(locked);
         textHire.visible = _loc3_ && !_loc2_ && _loc10_;
         btnHire.setVisible(textHire.visible);
         this.§[T§.visible = false;
         this.textUnlock.visible = _loc12_;
         this.btnUnlock.setVisible(this.textUnlock.visible && _loc4_ > 1);
         this.btnUnlock.setDisabled(_loc4_ == 1 || §8!z§ > §&#j§ - 1 + _loc9_ + _loc7_);
         this.§["o§.setVisible(_loc12_ && _loc4_ == 1);
         if(_loc12_ && _loc4_ == 1)
         {
            _loc13_ = §<!9§.§0r§(2);
            §7&5§.§?$k§(this.§9!H§,_loc13_.toString());
            _loc14_ = §0%§.format(§0$N§.CAN_HIRE_AT_LEVEL,{"lvl":_loc13_});
            this.§["o§.setQtip(_loc14_,§;#^§.DEFAULT,§+"'§.§3%y§);
         }
         if(locked)
         {
            _loc15_ = §<!9§.§0r§(§8!z§ - _loc8_ + _loc4_ + 1);
            §7&5§.§?$k§(textLock,_loc15_.toString());
            _loc16_ = §0%§.format(§0$N§.CAN_HIRE_AT_LEVEL,{"lvl":_loc15_});
            §'b§.setQtip(_loc16_,§;#^§.DEFAULT,§+"'§.§3%y§);
         }
         user.setVisible(!locked && !this.textUnlock.visible);
         if(_loc2_)
         {
            § "-§ = §"$t§.§!!1§(§ "-§,profile,§%$4§);
            §%$4§.visible = !profile.isActive();
            this.§[T§.visible = profile.isActive();
            if(_loc3_ && §2=§.§9$M§(profile))
            {
               TweenLite.to(§%$4§,0,{"colorMatrixFilter":{
                  "saturation":0,
                  "brightness":0.75
               }});
            }
         }
         if(_loc2_ && profile.isActive())
         {
            this.§[T§.play();
         }
         §"&;§.setVisible(!textHire.visible && !this.textUnlock.visible);
         §"&;§.setDisabled(!_loc3_);
      }
      
      override protected function § %z§() : void
      {
         super.§ %z§();
      }
      
      override public function playAnimations() : void
      {
         super.playAnimations();
         this.§[T§.play();
      }
      
      override public function stopAnimations() : void
      {
         super.stopAnimations();
         this.§[T§.stop();
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§9!H§.text = "";
         this.btnUnlock.setVisible(false);
         this.textUnlock.visible = false;
         this.§[T§.visible = false;
         §%$4§.visible = true;
      }
      
      override public function destroy() : void
      {
         this.btnUnlock.destroy();
         super.destroy();
      }
   }
}

