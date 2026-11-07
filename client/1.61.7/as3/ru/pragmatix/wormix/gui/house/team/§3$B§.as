package ru.pragmatix.wormix.gui.house.team
{
   import § !8§.§`!d§;
   import § #9§.§9j§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § $q§.§-%f§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#h§.§,#;§;
   import §&&6§.§8"O§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+%S§.§[0§;
   import §-%B§.§-"o§;
   import §-&5§.*;
   import §-8§.§3!x§;
   import §-G§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §1#p§.§2=§;
   import §2#8§.§9$k§;
   import §2#i§.§+%z§;
   import §2o§.§]#;§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8!Y§.§`#Q§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<!^§.§<b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabAllTime;
   import §="z§.§9%1§;
   import §=1§.*;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §?>§.§&%"§;
   import §?>§.§0!7§;
   import §?>§.§]!V§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@$§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import §]$v§.§]%_§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^§.*;
   import §^4§.§]"8§;
   import §`%&§.§8U§;
   import §`%&§.§`§;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.InviteToClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.messages.structures.PumpReactionRateStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3$B§ extends §"&=§ implements §^c§, §0!7§, §?A§
   {
      
      protected var § "-§:§6!G§;
      
      protected var user:§9j§;
      
      private var §;$4§:§[&H§;
      
      private var §%#m§:§[%U§;
      
      protected var §1%+§:§^$E§;
      
      protected var §^&H§:§^%%§;
      
      protected var §%h§:UserProfile;
      
      protected var profile:UserProfile;
      
      protected var clone:UserProfile;
      
      protected var textLock:TextField;
      
      protected var textHire:TextField;
      
      protected var textName:TextField;
      
      protected var §'b§:§`&-§;
      
      protected var §9#W§:MovieClip;
      
      protected var lightCont:MovieClip;
      
      protected var §%$4§:MovieClip;
      
      protected var §#V§:MovieClip;
      
      protected var §,$`§:§?%>§;
      
      protected var btnHire:§&%"§;
      
      protected var §"&;§:§8"@§;
      
      protected var §&#j§:uint;
      
      protected var §>!m§:int = 0;
      
      protected var §-o§:Boolean;
      
      protected var locked:Boolean;
      
      protected var §'#y§:§]!V§;
      
      public function §3$B§(param1:DisplayObjectContainer, param2:String, param3:§]!V§)
      {
         super(param1);
         this.§'#y§ = param3;
         this.§;$4§ = new §7V§(param1);
         this.§%#m§ = new §[%U§(this);
         this.§%$4§ = §'$a§("item.unit.avatar");
         this.§9#W§ = §'$a§("item.bottomBlock");
         this.§#V§ = §'$a§("item.bottomBlock.user");
         this.§#V§.addEventListener(MouseEvent.CLICK,this.§8$X§);
         this.user = new §9j§(this.§#V§,null,true);
         this.lightCont = §'$a§("lightCont");
         this.lightCont.doubleClickEnabled = true;
         this.lightCont.addEventListener(MouseEvent.DOUBLE_CLICK,this.§9"!§);
         this.§"&;§ = new §8"@§(getChildByName("lightCont.lights"),param2);
         this.§"&;§.addEventListener(§8"@§.EVENT_TOGGLE,this.§-%9§);
         this.§"&;§.§[!u§(this.§!"&§);
         this.btnHire = new §&%"§(getChildByName("btnHire") as SimpleButton);
         this.btnHire.setQtip(§0$N§.BUTTON_HIRE,§;#^§.DEFAULT,§+"'§.§3%y§);
         this.btnHire.§[!u§(this.§6$M§);
         this.§,$`§ = §!&5§.§7#[§(getChildByName("item.bottomBlock.fire"));
         this.§,$`§.§[!u§(this.§-$?§);
         this.§'b§ = new §`&-§(getChildByName("item.bottomBlock.lock"));
         this.textLock = §'%s§("item.bottomBlock.lock.text");
         this.textHire = §'%s§("item.bottomBlock.textHire");
         this.textName = §'%s§("item.bottomBlock.user.textName");
         §7&5§.§>&<§(this.textHire,§0$N§.BUTTON_HIRE);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §@$j§ = null;
         §-%m§ = null;
      }
      
      private function §@$@§(param1:MouseEvent) : void
      {
         if(!§@&&§.isMe())
         {
            return;
         }
         ++this.§>!m§;
         if(this.§>!m§ == 2)
         {
            this.§>!m§ = 0;
            this.§9"!§(param1);
         }
      }
      
      protected function §9"!§(param1:MouseEvent) : void
      {
         if(!§@&&§.isMe())
         {
            return;
         }
         var _loc2_:Boolean = !this.profile.isActive();
         this.profile.setActive(_loc2_);
         this.§'#y§.§]#_§(this.profile);
         this.§!"&§();
      }
      
      protected function §-%9§(param1:Event) : void
      {
         this.§-o§ = false;
         setSelected(false);
      }
      
      public function §!"&§(param1:Event = null) : void
      {
         if(!§@&&§.isMe())
         {
            return;
         }
         this.§-o§ = true;
         setSelected(true);
         this.§["M§(this.lightCont);
      }
      
      private function §8$X§(param1:MouseEvent) : void
      {
         var _loc2_:§+%>§ = null;
         if(!§@&&§.isMe())
         {
            return;
         }
         if(!this.profile)
         {
            if(this.btnHire.isVisible())
            {
               this.§6$M§(param1);
            }
            return;
         }
         this.§"&;§.setPressed(true);
         this.§"&;§.dispatchEvent(param1);
         if(Boolean(!§4! §.isMe(this.profile)) && Boolean(this.profile.getSocialData()) && Boolean(this.profile.getSocialData().§[#s§()))
         {
            _loc2_ = §;F§.§"$w§(new §,$c§(this.profile));
            _loc2_.§<"b§ = true;
            _loc2_.§<$8§(param1.stageX,param1.stageY);
         }
      }
      
      protected function §["M§(param1:MovieClip) : void
      {
         var clip:MovieClip = param1;
         clip.addEventListener(MouseEvent.CLICK,this.§@$@§);
         §1%"§.delay(function():void
         {
            clip.removeEventListener(MouseEvent.CLICK,§@$@§);
            §>!m§ = 0;
         },this,TeamRoom.§6&B§);
      }
      
      private function §6$M§(param1:Event) : void
      {
         var event:Event = param1;
         var menu:§9$k§ = new §9$k§(function(param1:Boolean):void
         {
            if(param1)
            {
               Application.§5!>§.§^P§.§6X§();
            }
         });
         menu.show();
      }
      
      private function §-$?§(param1:Event) : void
      {
         var _loc2_:UserProfile = UserProfile(getItem());
         §8"%§.§%!m§.fire(_loc2_);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:UserProfile = null;
         super.setItem(param1);
         this.§%h§ = §@&&§.getProfile();
         this.§&#j§ = this.§%h§.§"]§().length;
         _loc2_ = param1 as UserProfile;
         var _loc3_:Boolean = _loc2_ != null;
         var _loc4_:Boolean = §@&&§.isMe();
         this.lightCont.buttonMode = _loc4_;
         this.§#V§.buttonMode = _loc4_;
         this.§3%,§(_loc2_);
         this.§ %z§();
         this.user.§3%,§(_loc2_);
         if(_loc3_)
         {
            this.§%#m§.§?$V§ = this.§%h§.equals(Application.userProfile);
            this.§;$4§.§@!y§(this.§%#m§);
            §7&5§.§>&<§(this.textName,_loc2_.getCharName() ? _loc2_.getCharName() : §2"e§.NA);
         }
         else
         {
            this.§;$4§.§`Z§();
            this.textName.text = "";
         }
         this.textName.visible = _loc3_;
         if(this.§,$`§)
         {
            this.§,$`§.setVisible(_loc3_ && _loc4_ && !§4! §.isMe(_loc2_));
         }
      }
      
      public function isPressed() : Boolean
      {
         return this.§-o§;
      }
      
      public function isLocked() : Boolean
      {
         return this.locked;
      }
      
      override public function §8,§() : Boolean
      {
         return Boolean(this.profile) && §2=§.§9$M§(this.profile);
      }
      
      public function getProfile() : UserProfile
      {
         return this.profile;
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.profile = param1;
         this.clone = null;
         if(param1)
         {
            this.clone = param1.§ "P§();
            this.clone.§;$v§(param1.§4!^§());
         }
         this.user.§3%,§(this.clone);
         this.§;"U§(this.clone ? this.clone.§+!b§() : null);
         this.§7"i§(this.clone ? this.clone.§2u§() : null);
      }
      
      public function §-$S§() : §6!G§
      {
         return this.§ "-§;
      }
      
      public function §]$o§(param1:§6!G§) : void
      {
         this.§ "-§ = param1;
      }
      
      protected function § %z§() : void
      {
         TweenLite.to(this.§%$4§,0,{"colorMatrixFilter":{
            "saturation":1,
            "brightness":1
         }});
         if(Boolean(this.§ "-§) && Boolean(this.§ "-§.getClip().parent))
         {
            this.§ "-§.getClip().parent.removeChild(this.§ "-§.getClip());
         }
      }
      
      public function §2u§() : §^$E§
      {
         return this.§1%+§;
      }
      
      public function §7"i§(param1:§^$E§) : void
      {
         this.§1%+§ = param1;
         if(this.§ "-§)
         {
            this.§ "-§.§7"i§(param1);
         }
         if(this.clone)
         {
            this.clone.§7"i§(param1);
         }
      }
      
      public function §+!b§() : §^%%§
      {
         return this.§^&H§;
      }
      
      public function §;"U§(param1:§^%%§) : void
      {
         this.§^&H§ = param1;
         if(this.§ "-§)
         {
            this.§ "-§.§;"U§(param1);
         }
         if(this.clone)
         {
            this.clone.§;"U§(param1);
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.§%#m§.§&k§();
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
         this.btnHire.stopAnimations();
      }
      
      public function reset() : void
      {
         this.stopAnimations();
         this.§ %z§();
         this.§"&;§.setPressed(false);
         this.textLock.text = this.textName.text = "";
         this.§1%+§ = null;
         this.§^&H§ = null;
         this.clone = this.profile = null;
         this.user.§3%,§(null);
         this.§%h§ = null;
         this.§3%,§(null);
         this.textName.visible = false;
         this.textHire.visible = false;
         this.btnHire.setVisible(false);
         setSelected(false);
         this.locked = false;
      }
      
      override public function destroy() : void
      {
         this.§#V§.removeEventListener(MouseEvent.CLICK,this.§8$X§);
         this.§"&;§.removeEventListener(§8"@§.EVENT_TOGGLE,this.§-%9§);
         this.lightCont.removeEventListener(MouseEvent.DOUBLE_CLICK,this.§9"!§);
         this.§'#y§ = null;
         this.user.destroy();
         this.btnHire.destroy();
         this.§"&;§.destroy();
         if(this.§,$`§)
         {
            this.§,$`§.destroy();
         }
         super.destroy();
      }
      
      public function get tglLight() : §8"@§
      {
         return this.§"&;§;
      }
   }
}

