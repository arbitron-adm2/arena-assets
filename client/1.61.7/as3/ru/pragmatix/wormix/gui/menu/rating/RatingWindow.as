package ru.pragmatix.wormix.gui.menu.rating
{
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §3#T§.§5!M§;
   import §4!x§.§@& §;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §<$2§.§##<§;
   import §<$2§.§<%>§;
   import §<%k§.§`!v§;
   import §<K§.RankTabProgress;
   import §<K§.RankTabSeason;
   import §<K§.RatingTabAllTime;
   import §<K§.RatingTabClan;
   import §<K§.RatingTabDaily;
   import §="z§.§<$t§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.social.Social;
   
   public class RatingWindow extends §@& §
   {
      
      private static var nonTopRankCell:§<%>§;
      
      private static var nonTopLegendCell:§<%>§;
      
      private static var nonTopCell:§<%>§;
      
      private static var nonTopClanCell:§##<§;
      
      private static var ratingCardPanel:§<$_§;
      
      private static const ratingGroup:String = "ratingGroup";
      
      private var rankProgressBtn:§8"@§;
      
      private var rankSeasonTopBtn:§8"@§;
      
      private var ratingDayTopBtn:§8"@§;
      
      private var alltimeBtn:§8"@§;
      
      private var clanBtn:§8"@§;
      
      private var §0"@§:RankTabProgress;
      
      private var §<#?§:RankTabSeason;
      
      private var §[%!§:RatingTabDaily;
      
      private var §`&9§:RatingTabAllTime;
      
      private var §1%F§:RatingTabClan;
      
      private var § $4§:Boolean = true;
      
      public function RatingWindow()
      {
         super(§6#A§.§!&6§(§+"'§.§?#&§));
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.RATING);
         this.rankProgressBtn = §!&5§.§;#z§(getChildByName("rankProgressBtn"),ratingGroup);
         this.rankProgressBtn.setText(§0$N§.YOUR_RANK_TITLE,§"-§.§+$m§);
         this.rankSeasonTopBtn = §!&5§.§;#z§(getChildByName("rankSeasonTopBtn"),ratingGroup);
         this.rankSeasonTopBtn.setText(§0$N§.SEASON_TOP_TITLE,§"-§.§+$m§);
         this.ratingDayTopBtn = §!&5§.§;#z§(getChildByName("ratingDayTopBtn"),ratingGroup);
         this.ratingDayTopBtn.setText(§0$N§.§%! §("RATING_DAILY_TOP"),§"-§.§+$m§);
         this.alltimeBtn = §!&5§.§;#z§(getChildByName("alltimeBtn"),ratingGroup);
         this.alltimeBtn.setText(§0$N§.RATING_ALL_LEGENDS,§"-§.§+$m§);
         this.clanBtn = §!&5§.§;#z§(getChildByName("clanBtn"),ratingGroup);
         this.clanBtn.setText(§<"G§.§%! §("CLANS"),§"-§.§+$m§);
         nonTopRankCell = new §<%>§(§'$a§("nonTopRankCell") as MovieClip,new §6$[§());
         nonTopRankCell.setSelected(true);
         nonTopLegendCell = new §<%>§(§'$a§("nonTopLegendCell") as MovieClip,new §6$[§());
         nonTopLegendCell.setSelected(true);
         nonTopCell = new §<%>§(§'$a§("nonTopCell") as MovieClip,new §6$[§());
         nonTopCell.setSelected(true);
         nonTopClanCell = new §##<§(§'$a§("nonTopClanCell") as MovieClip);
         nonTopClanCell.setSelected(true);
         this.§0"@§ = new RankTabProgress("RankTabProgress");
         this.§<#?§ = new RankTabSeason("RankTabSeason");
         this.§[%!§ = new RatingTabDaily("RatingTabDaily");
         this.§`&9§ = new RatingTabAllTime("RatingTabAllTime");
         this.§1%F§ = new RatingTabClan("RatingTabClan");
         ratingCardPanel = new §<$_§();
         ratingCardPanel.§3#J§(this.§0"@§,this.rankProgressBtn);
         ratingCardPanel.§3#J§(this.§<#?§,this.rankSeasonTopBtn);
         ratingCardPanel.§3#J§(this.§[%!§,this.ratingDayTopBtn);
         ratingCardPanel.§3#J§(this.§`&9§,this.alltimeBtn);
         ratingCardPanel.§3#J§(this.§1%F§,this.clanBtn);
         ratingCardPanel.§7!g§(this.§0"@§);
         var _loc1_:DisplayObject = getChildByName("guide");
         §`o§.§0#P§(ratingCardPanel.getContainer(),_loc1_);
         §'$a§("ratingCardPanel").addChild(ratingCardPanel.getContainer());
      }
      
      public static function §0"F§(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false) : §0$L§
      {
         nonTopLegendCell.setVisible(false);
         nonTopRankCell.setVisible(false);
         nonTopCell.setVisible(false);
         nonTopClanCell.setVisible(false);
         if(param3)
         {
            nonTopClanCell.setVisible(true);
            return nonTopClanCell;
         }
         if(param2)
         {
            if(§1""§.§'$d§)
            {
               nonTopLegendCell.setVisible(true);
               return nonTopLegendCell;
            }
            nonTopCell.setVisible(true);
            return nonTopCell;
         }
         if(param1)
         {
            nonTopRankCell.setVisible(true);
            return nonTopRankCell;
         }
         nonTopCell.setVisible(true);
         return nonTopCell;
      }
      
      public static function §]#h§() : §&#>§
      {
         return ratingCardPanel != null ? ratingCardPanel.§#M§ : null;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§7!$§;
         §%%R§ = §`!v§.§^""§;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(this.§ $4§)
         {
            ratingCardPanel.§7!g§(this.§0"@§);
            this.§ $4§ = false;
         }
         else
         {
            ratingCardPanel.§2Q§();
         }
      }
   }
}

