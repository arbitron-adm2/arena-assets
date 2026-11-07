package §9"^§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § !P§.*;
   import § #9§.§3L§;
   import § $q§.§-%f§;
   import § $q§.§1$Y§;
   import § &5§.§0&$§;
   import §!$D§.§2$^§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#5§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#E§.§4##§;
   import §&#h§.§-"F§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §+%S§.§[0§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.Cookie;
   import §1&-§.§ &=§;
   import §2"L§.§,'§;
   import §3"_§.*;
   import §3#a§.§[&A§;
   import §4'§.§4$&§;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §6_§.*;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §<!W§.*;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import config.§;"I§;
   import config.§`!a§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.client.GetWhoPumpedReaction;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §?!B§ extends §1$Y§
   {
      
      private const §`#9§:int = 900000;
      
      private var msg:TextField;
      
      private var emptyCellsLayer:MovieClip;
      
      private var §;#`§:int = 0;
      
      private var todayPumped:Array = [];
      
      private var yesterdayPumped:Array = [];
      
      private var twoDaysAgoPumped:Array = [];
      
      private var §9%v§:Array = [];
      
      private var §-$e§:§?%>§;
      
      private var pageIndex:int = 1;
      
      public function §?!B§()
      {
         super(§6#A§.§!&6§(§+"'§.§'#M§));
         this.§#7§(§0$N§.REACTION_MENU_TITLE);
         this.emptyCellsLayer = §'$a§("emptyCellsLayer");
         this.emptyCellsLayer.visible = false;
         var _loc1_:DisplayObject = §'$a§("titlePanel");
         this.msg = §'%s§("msg");
         this.msg.text = §0$N§.REACTION_MENU_MSG_NONE_PUMPED_3DAYS;
         this.msg.visible = false;
         §##b§(§0$N§.REACTION_MENU_BUTTON);
         §>!-§.x = getContainer().width * 0.5 - §>!-§.width - 10;
         this.§-$e§ = §!&5§.§7#[§(getChildByName("selectAll"));
         this.§-$e§.§[!u§(this.§?%"§);
         this.§-$e§.setText(§0$N§.BUTTON_SELECT_ALL,§"-§.§+$m§);
      }
      
      private static function §^%r§(param1:Array) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc2_ < _loc3_)
         {
            if(!ProfileDoubleKeyStructure(param1[_loc2_]).stringId)
            {
               ProfileDoubleKeyStructure(param1[_loc2_]).stringId = String(param1[_loc2_].longId);
            }
            _loc2_++;
         }
         return param1;
      }
      
      private static function §>$-§(param1:Array) : Array
      {
         var _loc5_:ProfileDoubleKeyStructure = null;
         var _loc6_:String = null;
         var _loc7_:ClanMemberTO = null;
         var _loc2_:Object = {};
         var _loc3_:Array = [];
         var _loc4_:Array = [];
         if(Boolean(§]#i§.userClan) && Boolean(§]#i§.userClan.members))
         {
            _loc6_ = Application.userProfile.§"%D§();
            for each(_loc7_ in §]#i§.userClan.members)
            {
               if(_loc6_ != _loc7_.socialProfileId)
               {
                  _loc4_[_loc4_.length] = _loc7_.socialProfileId;
               }
            }
         }
         for each(_loc5_ in param1)
         {
            if(!_loc2_[_loc5_.stringId] && (§6!?§.contains(§`"c§.getAppFriends(),_loc5_.stringId) || §6!?§.contains(_loc4_,_loc5_.stringId)))
            {
               _loc3_.push(_loc5_);
               _loc2_[_loc5_.stringId] = true;
            }
         }
         return _loc3_;
      }
      
      private function §?%"§(param1:Event) : void
      {
         var _loc2_:§0$L§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = int(this.§9%v§.length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = this.§9%v§[_loc3_];
            if(Boolean(_loc2_.getItem() && !_loc2_.§8,§()) && Boolean(_loc2_.§,$K§()) && !_loc2_.§`%D§())
            {
               §,"l§(_loc3_);
            }
            _loc3_++;
         }
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show();
         this.msg.visible = false;
         if(this.§;#`§ == 0 || getTimer() - this.§;#`§ > this.§`#9§)
         {
            this.§&#F§(true);
            §%%w§.§##$§(WhoPumpedReactionResult,this.§6#6§);
            §%%w§.§,U§(new GetWhoPumpedReaction());
            this.§;#`§ = getTimer();
         }
         else
         {
            this.§6#6§(null);
         }
      }
      
      override protected function okAction() : void
      {
         if(§1&5§().length)
         {
            this.§&#F§(true);
            §8"%§.§["$§.§0#N§(§1&5§(),this.§;%d§);
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.REACTION_MENU_MSG_NONE_SELECTED);
         }
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:Array = null;
         var _loc7_:Date = null;
         var _loc8_:Array = null;
         var _loc9_:uint = 0;
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc4_:UserProfile = UserProfile(param2);
         if(_loc4_)
         {
            param1.setDisabled(!§8"%§.§["$§.§;[§(_loc4_));
            _loc5_ = uint(_loc4_.getId());
            _loc6_ = [];
            _loc7_ = new Date();
            _loc8_ = [];
            _loc9_ = this.todayPumped.length;
            _loc10_ = 0;
            while(_loc10_ < _loc9_)
            {
               _loc8_[_loc10_] = this.todayPumped[_loc10_].longId;
               _loc10_++;
            }
            _loc11_ = [];
            _loc9_ = this.yesterdayPumped.length;
            _loc10_ = 0;
            while(_loc10_ < _loc9_)
            {
               _loc11_[_loc10_] = this.yesterdayPumped[_loc10_].longId;
               _loc10_++;
            }
            _loc12_ = [];
            _loc9_ = this.twoDaysAgoPumped.length;
            _loc10_ = 0;
            while(_loc10_ < _loc9_)
            {
               _loc12_[_loc10_] = this.twoDaysAgoPumped[_loc10_].longId;
               _loc10_++;
            }
            if(§6!?§.contains(_loc8_,_loc5_))
            {
               _loc6_.push(_loc7_);
            }
            if(§6!?§.contains(_loc11_,_loc5_))
            {
               _loc6_.push(new Date(_loc7_.getTime() - §0#2§.§5!q§));
            }
            if(§6!?§.contains(_loc12_,_loc5_))
            {
               _loc6_.push(new Date(_loc7_.getTime() - 2 * §0#2§.§5!q§));
            }
            §`&-§(param1).setQtipPanel(new ReactionHint(§4! §.§<&-§(_loc4_),_loc6_));
         }
         super.§3u§(param1,param2,param3);
         this.§9%v§[param3] = param1;
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§-%f§ = null;
         var _loc4_:DisplayObject = null;
         _loc2_ = new §-%f§(param1 as MovieClip,null,false,false);
         var _loc3_:§3L§ = _loc2_.§@%X§();
         if(_loc3_)
         {
            _loc4_ = _loc3_.getChildByName("level");
            if(_loc4_)
            {
               _loc4_.visible = false;
            }
         }
         return _loc2_;
      }
      
      override public function §#7§(param1:String) : void
      {
         super.§#7§(param1);
         §]"a§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §]!I§ = true;
         §<"b§ = false;
      }
      
      private function §6#6§(param1:§9$v§) : void
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         this.§&#F§(false);
         if(param1 != null)
         {
            §%%w§.§-"j§(WhoPumpedReactionResult,this.§6#6§);
            this.todayPumped = WhoPumpedReactionResult(param1.message).todayPumped;
            this.yesterdayPumped = WhoPumpedReactionResult(param1.message).yesterdayPumped;
            this.twoDaysAgoPumped = WhoPumpedReactionResult(param1.message).twoDaysAgoPumped;
         }
         this.todayPumped = §^%r§(this.todayPumped);
         this.yesterdayPumped = §^%r§(this.yesterdayPumped);
         this.twoDaysAgoPumped = §^%r§(this.twoDaysAgoPumped);
         var _loc2_:Array = this.todayPumped.concat(this.yesterdayPumped,this.twoDaysAgoPumped);
         _loc2_ = §>$-§(_loc2_);
         if(_loc2_.length > 0)
         {
            _loc3_ = [];
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc3_.push(new UserProfile());
               UserProfile(_loc3_[_loc4_]).setIds(int(_loc2_[_loc4_].longId),_loc2_[_loc4_].stringId);
               _loc4_++;
            }
            setData(_loc3_);
            this.emptyCellsLayer.visible = true;
            this.msg.visible = false;
            update();
         }
         else
         {
            this.msg.visible = true;
            this.emptyCellsLayer.visible = false;
         }
         this.§6$2§();
      }
      
      private function §;%d§(param1:int) : void
      {
         this.§&#F§(false);
         if(Boolean(store) && Boolean(store.§[5§()) && Boolean(store.§[5§().length))
         {
            if(this.pageIndex > 0 && this.pageIndex <= store.§-J§())
            {
               store.§%$S§(this.pageIndex);
            }
         }
         update();
         this.§6$2§();
      }
      
      override protected function §0"f§(param1:MouseEvent) : void
      {
         super.§0"f§(param1);
         this.pageIndex = store.§1"J§();
      }
      
      override protected function §"#[§(param1:MouseEvent) : void
      {
         super.§"#[§(param1);
         this.pageIndex = store.§1"J§();
      }
      
      private function §6$2§() : void
      {
         var _loc2_:§0$L§ = null;
         var _loc1_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:int = int(this.§9%v§.length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = this.§9%v§[_loc3_];
            if(!_loc2_.getItem() || Boolean(_loc2_.§8,§()) || !§8"%§.§["$§.§;[§(_loc2_.getItem() as UserProfile))
            {
               _loc1_++;
            }
            _loc3_++;
         }
         §>!-§.setDisabled(_loc1_ == this.§9%v§.length);
         if(this.§-$e§)
         {
            this.§-$e§.setDisabled(_loc1_ == this.§9%v§.length);
         }
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         this.§6$2§();
      }
   }
}

