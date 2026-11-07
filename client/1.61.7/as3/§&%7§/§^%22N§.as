package §&%7§
{
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#E§.§;2§;
   import §&%X§.§<$M§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-"N§.§"k§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#x§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<"?§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=&!§.§4$z§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$7§.§`%2§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import com.greensock.TweenMax;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.rules.SupplyManager;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   
   public class §^"N§ extends §`&-§
   {
      
      private static const §2#y§:Number = 1.5;
      
      private static const §1$b§:Number = 0.5;
      
      private var texts:§`&-§;
      
      private var §5$u§:MovieClip;
      
      private var §7O§:DisplayObject;
      
      private var §'!d§:DisplayObject;
      
      private var §^#!§:Number;
      
      private var lvl:int;
      
      private var §=6§:int;
      
      private var §7i§:int;
      
      private var §;"X§:int;
      
      private var §@! §:int;
      
      private var §?#_§:int;
      
      private var §4!g§:Boolean = false;
      
      private var §6!i§:Boolean = false;
      
      private var result:§4$z§;
      
      public function §^"N§(param1:DisplayObject, param2:§4$z§, param3:§"k§)
      {
         super(param1);
         this.result = param2;
         this.lvl = param2.§8%I§ != 0 ? int(Application.userProfile.getLevel() - 1) : Application.userProfile.getLevel();
         this.§;"X§ = param2.exp + param2.§?#_§;
         this.§=6§ = param2.§8%I§ != 0 ? int(§<!9§.§"#4§(this.lvl) + Application.userProfile.§[!s§() - this.§;"X§) : int(Application.userProfile.§[!s§() - this.§;"X§);
         this.§7i§ = §<!9§.§"#4§(this.lvl);
         this.§4!g§ = this.lvl == §<!9§.getMaxLevel();
         this.§6!i§ = this.§=6§ + this.§;"X§ >= this.§7i§;
         this.§5$u§ = MovieClip(getChildByName("bar"));
         this.texts = new §`&-§(this.§5$u§.getChildByName("texts"));
         this.§7O§ = this.§5$u§.getChildByName("expRewardBar");
         this.§'!d§ = this.§5$u§.getChildByName("curExpBar");
         this.§^#!§ = this.§5$u§.getChildByName("expBarBorders").width;
         var _loc4_:int = this.§7i§ - this.§=6§;
         this.§?#_§ = this.§6!i§ ? (_loc4_ > param2.§?#_§ ? param2.§?#_§ : _loc4_) : param2.§?#_§;
         this.§@! § = Math.max(this.§6!i§ ? (_loc4_ > param2.exp ? param2.exp : _loc4_) - this.§?#_§ : param2.exp,0);
         if(this.§4!g§)
         {
            this.§`%w§();
         }
         else
         {
            this.§'!d§.width = this.§4!g§ ? this.§^#!§ : this.§^#!§ * (this.§=6§ / this.§7i§);
            this.§7O§.width = 0;
            this.§7O§.x = this.§'!d§.x + this.§'!d§.width;
            this.§9w§(this.lvl);
            getChildByName("maxLvl").visible = false;
            param3.addEventListener(§[%w§.WINDOW_SHOW,this.§'$H§);
         }
      }
      
      private function §'$H§(param1:Event = null) : void
      {
         var _loc2_:Number = this.§6!i§ ? this.§^#!§ - this.§'!d§.width : this.§^#!§ * (this.§;"X§ / this.§7i§);
         TweenMax.to(this.§7O§,§2#y§,{
            "width":_loc2_,
            "onComplete":(this.§6!i§ ? this.§-";§ : null)
         });
      }
      
      private function §-";§() : void
      {
         TweenMax.to(this.§7O§,0.2,{"colorTransform":{"brightness":2}});
         TweenMax.to(this.§'!d§,0.2,{
            "colorTransform":{"brightness":2},
            "onComplete":this.§=$5§
         });
      }
      
      private function §=$5§() : void
      {
         TweenMax.to(this.§5$u§,§1$b§,{
            "alpha":0,
            "onComplete":this.appear
         });
      }
      
      private function appear() : void
      {
         var _loc1_:DisplayObject = null;
         this.§;"X§ = this.§=6§ + this.§;"X§ - this.§7i§;
         this.§=6§ = 0;
         this.§7i§ = §<!9§.§"#4§(this.lvl + 1);
         this.§4!g§ = §<!9§.getMaxLevel() == this.lvl + 1;
         this.§6!i§ = this.§=6§ + this.§;"X§ >= this.§7i§;
         if(this.§4!g§)
         {
            this.§`%w§(§0$N§.§<N§("MAX_LVL_CONGRATULATIONS"));
            _loc1_ = getChildByName("maxLvl");
            _loc1_.alpha = 0;
            TweenMax.to(_loc1_,§1$b§,{"alpha":1});
         }
         else
         {
            this.§?#_§ = Math.max(this.result.§?#_§ - this.§?#_§,0);
            this.§@! § = Math.max(this.result.exp - this.§@! §,0);
            this.§7O§.x = 0;
            this.§7O§.width = this.§4!g§ ? this.§^#!§ : 0;
            this.§'!d§.visible = false;
            this.§9w§(this.lvl + 1);
            TweenMax.to(this.§7O§,0,{"colorTransform":{"brightness":1}});
            TweenMax.to(this.§5$u§,§1$b§,{
               "alpha":1,
               "onComplete":this.§'$H§
            });
         }
      }
      
      private function §9w§(param1:int) : void
      {
         var _loc2_:TextField = this.texts.§'%s§("curLvlNum");
         var _loc3_:TextField = this.texts.§'%s§("expReward");
         var _loc4_:TextField = this.texts.§'%s§("expBonus");
         this.texts.§'%s§("curLvl").text = §0%§.format(§0$N§.LEVEL_UP_DIALOG_TITLE,{"level":param1});
         this.texts.§'%s§("nextLvl").text = this.§4!g§ ? "" : §0%§.format(§0$N§.LEVEL_UP_DIALOG_TITLE,{"level":param1 + 1});
         this.texts.§'%s§("nextLvlNum").text = this.§4!g§ ? "" : this.§7i§.toString();
         _loc2_.text = this.§4!g§ ? "" : this.§=6§.toString();
         _loc3_.text = "+" + this.§@! §.toString();
         _loc4_.text = this.§?#_§ > 0 ? "+" + this.§?#_§.toString() : "";
         _loc3_.x = _loc2_.x + _loc2_.getLineMetrics(0).width + 2;
         _loc4_.x = _loc3_.x + _loc3_.getLineMetrics(0).width + 2;
      }
      
      private function §`%w§(param1:String = null) : void
      {
         if(!param1)
         {
            param1 = §0$N§.§<N§("MAX_LVL_TEXT1");
         }
         this.§5$u§.visible = false;
         §'%s§("maxLvl").text = param1;
         §'%s§("maxLvl").visible = true;
      }
   }
}

