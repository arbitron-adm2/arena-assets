package §3"@§
{
   import §'!Z§.§1"-§;
   import §'$Z§.*;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §^"y§.§]#i§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §""m§ implements §^%I§
   {
      
      public static const §;9§:int = 3001;
      
      private static const §=&0§:Array = [{
         "id":§#$O§.REWARD_X2_DAY,
         "type":§##L§.§7%i§,
         "name":"BOOSTER.REWARD_X2.NAME",
         "description":"BOOSTER.REWARD_X2.DESCRIPTION",
         "value":2,
         "duration":1,
         "realprice":7,
         "iconClassName":"BoosterFuzySmallShort"
      },{
         "id":§#$O§.REWARD_X2_WEEK,
         "type":§##L§.§7%i§,
         "name":"BOOSTER.REWARD_X2.NAME",
         "description":"BOOSTER.REWARD_X2.DESCRIPTION",
         "value":2,
         "duration":7,
         "realprice":32,
         "iconClassName":"BoosterFuzySmallMedium"
      },{
         "id":§#$O§.REWARD_X2_MONTH,
         "type":§##L§.§7%i§,
         "name":"BOOSTER.REWARD_X2.NAME",
         "description":"BOOSTER.REWARD_X2.DESCRIPTION",
         "value":2,
         "duration":30,
         "realprice":70,
         "iconClassName":"BoosterFuzySmallLong"
      },{
         "id":§#$O§.§6$K§,
         "type":§##L§.REACTION_SMALL,
         "name":"BOOSTER.REACTION_SMALL.NAME",
         "description":"BOOSTER.REACTION_SMALL.DESCRIPTION",
         "value":12,
         "valueAlt":1,
         "duration":1,
         "price":600,
         "iconClassName":"BoosterReactionShort"
      },{
         "id":§#$O§.§@!v§,
         "type":§##L§.REACTION_SMALL,
         "name":"BOOSTER.REACTION_SMALL.NAME",
         "description":"BOOSTER.REACTION_SMALL.DESCRIPTION",
         "value":12,
         "valueAlt":1,
         "duration":7,
         "price":3000,
         "iconClassName":"BoosterReactionMedium"
      },{
         "id":§#$O§.§7!H§,
         "type":§##L§.REACTION_LARGE,
         "name":"BOOSTER.REACTION_LARGE.NAME",
         "description":"BOOSTER.REACTION_LARGE.DESCRIPTION",
         "value":18,
         "valueAlt":2,
         "duration":1,
         "realprice":12,
         "iconClassName":"BoosterReactionHighShort"
      },{
         "id":§#$O§.§2!D§,
         "type":§##L§.REACTION_LARGE,
         "name":"BOOSTER.REACTION_LARGE.NAME",
         "description":"BOOSTER.REACTION_LARGE.DESCRIPTION",
         "value":18,
         "valueAlt":2,
         "duration":7,
         "realprice":60,
         "iconClassName":"BoosterReactionHighLong"
      },{
         "id":§#$O§.§,3§,
         "type":§##L§.REAGENTS,
         "name":"BOOSTER.REAGENTS.NAME",
         "description":"BOOSTER.REAGENTS.DESCRIPTION",
         "value":"1",
         "duration":1,
         "realprice":6,
         "iconClassName":"BoosterReagentShort"
      },{
         "id":§#$O§.§8&-§,
         "type":§##L§.REAGENTS,
         "name":"BOOSTER.REAGENTS.NAME",
         "description":"BOOSTER.REAGENTS.DESCRIPTION",
         "value":"1",
         "duration":7,
         "realprice":30,
         "iconClassName":"BoosterReagentMedium"
      },{
         "id":§#$O§.WEEK_VIP,
         "type":§##L§.VIP,
         "name":"BOOSTER.WEEK_VIP.NAME",
         "description":"BOOSTER.WEEK_VIP.DESCRIPTION",
         "value":2,
         "duration":7,
         "realprice":30,
         "iconClassName":"VipIcon"
      },{
         "id":§#$O§.§-##§,
         "type":§##L§.§7%i§,
         "name":"BOOSTER.REWARD_X2.NAME",
         "description":"BOOSTER.REWARD_X2.DESCRIPTION",
         "value":2,
         "duration":7,
         "realprice":30,
         "iconClassName":"BoosterFuzySmallShort"
      },{
         "id":§#$O§.§@"Y§,
         "type":§##L§.§7%i§,
         "name":"BOOSTER.REWARD_X2.NAME",
         "description":"BOOSTER.REWARD_X2.DESCRIPTION",
         "value":2,
         "duration":30,
         "realprice":60,
         "iconClassName":"BoosterFuzySmallLong"
      },{
         "id":§#$O§.§+%+§,
         "type":§##L§.REACTION_LARGE,
         "name":"BOOSTER.REACTION_LARGE.NAME",
         "description":"BOOSTER.REACTION_LARGE.DESCRIPTION",
         "value":18,
         "valueAlt":2,
         "duration":7,
         "realprice":30,
         "iconClassName":"BoosterReactionHighShort"
      },{
         "id":§#$O§.MONTH_VIP,
         "type":§##L§.VIP,
         "name":"BOOSTER.MONTH_VIP.NAME",
         "description":"BOOSTER.MONTH_VIP.DESCRIPTION",
         "value":18,
         "duration":30,
         "realprice":60,
         "iconClassName":"VipIcon"
      },{
         "id":§#$O§.§!$,§,
         "type":§##L§.REACTION_LARGE,
         "name":"BOOSTER.REACTION_LARGE.NAME",
         "description":"BOOSTER.REACTION_LARGE.DESCRIPTION",
         "value":18,
         "valueAlt":2,
         "duration":30,
         "realprice":60,
         "iconClassName":"BoosterReactionHighLong"
      },{
         "id":§#$O§.§9!`§,
         "type":§##L§.REAGENTS,
         "name":"BOOSTER.REAGENTS.NAME",
         "description":"BOOSTER.REAGENTS.DESCRIPTION",
         "value":1,
         "duration":7,
         "realprice":30,
         "iconClassName":"BoosterReagentShort"
      },{
         "id":§#$O§.§%"Q§,
         "type":§##L§.REAGENTS,
         "name":"BOOSTER.REAGENTS.NAME",
         "description":"BOOSTER.REAGENTS.DESCRIPTION",
         "value":1,
         "duration":30,
         "realprice":60,
         "iconClassName":"BoosterReagentMedium"
      }];
      
      public function §""m§()
      {
         super();
      }
      
      public function boosters() : Array
      {
         return §=&0§;
      }
   }
}

