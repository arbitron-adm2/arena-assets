package §<K§
{
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+u§.§'n§;
   import §+u§.RatingSubTabDaily;
   import §-&5§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§4$T§;
   import §2#i§.§+%z§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.*;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%k§.§?%o§;
   import §<$q§.§?!d§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §`#x§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class RatingTabDaily extends §1#g§
   {
      
      private static const §%!?§:String = "subRatingButtonsGroup";
      
      private var todayDuelBtn:§8"@§;
      
      private var yesterdayDuelBtn:§8"@§;
      
      private var todayTwoBtn:§8"@§;
      
      private var yesterdayTwoBtn:§8"@§;
      
      private var §"!O§:uint = 60 * 1000;
      
      private var §&"F§:Vector.<§'n§> = new Vector.<§'n§>(0);
      
      public function RatingTabDaily(param1:String)
      {
         super(§6#A§.§!&6§(param1));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         var _loc2_:§`&-§ = new §`&-§(§'$a§("subPanel"));
         this.todayDuelBtn = §!&5§.§;#z§(_loc2_.getChildByName("todayDuelBtn"),§%!?§);
         this.todayDuelBtn.setText(§0$N§.COMMON_DUELS + " - " + §0$N§.RATING_TO_DAY,§"-§.§+$m§);
         this.yesterdayDuelBtn = §!&5§.§;#z§(_loc2_.getChildByName("yesterdayDuelBtn"),§%!?§);
         this.yesterdayDuelBtn.setText(§0$N§.COMMON_DUELS + " - " + §0$N§.RATING_YESTERDAY,§"-§.§+$m§);
         this.todayTwoBtn = §!&5§.§;#z§(_loc2_.getChildByName("todayTwoBtn"),§%!?§);
         this.todayTwoBtn.setText(§0$N§.COMMON_TWO_VS_TWO + " - " + §0$N§.RATING_TO_DAY,§"-§.§+$m§);
         this.yesterdayTwoBtn = §!&5§.§;#z§(_loc2_.getChildByName("yesterdayTwoBtn"),§%!?§);
         this.yesterdayTwoBtn.setText(§0$N§.COMMON_TWO_VS_TWO + " - " + §0$N§.RATING_YESTERDAY,§"-§.§+$m§);
         this.§32§("RatingSubTabDailyToday",§ %`§.§=U§,§-"P§.§"#p§,this.§"!O§,this.todayDuelBtn);
         this.§32§("RatingSubTabDaily",§ %`§.§ -§,§-"P§.§"#p§,this.§"!O§ * 60,this.yesterdayDuelBtn);
         this.§32§("RatingSubTabDailyToday",§ %`§.§=U§,§-"P§.§'$L§,this.§"!O§,this.todayTwoBtn);
         this.§32§("RatingSubTabDaily",§ %`§.§ -§,§-"P§.§'$L§,this.§"!O§ * 60,this.yesterdayTwoBtn);
         this.todayDuelBtn.setPressed(true);
      }
      
      protected function §32§(param1:String, param2:int, param3:int, param4:int, param5:§8"@§) : void
      {
         var _loc6_:RatingSubTabDaily = new RatingSubTabDaily(param1,param5);
         §?!C§(_loc6_.getContainer());
         _loc6_.§]"$§(param3);
         _loc6_.§;#i§(param2);
         _loc6_.§+#c§(param4);
         this.§&"F§.push(_loc6_);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§'n§ = this.§&"F§[§'n§.§ #^§()];
         _loc1_.activate();
      }
   }
}

