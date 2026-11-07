package §0%z§
{
   import § !P§.§<#q§;
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import §!!i§.§6"@§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#W§.§?#]§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §+%S§.§@#s§;
   import §+&<§.§@$L§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2#x§.*;
   import §3#a§.*;
   import §4!!§.§76§;
   import §4!x§.§@& §;
   import §4#`§.§+!l§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=#g§.§!"X§;
   import §=#g§.§&%5§;
   import §=$#§.§`%u§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]#[§.*;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.adobe.images.PNGEncoder;
   import config.achievements.§"!&§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.filters.BlurFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class AchievRoom extends §@& § implements §6"@§, §^c§
   {
      
      private static var §2"-§:§8L§;
      
      public static var §7F§:§@& §;
      
      public static const §19§:String = "Achiev";
      
      private static const achievGroup:String = "achievGroup";
      
      private var battleBtn:§8"@§;
      
      private var gameBtn:§8"@§;
      
      private var seasonBtn:§8"@§;
      
      private var bossesBtn:§8"@§;
      
      private var statisticBtn:§8"@§;
      
      private var §-!;§:§8"@§;
      
      private var §14§:AchievTabPage;
      
      private var §0$Q§:AchievTabPage;
      
      private var §7" §:AchievTabPage;
      
      private var §5"W§:§#%x§;
      
      private var §4$_§:§1"6§;
      
      private var §+#f§:§@"q§;
      
      private var §"$0§:TextField;
      
      private var §-i§:§4#_§;
      
      private var profile:UserProfile;
      
      private const §"%C§:String = "achiev_room";
      
      public function AchievRoom()
      {
         id = §19§;
         §7F§ = this;
         super(null);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§-i§ = new §4#_§(getChildByName("achievIcon"));
         this.§-i§.setQtip(§0$N§.ACHIEV_QTIP,§;#^§.§[!K§,§+"'§.§]!H§);
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.ACHIEVEMENTS_TITLE);
         this.§"$0§ = §'%s§("count");
         §&$9§.§>&F§(this.§"$0§,§"-§.§6"j§,"0");
         this.battleBtn = §!&5§.§;#z§(getChildByName("battleBtn"),achievGroup);
         this.battleBtn.setText(§0$N§.ACHIEV_BATTLE_BUTTON,§"-§.§+$m§);
         this.gameBtn = §!&5§.§;#z§(getChildByName("gameBtn"),achievGroup);
         this.gameBtn.setText(§0$N§.ACHIEV_GAME_BUTTON,§"-§.§+$m§);
         this.seasonBtn = §!&5§.§;#z§(getChildByName("seasonBtn"),achievGroup);
         this.seasonBtn.setText(§0$N§.ACHIEV_SEASON_BUTTON,§"-§.§+$m§);
         this.bossesBtn = §!&5§.§;#z§(getChildByName("bossesBtn"),achievGroup);
         this.bossesBtn.setText(§0$N§.BOSSES_GAME_BUTTON,§"-§.§+$m§);
         this.statisticBtn = §!&5§.§;#z§(getChildByName("statisticBtn"),achievGroup);
         this.statisticBtn.setText(§0$N§.ACHIEV_STATISTIC_BUTTON,§"-§.§+$m§);
         this.§-!;§ = §!&5§.§;#z§(getChildByName("awardBtn"),achievGroup);
         this.§-!;§.setText(§0$N§.ACHIEV_AWARD_BUTTON,§"-§.§+$m§);
         this.§14§ = new AchievTabPage(§,$h§.§-!l§);
         this.§0$Q§ = new AchievTabPage(§,$h§.§%R§);
         this.§7" § = new AchievTabPage(§,$h§.§[Q§);
         this.§4$_§ = new §1"6§();
         this.§5"W§ = new §#%x§();
         this.§+#f§ = new §@"q§(§"!&§.list,this.§-!;§);
         §2"-§ = new §@#S§();
         §2"-§.§3#J§(this.§14§,this.battleBtn);
         §2"-§.§3#J§(this.§0$Q§,this.gameBtn);
         §2"-§.§3#J§(this.§7" §,this.seasonBtn);
         §2"-§.§3#J§(this.§4$_§,this.bossesBtn);
         §2"-§.§3#J§(this.§5"W§,this.statisticBtn);
         §2"-§.§3#J§(this.§+#f§,this.§-!;§);
         §2"-§.§7!g§(this.§14§);
         §'$a§("listContainer").addChild(§2"-§.getContainer());
         §8"%§.§#m§.§&#t§(param1,§!"X§.§4&;§);
      }
      
      public function §2D§() : String
      {
         return this.§"%C§;
      }
      
      public function §`V§() : String
      {
         return §+"'§.§<#$§;
      }
      
      public function getId() : String
      {
         return §19§;
      }
      
      public function §!#<§(param1:§<#q§) : int
      {
         var _loc5_:Object = null;
         var _loc6_:§1! § = null;
         var _loc7_:§`"w§ = null;
         var _loc8_:§'%u§ = null;
         var _loc9_:§'%u§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.count);
         while(_loc3_ < _loc4_)
         {
            _loc6_ = §%#c§.getRecord(param1.ids[_loc3_]);
            if(_loc6_ != null)
            {
               for each(_loc7_ in _loc6_.levels)
               {
                  if(param1.values[_loc3_] < _loc7_.maxValue)
                  {
                     break;
                  }
                  _loc2_ += _loc7_.points;
               }
            }
            _loc3_++;
         }
         for each(_loc5_ in §^t§.getBosses())
         {
            for each(_loc8_ in _loc5_.achievs)
            {
               if(param1.§7%J§(_loc8_.id))
               {
                  _loc2_ += _loc8_.levels[0].points;
               }
            }
            _loc9_ = _loc5_.totalAchieve;
            if((Boolean(_loc9_)) && param1.§7%J§(_loc9_.id))
            {
               _loc2_ += _loc9_.levels[0].points;
            }
         }
         this.§"$0§.text = _loc2_.toString();
         return _loc2_;
      }
      
      public function initFromProfile(param1:UserProfile) : void
      {
         this.profile = param1;
      }
      
      private function §3#0§(param1:String, param2:§<#q§, param3:int = -1) : void
      {
         if(this.profile.§"%D§() == Application.userProfile.§"%D§() && param3 >= 0)
         {
            this.§2%W§(param3);
         }
         if(param1 == this.profile.§"%D§())
         {
            this.update(param2,param3);
         }
      }
      
      private function §0%]§(param1:int) : int
      {
         var _loc2_:Object = §"!&§.§]?§(param1);
         var _loc3_:int = 0;
         if(Boolean(_loc2_) && Boolean(_loc2_.replaces))
         {
            _loc3_ = ++_loc3_ + this.§0%]§(_loc2_.replaces);
         }
         return _loc3_;
      }
      
      private function §2%W§(param1:int) : void
      {
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:SyncInvestedAwardPoints = null;
         var _loc2_:§'"-§ = Application.userProfile.§3%^§();
         var _loc3_:§6#Q§ = Application.userProfile.§,%o§();
         var _loc4_:* = 0;
         for each(_loc5_ in §"!&§.list)
         {
            for each(_loc6_ in _loc5_)
            {
               if(_loc6_.itemId > 1000)
               {
                  if(_loc3_.§!%0§(_loc6_.itemId))
                  {
                     _loc4_ = uint(++_loc4_ + this.§0%]§(_loc6_.itemId));
                  }
               }
               else if(Boolean(_loc2_.§8&E§(_loc6_.itemId)) && BackpackItem(_loc2_.§+$!§()[_loc6_.itemId]).isInfinite())
               {
                  _loc4_ = uint(++_loc4_ + this.§0%]§(_loc6_.itemId));
               }
            }
         }
         if(_loc4_ != param1)
         {
            _loc7_ = new SyncInvestedAwardPoints();
            _loc7_.sessionKey = §%%w§.§7F§.§?$X§();
            §%%w§.§,U§(_loc7_);
         }
      }
      
      public function update(param1:§<#q§, param2:int) : void
      {
         this.§14§.§>$V§(param1);
         this.§0$Q§.§>$V§(param1);
         this.§7" §.§>$V§(param1);
         this.§4$_§.§>$V§(param1);
         this.§5"W§.§>$V§(param1);
         this.§+#f§.setData(this.profile,param2,this.§!#<§(param1));
         this.§14§.§&#F§(false);
         this.§0$Q§.§&#F§(false);
         this.§7" §.§&#F§(false);
         this.§4$_§.§&#F§(false);
         this.§5"W§.§&#F§(false);
      }
      
      override public function activate() : void
      {
         this.§14§.§&#F§(true);
         this.§0$Q§.§&#F§(true);
         this.§7" §.§&#F§(true);
         this.§4$_§.§&#F§(true);
         this.§5"W§.§&#F§(true);
         §8"%§.§@1§.§"%1§(this.profile,this.§3#0§);
         this.§+#f§.§>$V§(this.profile);
         super.activate();
         this.playAnimations();
      }
      
      override public function deactivate() : void
      {
         this.stopAnimations();
         super.deactivate();
      }
      
      override public function destroy() : void
      {
         this.stopAnimations();
         super.destroy();
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            this.§14§.playAnimations();
            this.§0$Q§.playAnimations();
            this.§7" §.playAnimations();
            this.§4$_§.playAnimations();
            this.§+#f§.playAnimations();
         }
      }
      
      public function stopAnimations() : void
      {
         this.§14§.stopAnimations();
         this.§0$Q§.stopAnimations();
         this.§7" §.stopAnimations();
         this.§4$_§.stopAnimations();
         this.§+#f§.stopAnimations();
      }
   }
}

