package §0%z§
{
   import § !P§.§<#q§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2!-§.NewUnitEvent;
   import §2#s§.§7"N§;
   import §3#a§.§-#M§;
   import §4!K§.*;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §=$#§.§ b§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[%'§.§<"G§;
   import §]$&§.§2&2§;
   import §]^§.§-$T§;
   import §]^§.§5" §;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+y§ extends §"&=§ implements §^c§
   {
      
      private var §=%e§:§-$T§;
      
      private var §!&0§:§'%u§;
      
      private var achieves:Array;
      
      private var §2E§:Dictionary = new Dictionary();
      
      private var §6&$§:Boolean = false;
      
      private var §<"!§:MovieClip;
      
      public function §+y§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      private static function §6"X§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = param1.getChildByName("charClip");
         if(_loc2_)
         {
            param1.removeChild(_loc2_);
         }
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         if(!this.§6&$§)
         {
            this.§=%e§ = §6%k§.§7%q§(param1.id) as §-$T§;
            this.§!&0§ = §^t§.§,$u§(this.§=%e§.getId());
            this.achieves = §^t§.§3"1§(this.§=%e§.getId());
            this.§[%i§();
            this.§3!U§();
            this.§=S§();
            this.§%!H§();
            this.§3!@§();
            this.§]"K§();
            this.§6&$§ = true;
         }
      }
      
      private function §]"K§() : void
      {
         var _loc1_:§4#_§ = new §4#_§(getChildByName("pointsIcon"));
         _loc1_.setQtip(§0$N§.ACHIEV_QTIP,§;#^§.§[!K§,§+"'§.§]!H§);
      }
      
      private function §[%i§() : void
      {
         var _loc1_:§5" § = null;
         var _loc2_:UserProfile = null;
         this.§<"!§ = getChildByName("bossAvatar") as MovieClip;
         §6"X§(this.§<"!§);
         _loc1_ = this.§=%e§.§<$y§();
         _loc2_ = UserProfile.§'#3§("name",0,_loc1_.getRace(),0,0,0,_loc1_.§"!?§(),_loc1_.§8!u§(),_loc1_.§9K§());
         var _loc3_:§6!G§ = §"$t§.§!!1§(null,_loc2_,this.§<"!§);
         _loc3_.§4%F§();
      }
      
      private function §3!U§() : void
      {
         §&$9§.§>&F§(§'%s§("bossName"),§"-§.§+$m§,this.§=%e§.§7%z§());
      }
      
      private function §=S§() : void
      {
         §&$9§.§>&F§(§'%s§("pointsCount"),§"-§.§6"j§,String(this.§!&0§.levels[0].points));
      }
      
      private function §%!H§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:DisplayObject = getChildByName("fuzyReward");
         var _loc2_:DisplayObject = getChildByName("rubyReward");
         _loc3_ = this.§!&0§.levels[0].reward;
         var _loc4_:Boolean = _loc3_.type == §1&6§.RUBY.value;
         _loc2_.visible = _loc4_;
         _loc1_.visible = !_loc4_;
         §&$9§.§>&F§(§'%s§("rewardCount"),§"-§.§6"j§,String(_loc3_.count));
      }
      
      private function §3!@§() : void
      {
         var _loc5_:§'%u§ = null;
         var _loc6_:§?$E§ = null;
         var _loc1_:uint = 80;
         var _loc2_:§`&-§ = new §`&-§(new Sprite());
         _loc2_.x = 99;
         _loc2_.y = 30;
         addChild(_loc2_);
         var _loc3_:int = 0;
         var _loc4_:int = int(this.achieves.length);
         while(_loc3_ < _loc4_)
         {
            _loc5_ = this.achieves[_loc3_];
            _loc6_ = new §?$E§(_loc5_);
            _loc2_.addChild(_loc6_);
            _loc6_.x = _loc3_ * _loc1_;
            this.§2E§[_loc5_.id] = _loc6_;
            _loc3_++;
         }
      }
      
      public function §2%V§(param1:§<#q§) : void
      {
         var _loc2_:§'%u§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:§?$E§ = null;
         for each(_loc2_ in this.achieves)
         {
            _loc3_ = param1.§7%J§(_loc2_.id);
            _loc4_ = this.§2E§[_loc2_.id];
            _loc4_.§;#V§ = _loc3_;
         }
      }
      
      public function playAnimations() : void
      {
         var _loc1_:§?$E§ = null;
         if(isVisible())
         {
            for each(_loc1_ in this.§2E§)
            {
               _loc1_.playAnimations();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:§?$E§ = null;
         for each(_loc1_ in this.§2E§)
         {
            _loc1_.stopAnimations();
         }
      }
      
      public function get avatar() : MovieClip
      {
         return this.§<"!§;
      }
   }
}

