package § %9§
{
   import §!L§.§+"'§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §&#h§.§,#;§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §4!x§.§@& §;
   import §9%W§.§&!P§;
   import §<$q§.§,%3§;
   import §<%k§.§`!v§;
   import §@!i§.§"-§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class ActionQuestMenu extends §@& §
   {
      
      public function ActionQuestMenu()
      {
         super(§6#A§.§!&6§(§+"'§.§?!1§));
      }
      
      private static function §2$p§(param1:Event) : void
      {
         var _loc2_:ChooseFriendMenu = new ChooseFriendMenu(§3%!§);
         _loc2_.show();
      }
      
      private static function §3%!§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§3%!§(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §>!-§.setText(§0$N§.BATTLE_BTN,§"-§.§+$m§);
         var _loc2_:§?%>§ = §!&5§.§7#[§(getChildByName("friendDuelBtn"));
         _loc2_.setText(§0$N§.RACE_QUEST_CALL_FRIEND,§"-§.§+$m§);
         _loc2_.§[!u§(§2$p§);
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("ACTION_QUEST_TITLE"));
         §7&5§.§>&<§(§'%s§("card1"),§0$N§.§%! §("ACTION_QUEST_CARD1"));
         §7&5§.§>&<§(§'%s§("card1a"),§0%§.format(§0%§.format(§0%§.format(§0$N§.§%! §("ACTION_QUEST_CARD1A"),{"value":§,%3§.§68§.totalTime}),{"br":"\n"}),{"br":"\n"}));
         §7&5§.§>&<§(§'%s§("card2"),§0$N§.§%! §("ACTION_QUEST_CARD2"));
         §7&5§.§>&<§(§'%s§("card2a"),§0$N§.§%! §("ACTION_QUEST_CARD2A"));
         §7&5§.§>&<§(§'%s§("card3"),§0$N§.§%! §("ACTION_QUEST_CARD3"));
         var _loc3_:uint = §8"%§.§>`§.wager.value;
         var _loc4_:uint = §8"%§.§>`§.wager.award;
         §7&5§.§>&<§(§'%s§("card3a"),§0%§.format(§0$N§.§%! §("ACTION_QUEST_CARD3A"),{
            "wager":_loc3_,
            "br":"\n",
            "reward":_loc4_
         }));
         this.§5#V§();
      }
      
      private function §5#V§() : void
      {
         var _loc1_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:String = null;
         _loc1_ = §,#;§.§ !F§.getTime() / 1000;
         var _loc2_:int = §0#2§.§0%x§(_loc1_) + 1;
         if(_loc2_ == 1)
         {
            _loc3_ = §0$N§.§%! §("MERCS_QUEST_LAST_DAY");
         }
         else
         {
            _loc4_ = Social.§-%c§.§4!]§(_loc2_,§0$N§.DAY_PLURALS);
            _loc3_ = §0%§.format(§0$N§.MERCS_QUEST_TIME_LEFT,{
               "count":_loc2_,
               "days":_loc4_
            });
         }
         §7&5§.§>&<§(§'%s§("leftTimeText"),_loc3_);
         getChildByName("leftTimeText").visible = false;
      }
      
      override protected function okAction() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(Application.userProfile.getLevel() >= §8"%§.§>`§.wager.minLevel)
         {
            super.okAction();
            _loc1_ = §8"%§.§>`§.wager.value;
            if(Application.userProfile.§#!G§() < _loc1_)
            {
               _loc2_ = Social.§-%c§.§4!]§(_loc1_,§0$N§.FUZY_PLURALS);
               _loc3_ = {
                  "value":_loc1_,
                  "money":_loc2_
               };
               _loc4_ = §0%§.format(§0$N§.§%! §("ACTION_QUEST_ENTER_ENOUGH"),_loc3_);
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,_loc4_);
               §@%;§.play(§`!v§.§2$e§);
            }
            else if(§,#;§.§'"p§())
            {
               §8"%§.§>`§.startBattle();
            }
            else
            {
               §8"%§.§>`§.§8"u§();
            }
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0%§.format(§0$N§.QUEST_ACCESS_LEVEL_MESSAGE,{"level":§8"%§.§>`§.wager.minLevel}));
            §@%;§.play(§`!v§.§2$e§);
         }
      }
   }
}

