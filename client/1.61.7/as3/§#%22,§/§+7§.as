package §#",§
{
   import § !8§.§`!d§;
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%&6§.§8!`§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.*;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §0&F§.§0%v§;
   import §1!#§.§&?§;
   import §1#p§.§2=§;
   import §2!-§.§'5§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §3#a§.*;
   import §4!!§.§'$V§;
   import §4#2§.§,$8§;
   import §4$b§.§2m§;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import §7$1§.§;$n§;
   import §8$V§.§`"c§;
   import §8$Z§.§9!&§;
   import §;"9§.§;"c§;
   import §<!W§.*;
   import §<$2§.§<%>§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§&&0§;
   import §="z§.§7%-§;
   import §="z§.§9%1§;
   import §=#g§.§!"X§;
   import §>"l§.§#!Y§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§5&4§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@#K§.§3&2§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §]$J§.§#"s§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.§;"I§;
   import config.achievements.§"!&§;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.*;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §+7§ extends §0-§
   {
      
      public static const COOKIE_FRIENDSLIST_VISIBLE:String = "COOKIE_FRIENDSLIST_VISIBLE";
      
      public static const §!&3§:int = 8;
      
      private static const §!!s§:Number = 0.5;
      
      private var §2!2§:Boolean;
      
      private var §4%L§:Boolean;
      
      private var §1$K§:§?%>§;
      
      private var §#$4§:TweenLite;
      
      public function §+7§(param1:MovieClip)
      {
         super(param1);
         §;""§([]);
         this.store = new §?#8§(§4#B§.numChildren);
         this.§,"A§();
         this.§>"8§();
         §%$S§(1);
         update();
         y = §8"%§.§^%W§.getCorrectResolution2().§'$#§() - height;
         x = (§8"%§.§^%W§.getCorrectResolution2().§@%<§() - width) * 0.5;
         §8"%§.§#m§.§&#t§(this,§!"X§.§<#Z§);
         var _loc2_:Boolean = Application.userProfile.getLevel() < §!&3§;
         this.§4%L§ = Cookie.getValue(COOKIE_FRIENDSLIST_VISIBLE,_loc2_);
         if(this.§4%L§)
         {
            this.§^%]§(false);
         }
      }
      
      private static function §<$ §(param1:MouseEvent) : void
      {
         §8"%§.§^%W§.§[#l§();
         §8"%§.§[f§.§6%'§(§0$N§.INVITE_FRIENDS_TEXT,Social.§!g§.§,R§() + Social.§!g§.§;#5§().missionComplete);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
      }
      
      override public function setData(param1:Array) : void
      {
         throw new IllegalOperationError();
      }
      
      private function §>"8§() : void
      {
         var _loc1_:SimpleButton = null;
         var _loc2_:MovieClip = null;
         if(Social.settings.§1"@§())
         {
            _loc1_ = §6#A§.§]#$§(§+"'§.§6#m§);
            this.§1$K§ = §!&5§.§7#[§(_loc1_);
            this.§1$K§.setQtip(§0$N§.RETURN_FRIEND_BTN_QTIP,§;#^§.§4!f§,§+"'§.§3%y§);
            this.§1$K§.§[!u§(this.§;"K§);
            addChild(this.§1$K§);
            _loc2_ = §'$a§("returnAvatar");
            this.§1$K§.x = _loc2_.x;
            this.§1$K§.y = _loc2_.y + (_loc2_.width - this.§1$K§.height) * 0.7;
            this.§1$K§.getContainer().scaleX = this.§1$K§.getContainer().scaleY = 0.85;
         }
      }
      
      private function §,"A§() : void
      {
         var _loc4_:DisplayObject = null;
         var _loc1_:DisplayObjectContainer = §#!`§();
         var _loc2_:int = 0;
         var _loc3_:int = _loc1_.numChildren;
         while(_loc2_ < _loc3_)
         {
            var _temp_1:* = _loc1_.getChildAt(_loc2_);
            _loc4_ = _loc1_.getChildAt(_loc2_);
            if(_loc4_ is SimpleButton && _loc4_.name != "next" && _loc4_.name != "prev")
            {
               _loc4_.addEventListener(MouseEvent.CLICK,§<$ §);
            }
            _loc2_++;
         }
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc4_:UserProfile = param2 as UserProfile;
         if(_loc4_)
         {
            _loc5_ = (store.§1"J§() - 1) * store.§4$`§() + param1.getCellIndex();
            _loc4_.§!#c§(_loc5_ < §`"c§.§[!'§());
            _loc4_.§;$v§(§2=§.FRIEND);
         }
         super.§3u§(param1,param2,param3);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:MovieClip = param1 as MovieClip;
         §^"P§(_loc2_.getChildByName("addBtn"),MouseEvent.CLICK,§<$ §);
         return new §+!h§(MovieClip(param1));
      }
      
      public function §;"K§(param1:MouseEvent) : void
      {
         Application.§5!>§.§1$i§.§;"K§(param1);
      }
      
      public function §6"?§(param1:Boolean = true) : void
      {
         setVisible(true);
         this.§4%L§ = false;
         var _loc2_:Number = §8"%§.§^%W§.getCorrectResolution2().§'$#§() - height;
         if(param1)
         {
            this.§2!2§ = true;
            this.§#$4§ = TweenLite.to(this,§!!s§,{
               "y":_loc2_,
               "onComplete":this.§2$<§
            });
         }
         else
         {
            y = _loc2_;
            this.§2$<§();
         }
      }
      
      public function §^%]§(param1:Boolean = true) : void
      {
         this.§4%L§ = true;
         var _loc2_:Number = §8"%§.§^%W§.getCorrectResolution2().§'$#§();
         if(param1)
         {
            this.§2!2§ = true;
            this.§#$4§ = TweenLite.to(this,§!!s§,{
               "y":_loc2_,
               "onComplete":this.§2$<§
            });
         }
         else
         {
            y = _loc2_;
            this.§2$<§();
         }
      }
      
      private function §2$<§() : void
      {
         this.§2!2§ = false;
         this.§#$4§ = null;
         if(this.§4%L§)
         {
            setVisible(false);
         }
         y = §8"%§.§^%W§.getCorrectResolution2().§'$#§() - (this.§4%L§ ? 0 : height);
         §8"%§.§#m§.§`$y§(this);
         Cookie.setValue(COOKIE_FRIENDSLIST_VISIBLE,this.§4%L§);
      }
      
      public function §!#9§() : void
      {
         if(this.§2!2§)
         {
            this.§2!2§ = false;
            if(Boolean(this.§#$4§) && this.§#$4§.active)
            {
               this.§#$4§.kill();
            }
         }
         if(this.§4%L§)
         {
            this.§6"?§();
         }
         else
         {
            this.§^%]§();
         }
      }
   }
}

