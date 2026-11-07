package §@$§
{
   import §&!m§.§-$6§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §="z§.*;
   import §?$7§.§!§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6$[§ extends §+%>§
   {
      
      public function §6$[§(param1:UserProfile = null, param2:ClanMemberTO = null)
      {
         super(param1,param2);
      }
      
      override protected function §5%i§() : void
      {
         if(isMe)
         {
            if(userProfile.§!#E§())
            {
               §+$C§();
            }
         }
         else
         {
            §<#C§();
            this.§2#5§();
            this.§1"O§();
            this.§["?§();
            this.§<% §();
            this.§!%m§();
            if(userProfile.§!#E§())
            {
               §3%`§();
            }
            else
            {
               §"&D§();
            }
         }
         §0%C§();
         §7&B§();
         if(cells.length > 0)
         {
            cells[cells.length - 1].§+"$§(false);
         }
      }
      
      protected function §2#5§() : void
      {
         if(Application.userProfile.getLevel() >= §<#&§.valueOf(§-"P§.§'$L§).minLevel)
         {
            §<%5§(this.§'"J§,§`&C§.§-"n§,§0$N§.CONTEXT_MENU_JOINT_FIGHT);
         }
      }
      
      protected function §1"O§() : void
      {
         var _loc1_:§!#3§ = null;
         _loc1_ = §!#3§.getInstance();
         var _loc2_:§-$T§ = _loc1_.§##H§(0)[0];
         if(Application.userProfile.getLevel() >= _loc2_.§""H§())
         {
            §<%5§(this.§!#K§,§`&C§.§#E§,§0$N§.CONTEXT_MENU_JOINT_FIGHT_BOSS);
         }
      }
      
      protected function §["?§() : void
      {
         if(Application.userProfile.getLevel() >= §<#&§.valueOf(§-"P§.§3%k§).minLevel)
         {
            §<%5§(this.§>$P§,§`&C§.§[$g§,§0$N§.CONTEXT_MENU_CALL_ZOMBIE_RISING_BATTLE);
         }
      }
      
      protected function §<% §() : void
      {
         if(Application.userProfile.getLevel() >= §<#&§.valueOf(§-"P§.§4&<§).minLevel)
         {
            §<%5§(this.§]"_§,§`&C§.§`#q§,§0$N§.CONTEXT_MENU_CALL_ROPE_RACE_WITH_FRIEND);
         }
      }
      
      protected function §!%m§() : void
      {
         if(Application.userProfile.getLevel() >= §<#&§.valueOf(§-"P§.§="%§).minLevel)
         {
            §<%5§(this.§8q§,§`&C§.§##8§,§0$N§.CONTEXT_MENU_CALL_ROPE_RACE_VS_FRIEND);
         }
      }
      
      protected function §'"J§(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc4_:String = null;
         _loc2_ = int(§<#&§.valueOf(§-"P§.§,$^§).minUnits);
         var _loc3_:Object = §0$c§.§0,§(Application.userProfile,_loc2_);
         if(!_loc3_.ready)
         {
            _loc4_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR_TEAM + (_loc3_.teamNeed > _loc2_ ? ", " + §0$N§.PVP_WAGER_CLANMATE_REPLACE_TO_OTHER : "."),{"count":_loc3_.teamNeed});
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,_loc4_);
         }
         else
         {
            §8"%§.§?!W§.§-!]§(userProfile);
         }
         if(isShown())
         {
            hide();
         }
      }
      
      private function §!#K§(param1:Event) : void
      {
         §8"%§.§%w§.§^G§(userProfile);
         if(isShown())
         {
            hide();
         }
      }
      
      private function §>$P§(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(§8"%§.§%w§.zombieRiseCoolDownTime > 0)
         {
            _loc2_ = §8"%§.§!"F§ + §8"%§.§%w§.zombieRiseCoolDownTime;
            _loc3_ = §0#2§.§1" §(_loc2_);
            _loc4_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR_PRIME,{
               "br":"\n",
               "time":_loc3_
            });
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,CallToBattleResultType.ARENA_IS_LOCKED.localFailureReason + "\n\n" + _loc4_);
         }
         else
         {
            §8"%§.§?!W§.§3#R§(userProfile);
         }
         if(isShown())
         {
            hide();
         }
      }
      
      private function §]"_§(param1:Event) : void
      {
         §8"%§.§?!W§.§]$R§(userProfile,PvpBattleType.PVE_FRIEND,§-"P§.§4&<§);
         if(isShown())
         {
            hide();
         }
      }
      
      private function §8q§(param1:Event) : void
      {
         §8"%§.§?!W§.§]$R§(userProfile,PvpBattleType.FRIEND_PVP,§-"P§.§="%§);
         if(isShown())
         {
            hide();
         }
      }
   }
}

