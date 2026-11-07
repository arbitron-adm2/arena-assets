package §&$Y§
{
   import § K§.§2""§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§[0§;
   import §0!Y§.§#!Z§;
   import §0%[§.§1%"§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8#a§.§@#c§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=1§.*;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§7$_§;
   import §@!i§.§<#&§;
   import §@!i§.§>$z§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7#T§ implements §2""§
   {
      
      private static const §1!b§:§<#&§ = new §<#&§(§-"P§.§&",§,0,0,0,0,0,0,[],null);
      
      private static const WAGER_1:§<#&§ = new §>$z§(§-"P§.§"#p§,[5,10,20,30],[5,10,20,30],4,1,10,0,[8,20,40],PvpBattleType.WAGER_PVP_DUEL,300,true);
      
      private static const WAGER_3:§<#&§ = new §<#&§(§-"P§.§>!x§,300,250,21,4,30,0.5,[],PvpBattleType.WAGER_PVP_DUEL);
      
      private static const WAGER_4:§<#&§ = new §7$_§(§-"P§.§,$^§,60,50,15,2,20,0.2,[],PvpBattleType.WAGER_PVP_2X2,100,true);
      
      private static const WAGER_5:§<#&§ = new §<#&§(§-"P§.§"!0§,70,120,11,2,15,1,[],PvpBattleType.WAGER_PVP_3_FOR_ALL);
      
      private static const WAGER_6:§<#&§ = new §<#&§(§-"P§.§68§,20,15,5,1,5,0,[],PvpBattleType.WAGER_PVP_DUEL);
      
      private static const WAGER_7:§<#&§ = new §7$_§(§-"P§.§'$L§,60,50,15,2,20,1,[],PvpBattleType.WAGER_PVP_2X2,100,true);
      
      private static const WAGER_8:§<#&§ = new §<#&§(§-"P§.§,%@§,0,0,11,1,0,0,[],PvpBattleType.WAGER_PVP_DUEL);
      
      private static const WAGER_10:§<#&§ = new §<#&§(§-"P§.§`$=§,0,0,4,1,0,0,[],PvpBattleType.PVE_PARTNER,§2v§.ROPE_RACE);
      
      private static const WAGER_11:§<#&§ = new §<#&§(§-"P§.MERCENARIES_DUEL,0,0,5,1,0,0,[],PvpBattleType.WAGER_PVP_DUEL);
      
      private static const WAGER_12:§<#&§ = new §<#&§(§-"P§.PVE_FRIEND,0,0,5,1,0,0,[],PvpBattleType.PVE_FRIEND);
      
      private static const WAGER_14:§<#&§ = new §<#&§(§-"P§.PVE_PARTNER,0,0,5,1,0,0,[],PvpBattleType.PVE_PARTNER);
      
      private static const WAGER_15:§<#&§ = new §<#&§(§-"P§.§5#4§,0,0,5,1,0,0,[],PvpBattleType.FRIEND_PVP);
      
      private static const WAGER_16:§<#&§ = new §<#&§(§-"P§.§4&<§,0,0,4,1,0,0,[],PvpBattleType.PVE_FRIEND,§2v§.ROPE_RACE);
      
      private static const WAGER_17:§<#&§ = new §<#&§(§-"P§.§="%§,0,0,4,1,0,0,[],PvpBattleType.FRIEND_PVP,§2v§.ROPE_RACE);
      
      private static const WAGER_18:§<#&§ = new §<#&§(§-"P§.§3%k§,0,0,4,1,0,0,[],PvpBattleType.PVE_FRIEND);
      
      private static const WAGER_19:§<#&§ = new §<#&§(§-"P§.§&$'§,0,0,4,1,0,0,[],PvpBattleType.PVE_PARTNER);
      
      §§push(§§findproperty(list));
      
      protected static const list:Vector.<§<#&§> = new <§<#&§>[§1!b§,WAGER_1,null,WAGER_3,WAGER_4,WAGER_5,WAGER_6,WAGER_7,WAGER_8,null,WAGER_10,WAGER_11,WAGER_12,null,WAGER_14,WAGER_15,WAGER_16,WAGER_17,WAGER_18,WAGER_19];
      
      public function §7#T§(param1:§<#&§ = null)
      {
         super();
         if(param1)
         {
            §<#&§.§6#s§(list);
         }
      }
      
      public function get isDefault() : Boolean
      {
         return true;
      }
      
      public function valueOf(param1:uint) : §<#&§
      {
         return param1 < list.length ? list[param1] : null;
      }
      
      public function §[$M§() : Vector.<§<#&§>
      {
         return list;
      }
   }
}

