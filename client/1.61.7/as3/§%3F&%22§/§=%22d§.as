package §?&"§
{
   import §"$+§.§`&$§;
   import §#",§.ReturnFriendRequestMenu;
   import §#",§.ReturnFriendRewardMenu;
   import §%# §.§##U§;
   import §%#u§.§8"F§;
   import §%#u§.§9"g§;
   import §%#u§.§@"c§;
   import §%E§.§5%C§;
   import §%E§.§<#l§;
   import §&#E§.§>"4§;
   import §&%X§.§47§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §7$t§.§^%%§;
   import §<"L§.§##-§;
   import §@!i§.§1""§;
   import §[%'§.§<"G§;
   import §]7§.§0'§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§2!7§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §="d§
   {
      
      public function §="d§()
      {
         super();
      }
      
      public static function show() : void
      {
         var referralBonus:§]+§;
         var levelUpWeaponBonus:§]+§;
         var seasonWeapon:§0'§;
         var downgradeWeaponsCompensation:§]+§;
         var clanSeasonBonus:§]+§;
         var holidayBonus:§]+§;
         var heroicBonus:§]+§;
         var dailyTopAwards:Array;
         var rankSeasonBonus:§]+§;
         var returnFriend:ReturnFriendRequestMenu = null;
         var topAward:§]+§ = null;
         var conveyor:§>"4§ = §>"4§.instance;
         var lc:§47§ = §8"%§.§]$s§;
         if(lc.§2d§())
         {
            conveyor.§;&%§(new ReturnFriendRewardMenu(lc.§2d§()));
         }
         if(lc.§9h§())
         {
            conveyor.§;&%§(new ReturnFriendRewardMenu(lc.§9h§()));
         }
         if(Social.settings.§1"@§())
         {
            returnFriend = §8"%§.§?#H§.§"%"§();
            if(returnFriend)
            {
               conveyor.§;&%§(returnFriend);
            }
         }
         referralBonus = lc.§`w§();
         if(referralBonus)
         {
            conveyor.§;&%§(§##U§.§"X§(referralBonus));
         }
         levelUpWeaponBonus = lc.§5#>§();
         if(levelUpWeaponBonus)
         {
            conveyor.§;&%§(§##U§.§"X§(levelUpWeaponBonus));
         }
         seasonWeapon = §8"%§.§ $,§.§<$j§();
         if(seasonWeapon)
         {
            conveyor.§;&%§(seasonWeapon);
         }
         downgradeWeaponsCompensation = lc.§`D§();
         if(downgradeWeaponsCompensation)
         {
            conveyor.§;&%§(§##U§.§"X§(downgradeWeaponsCompensation));
         }
         clanSeasonBonus = lc.§>I§();
         if(clanSeasonBonus)
         {
            conveyor.§;&%§(§##U§.§"X§(clanSeasonBonus,function(param1:§]+§):void
            {
               Social.§!g§.§=#W§(param1);
            }));
         }
         holidayBonus = lc.§[##§();
         if(holidayBonus)
         {
            conveyor.§;&%§(§##U§.§"X§(holidayBonus));
         }
         heroicBonus = lc.§^#<§();
         if(heroicBonus)
         {
            conveyor.§;&%§(§##U§.§"X§(heroicBonus));
         }
         dailyTopAwards = lc.§<&>§();
         if(dailyTopAwards)
         {
            for each(topAward in dailyTopAwards)
            {
               conveyor.§;&%§(§##U§.§"X§(topAward,§2!7§.§-"B§));
            }
         }
         rankSeasonBonus = lc.§!$N§();
         if(rankSeasonBonus)
         {
            conveyor.§;&%§(§8"F§.§5%#§(rankSeasonBonus,function(param1:§]+§):void
            {
               Social.§!g§.§5%`§(param1);
            }));
            conveyor.§;&%§(§@"c§.§5%#§());
         }
         if(Social.§%#-§() && Social.§9Q§.§]%i§())
         {
            conveyor.§;&%§(Social.§9Q§.§%%+§());
            if(§1""§.§'$d§)
            {
               conveyor.§;&%§(§9"g§.§5%#§());
            }
         }
         else if(§5%C§.§3%L§())
         {
            §5%C§.§[$2§();
            conveyor.§;&%§(§5%C§.§5%#§());
         }
         else if(§<#l§.§`$+§())
         {
            conveyor.§;&%§(§<#l§.§`"J§());
         }
         conveyor.start();
      }
   }
}

