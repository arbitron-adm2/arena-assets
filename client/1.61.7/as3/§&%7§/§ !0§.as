package §&%7§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § $q§.SelectMapMenu;
   import §!!i§.§@&&§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§<"4§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §-"N§.§"k§;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#i§.§9##§;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §4f§.§-&§;
   import §4u§.§;$H§;
   import §5$]§.§3& §;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §8$Z§.§9!&§;
   import §9%k§.§0"^§;
   import §9%k§.§=k§;
   import §;!Z§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$7§.*;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §["3§.*;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §]^§.§3$f§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import com.greensock.TweenMax;
   import config.§28§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.request.InviteToClanRequest;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class § !0§ extends §`&-§
   {
      
      private static const §2#y§:Number = 1.5;
      
      private static const §,$t§:String = "RankUpAnimation";
      
      private static const §;"n§:String = "RankUpToRubyAnimation";
      
      private static const §8#+§:String = "RankDownAnimation";
      
      private var bg:Sprite;
      
      private var bar:DisplayObject;
      
      private var §!%X§:DisplayObject;
      
      private var rubyBadge:MovieClip;
      
      private var §=!A§:int;
      
      private var §'w§:Boolean;
      
      private var §8&1§:Boolean;
      
      private var §=$d§:Boolean;
      
      private var §'!E§:§=k§;
      
      private var pointsToNext:int;
      
      private var §1$I§:int;
      
      private var §3!7§:int;
      
      private var §#;§:int;
      
      private var curRankTF:TextField;
      
      private var nextRankTF:TextField;
      
      private var loseTitleTF:TextField;
      
      private var §-%@§:TextField;
      
      private var §6"i§:TextField;
      
      private var §<&9§:TextField;
      
      private var dialog:§"k§;
      
      private var frames:int = 0;
      
      private var §,"r§:int = 0;
      
      private var §,$;§:int = 0;
      
      private var placeInRuby:int = 0;
      
      public function § !0§(param1:DisplayObject, param2:§4$z§, param3:§"k§)
      {
         var countTF:TextField = null;
         var container:DisplayObject = param1;
         var result:§4$z§ = param2;
         var dialog:§"k§ = param3;
         super(container);
         this.dialog = dialog;
         this.bar = getChildByName("progressBar");
         this.§=!A§ = getChildByName("progressBarBorder").width;
         this.§!%X§ = getChildByName("nextBadgeRuby");
         this.curRankTF = §'%s§("curRankTF");
         this.nextRankTF = §'%s§("nextRankTF");
         this.loseTitleTF = §'%s§("loseTitleTF");
         this.§-%@§ = §'%s§("curPoints");
         this.§6"i§ = §'%s§("nextPoints");
         this.§<&9§ = §'%s§("rewardPoints");
         this.rubyBadge = §'$a§("rubyBadge");
         this.§,"r§ = result.rankPoints;
         this.§,$;§ = Math.max(Application.userProfile.§]#6§() - this.§,"r§,0);
         this.§'!E§ = §0"^§.§5>§(this.§,$;§);
         this.pointsToNext = §0"^§.§&$,§(this.§'!E§.rank);
         this.§1$I§ = §0"^§.§]"Q§(this.§'!E§.rank);
         this.§=$d§ = this.§'!E§.rank == 1;
         this.§'w§ = this.§'!E§.§8#X§ + this.§,"r§ > this.pointsToNext;
         this.§8&1§ = this.§'!E§.§8#X§ + this.§,"r§ < 0;
         this.loseTitleTF.visible = false;
         this.rubyBadge.stop();
         if(§4! §.isRubyLeague)
         {
            countTF = TextField(this.rubyBadge.getChildByName("count"));
            §7&5§.§?$k§(countTF,"?");
            getChildByName("nextRankBG").visible = false;
            getChildByName("curRankBG").visible = false;
            getChildByName("progressBarBorder").visible = false;
            this.§!%X§.visible = false;
            this.curRankTF.visible = false;
            this.nextRankTF.visible = false;
            this.bar.visible = false;
            this.§-%@§.visible = this.§<&9§.visible = this.§6"i§.visible = false;
            §8"%§.§ $C§.§6"8§(function(param1:int):void
            {
               if(param1 > 0)
               {
                  placeInRuby = param1;
                  if(dialog.isShown())
                  {
                     changePositionInRubyLeague();
                  }
                  else
                  {
                     dialog.addEventListener(§[%w§.WINDOW_SHOW,changePositionInRubyLeague);
                  }
               }
            });
         }
         else
         {
            this.bar.width = this.§=!A§ * (this.§'!E§.§8#X§ / this.pointsToNext);
            this.§3!7§ = this.§'w§ ? int(this.pointsToNext - this.§'!E§.§8#X§) : this.§,"r§;
            this.§#;§ = this.§8&1§ ? int(-this.§'!E§.§8#X§) : this.§,"r§;
            this.§!%X§.visible = this.§=$d§;
            this.rubyBadge.visible = false;
            this.rubyBadge.getChildByName("count").visible = false;
            §7&5§.§?$k§(this.curRankTF,String(this.§'!E§.rank));
            §7&5§.§?$k§(this.nextRankTF,String(this.§'!E§.rank - 1));
            this.§-%@§.text = String(this.§,$;§);
            this.§6"i§.text = String(this.§1$I§ + this.pointsToNext);
            this.§<&9§.text = "";
            this.§<&9§.x = this.§-%@§.x + this.§-%@§.getLineMetrics(0).width + 2;
            if(this.§,"r§ != 0)
            {
               this.§<&9§.text = (this.§,"r§ > 0 ? "+" : "") + this.§,"r§;
               dialog.addEventListener(§[%w§.WINDOW_SHOW,this.§,"r§ > 0 ? this.§`"m§ : this.§@O§);
            }
         }
      }
      
      private function §@O§(param1:Event = null) : void
      {
         var _loc2_:Number = this.§8&1§ ? -this.bar.width : this.bar.width * (this.§#;§ / this.pointsToNext);
         var _loc3_:Boolean = this.§'!E§.rank == 20;
         TweenMax.to(this.bar,§2#y§,{
            "width":this.bar.width + _loc2_,
            "onComplete":(this.§8&1§ && !_loc3_ ? this.§2"I§ : null)
         });
      }
      
      private function §`"m§(param1:Event = null) : void
      {
         var _loc2_:Number = this.§'w§ ? this.§=!A§ - this.bar.width : this.§=!A§ * (this.§3!7§ / this.pointsToNext);
         TweenMax.to(this.bar,§2#y§,{
            "width":this.bar.width + _loc2_,
            "onComplete":(this.§'w§ ? this.§@"O§ : null)
         });
      }
      
      private function changePositionInRubyLeague(param1:Event = null) : void
      {
         § "N§.scene.stage.addEventListener(Event.ENTER_FRAME,this.onFrame);
         this.rubyBadge.play();
      }
      
      private function §@"O§() : void
      {
         var _loc4_:MovieClip = null;
         this.bg = new Sprite();
         this.bg.graphics.beginFill(§ "N§.§9!l§);
         this.bg.graphics.drawRect(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
         this.bg.alpha = 0.09;
         this.bg.x = -this.dialog.x;
         this.bg.y = -this.dialog.y;
         this.dialog.§?!C§(this.bg);
         TweenMax.to(this.bg,0.4,{
            "alpha":0.7,
            "onComplete":null
         });
         § "N§.scene.stage.addEventListener(Event.ENTER_FRAME,this.onFrame);
         var _loc1_:MovieClip = §6#A§.§!&6§(this.§=$d§ ? §;"n§ : §,$t§);
         if(!this.§=$d§)
         {
            _loc4_ = MovieClip(_loc1_.getChildByName("newRankBadge"));
            §7&5§.§?$k§(TextField(_loc4_.getChildByName("rankTF")),String(this.§'!E§.rank - 1));
         }
         var _loc2_:MovieClip = MovieClip(_loc1_.getChildByName("curRankBadge"));
         §7&5§.§?$k§(TextField(_loc2_.getChildByName("rankTF")),String(this.§'!E§.rank));
         var _loc3_:MovieClip = MovieClip(_loc1_.getChildByName("newRankMsg"));
         §7&5§.§>&<§(TextField(_loc3_.getChildByName("text")),§0$N§.§%! §(this.§=$d§ ? "RANK_UP_TO_RUBY_GAME_OVER_TITLE" : "RANK_UP_GAME_OVER_TITLE"));
         this.dialog.§?!C§(_loc1_);
         _loc1_.x = x + getChildByName("curRankBG").x;
         _loc1_.y = y + getChildByName("curRankBG").y;
         _loc1_.mouseChildren = false;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§2q§);
         this.bg.mouseEnabled = false;
      }
      
      private function §2q§(param1:MouseEvent) : void
      {
         param1.target.visible = false;
         param1.target.removeEventListener(MouseEvent.CLICK,this.§2q§);
         this.§!&C§();
      }
      
      private function §2"I§() : void
      {
         §7&5§.§>&<§(this.loseTitleTF,§0$N§.§%! §("RANK_DOWN_GAME_OVER_TITLE"));
         this.loseTitleTF.visible = true;
         this.loseTitleTF.alpha = 0;
         TweenMax.to(this.loseTitleTF,0.6,{
            "alpha":1,
            "onComplete":function():void
            {
               var _loc1_:* = §6#A§.§!&6§(§8#+§);
               § "N§.scene.stage.addEventListener(Event.ENTER_FRAME,onFrame);
               dialog.§?!C§(_loc1_);
               _loc1_.x = x + getChildByName("curRankBG").x;
               _loc1_.y = y + getChildByName("curRankBG").y;
            }
         });
         §1%"§.delay(function():void
         {
            var _loc1_:Number = §=!A§ * (§#;§ / pointsToNext);
            TweenMax.to(bar,§2#y§,{
               "width":bar.width + _loc1_,
               "onComplete":null
            });
         },this,§2#y§ * 1000);
      }
      
      private function onFrame(param1:Event) : void
      {
         var countTF:TextField = null;
         var hideObjs:Array = null;
         var e:Event = param1;
         ++this.frames;
         if(§4! §.isRubyLeague)
         {
            if(this.frames == 15)
            {
               § "N§.scene.stage.removeEventListener(Event.ENTER_FRAME,this.onFrame);
               countTF = TextField(this.rubyBadge.getChildByName("count"));
               §7&5§.§?$k§(countTF,String(this.placeInRuby));
               this.frames = 0;
            }
         }
         else if(this.§'w§)
         {
            if(this.frames == 40)
            {
               hideObjs = [this.curRankTF,this.nextRankTF,this.bar];
               if(this.§=$d§)
               {
                  hideObjs = hideObjs.concat([getChildByName("nextRankBG"),getChildByName("curRankBG"),getChildByName("progressBarBorder"),this.§!%X§,this.§-%@§,this.§<&9§,this.§6"i§]);
               }
               TweenMax.allTo(hideObjs,0.3,{"alpha":0});
            }
            if(this.frames == 120)
            {
               if(this.bg)
               {
                  TweenMax.to(this.bg,0.4,{
                     "alpha":0.09,
                     "onComplete":this.§+$D§
                  });
               }
               else
               {
                  this.appear();
               }
               § "N§.scene.stage.removeEventListener(Event.ENTER_FRAME,this.onFrame);
               this.frames = 0;
            }
         }
         else if(this.§8&1§)
         {
            if(this.frames == 6)
            {
               this.bar.width = this.§=!A§;
               this.§,$;§ += this.§,"r§;
               this.§'!E§ = §0"^§.§5>§(this.§,$;§);
               this.pointsToNext = §0"^§.§&$,§(this.§'!E§.rank);
               this.§1$I§ = §0"^§.§]"Q§(this.§'!E§.rank);
               this.§,"r§ -= this.§#;§;
               this.§#;§ = Math.max(this.§,"r§,-this.pointsToNext);
               this.§8&1§ = Math.abs(this.§#;§) >= this.pointsToNext;
               §7&5§.§?$k§(this.curRankTF,String(this.§'!E§.rank));
               §7&5§.§?$k§(this.nextRankTF,String(this.§'!E§.rank - 1));
               this.§-%@§.text = this.§,$;§.toString();
               this.§6"i§.text = String(this.§1$I§ + this.pointsToNext);
               this.§<&9§.text = this.§#;§.toString();
               this.§<&9§.x = this.§!%X§.x - this.§<&9§.getLineMetrics(0).width - 5;
               this.§6"i§.x = this.§<&9§.x - this.§6"i§.width + 1;
               this.§!%X§.visible = this.§=$d§ = false;
            }
            if(this.frames == 40)
            {
               TweenMax.to(this.loseTitleTF,0.6,{
                  "alpha":0,
                  "onComplete":function():void
                  {
                     loseTitleTF.visible = false;
                  }
               });
               this.§@O§();
               § "N§.scene.stage.removeEventListener(Event.ENTER_FRAME,this.onFrame);
               this.frames = 0;
            }
         }
      }
      
      private function appear() : void
      {
         this.bar.width = 0;
         this.§=$d§ = this.§'!E§.rank == 1;
         this.§,$;§ += this.§,"r§;
         this.§'!E§ = §0"^§.§5>§(this.§,$;§);
         this.pointsToNext = §0"^§.§&$,§(this.§'!E§.rank);
         this.§1$I§ = §0"^§.§]"Q§(this.§'!E§.rank);
         this.§,"r§ -= this.§3!7§;
         this.§3!7§ = Math.min(this.§,"r§,this.pointsToNext);
         this.§'w§ = this.§3!7§ > this.pointsToNext;
         if(this.§'!E§.rank < Application.userProfile.getBestRank())
         {
            Application.userProfile.§3#E§(this.§'!E§.rank);
         }
         this.§!%X§.visible = this.§'!E§.rank == 1;
         if(this.§=$d§)
         {
            this.rubyBadge.visible = true;
            return;
         }
         this.curRankTF.alpha = this.nextRankTF.alpha = this.bar.alpha = 1;
         §7&5§.§?$k§(this.curRankTF,String(this.§'!E§.rank));
         §7&5§.§?$k§(this.nextRankTF,String(this.§'!E§.rank - 1));
         this.§-%@§.text = String(this.§1$I§);
         this.§6"i§.text = String(this.§1$I§ + this.pointsToNext);
         this.§<&9§.text = this.§3!7§ > 0 ? "+" + this.§3!7§ : "";
         this.§<&9§.x = this.§-%@§.x + this.§-%@§.getLineMetrics(0).width + 2;
         this.§`"m§();
      }
      
      private function §+$D§() : void
      {
         this.§!&C§();
         this.appear();
      }
      
      private function §!&C§() : void
      {
         if(this.bg != null && this.dialog.§+$_§(this.bg))
         {
            this.dialog._removeChild(this.bg);
            this.bg = null;
         }
      }
   }
}

