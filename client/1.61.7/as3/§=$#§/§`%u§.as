package §=$#§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §%"Z§.§'$2§;
   import §%L§.§#&%§;
   import §%L§.§%§;
   import §'!Z§.§1"-§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.UpgradeEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §2#i§.§+%z§;
   import §4!!§.§6$V§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §9&+§.§>&5§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`%u§
   {
      
      private static const §1$6§:Array = [{
         "id":§+%z§.§"A§,
         "text":"DARK_PACT.PROMPT"
      },{
         "id":§+%z§.§"!S§,
         "text":"NEGATOR.PROMPT"
      },{
         "id":§+%z§.FROST_STASIS,
         "text":"FROST_STASIS.PROMPT"
      },{
         "id":§+%z§.AIR_BLOCKER,
         "text":"AIR_BLOCKER.PROMPT"
      }];
      
      private static const §5%j§:Array = [{
         "bonus":Bonus.REPELL,
         "text":"PROMPT.REPELL"
      },{
         "bonus":Bonus.DODGE,
         "text":"PROMPT.DODGE"
      },{
         "bonus":Bonus.§!$=§,
         "text":"PROMPT.WATER_PROTECTION_ONCE"
      },{
         "bonus":Bonus.§7I§,
         "text":"PROMPT.WATER_PROTECTION_FIRST_ACT"
      },{
         "bonus":Bonus.ANTI_HEAL_BONUS,
         "text":"PROMPT.ANTI_HEAL_BONUS"
      },{
         "bonus":Bonus.DEATH_GRIP,
         "text":"PROMPT.DEATH_GRIP"
      },{
         "bonus":Bonus.INVERTER_BONUS,
         "text":"PROMPT.INVERTER_BONUS"
      }];
      
      private static const §8$0§:Array = [{
         "boss":§+#N§.§`%b§,
         "text":"BOSS_FARMER.PROMPT"
      },{
         "boss":§+#N§.§[$]§,
         "text":"BOSS_HUNTER.PROMPT"
      },{
         "boss":§+#N§.§<"7§,
         "text":"BOSS_MANIACS.PROMPT"
      },{
         "boss":§+#N§.MINER,
         "text":"BOSS_MINER.PROMPT"
      },{
         "boss":§+#N§.SAMURAI,
         "text":"BOSS_SAMURAI.PROMPT"
      },{
         "boss":§+#N§.§]"T§,
         "text":"BOSS_SERGEANT.PROMPT"
      },{
         "boss":§+#N§.§9&0§,
         "text":"BOSS_BURNING.PROMPT"
      },{
         "boss":§+#N§.§1"m§,
         "text":"BOSS_SOUL.PROMPT"
      },{
         "boss":§+#N§.§>%§,
         "text":"BOSS_SHAMAN.PROMPT"
      },{
         "boss":§+#N§.§9$6§,
         "text":"BOSS_ILLUSIONIST.PROMPT"
      },{
         "boss":§+#N§.§5#I§,
         "text":"BOSS_VIKINGS.PROMPT"
      },{
         "boss":§+#N§.§ #z§,
         "text":"BOSS_PIRATE.PROMPT"
      },{
         "boss":§+#N§.§@#5§,
         "text":"BOSS_WIND_MASTER.PROMPT"
      },{
         "boss":§+#N§.§1!+§,
         "text":"BOSS_YAKUZA.PROMPT"
      },{
         "boss":§+#N§.§,&7§,
         "text":"BOSS_REVIVED_CAPTAIN.PROMPT"
      },{
         "boss":§+#N§.§7$c§,
         "text":"BOSS_ROMEO_JULIET.PROMPT"
      },{
         "boss":§+#N§.§]!j§,
         "text":"BOSS_KING_DEAD.PROMPT"
      },{
         "boss":§+#N§.GHOST,
         "text":"BOSS_GHOST.PROMPT"
      },{
         "boss":§+#N§.§'#L§,
         "text":"BOSS_ENGINEER.PROMPT"
      },{
         "boss":§+#N§.§]%v§,
         "text":"BOSS_GUARDIANS.PROMPT"
      },{
         "boss":§+#N§.§<$N§,
         "text":"BOSS_DARK_KNIGHT.PROMPT"
      },{
         "boss":§+#N§.§[#J§,
         "text":"BOSS_ASSASSIN.PROMPT"
      },{
         "boss":§+#N§.§[<§,
         "text":"BOSS_ALCHEMIST.PROMPT"
      },{
         "boss":§+#N§.§@"f§,
         "text":"BOSS_ARCHBOT.PROMPT"
      },{
         "boss":§+#N§.EMPEROR,
         "text":"BOSS_EMPEROR.PROMPT"
      },{
         "boss":§+#N§.SCIENTIST,
         "text":"BOSS_SCIENTIST.PROMPT"
      },{
         "boss":§+#N§.§9!E§,
         "text":"BOSS_SYMBIOTE.PROMPT"
      },{
         "boss":§+#N§.§>& §,
         "text":"BOSS_BLACKSMITH.PROMPT"
      },{
         "boss":§+#N§.§]"f§,
         "text":"BOSS_SOUL_MASTER.PROMPT"
      },{
         "boss":§+#N§.§!"p§,
         "text":"BOSS_REBEL_ROBOT.PROMPT"
      },{
         "boss":§+#N§.§8"7§,
         "text":"BOSS_DEVOTEE.PROMPT"
      },{
         "boss":§+#N§.§"v§,
         "text":"BOSS_PALADIN.PROMPT"
      },{
         "boss":§+#N§.§<!Z§,
         "text":"BOSS_HACKER.PROMPT"
      },{
         "boss":§+#N§.THIEVES,
         "text":"BOSS_THIEVES.PROMPT"
      },{
         "boss":§+#N§.§2$&§,
         "text":"BOSS_TELEPATHIST.PROMPT"
      },{
         "boss":§+#N§.§=!q§,
         "text":"BOSS_PHANTOMS.PROMPT"
      },{
         "boss":§+#N§.§ %§,
         "text":"BOSS_ARCHDEMON.PROMPT"
      },{
         "boss":§+#N§.§+F§,
         "text":"BOSS_DRUID.PROMPT"
      },{
         "boss":§+#N§.PHARAOH,
         "text":"BOSS_PHARAOH.PROMPT"
      },{
         "boss":§+#N§.CYBORG,
         "text":"BOSS_CYBORG.PROMPT"
      },{
         "boss":§+#N§.§+W§,
         "text":"BOSS_JARL.PROMPT"
      },{
         "boss":§+#N§.§&$R§,
         "text":"BOSS_ENCHANTER.PROMPT"
      },{
         "boss":§+#N§.ARCHIVIST,
         "text":"BOSS_ARCHIVIST.PROMPT"
      },{
         "boss":§+#N§.§^%+§,
         "text":"BOSS_GRAVITY_MASTER.PROMPT"
      },{
         "boss":§+#N§.SOLAR_PRIEST,
         "text":"BOSS_SOLAR_PRIEST.PROMPT"
      },{
         "boss":§+#N§.§0"]§,
         "text":"BOSS_ARCTIC_WARRIOR.PROMPT"
      },{
         "boss":§+#N§.§!%Z§,
         "text":"BOSS_QUEEN_SPIDERS.PROMPT"
      }];
      
      public function §`%u§()
      {
         super();
      }
      
      public static function §0!1§(param1:int, param2:§+%]§) : void
      {
         if(!§8"%§.§&S§.§'`§())
         {
            return;
         }
         var _loc3_:§;#_§ = §<$c§.§ !=§(param1);
         var _loc4_:String = §0%§.format(§0$N§.SYSPVP_USE_FOR,{"weapon":_loc3_.§7%z§()});
         var _loc5_:§0%a§ = §5%8§.§75§(param2.squad.getNumber());
         _loc4_ = _loc4_.replace("%1",§2"e§.§6#R§(_loc5_.§7";§,_loc5_.textColor));
         §8"%§.§?!W§.§!#S§(_loc4_,0,null,false);
         var _loc6_:String = §<d§(param1);
         if(_loc6_)
         {
            §8"%§.§?!W§.§^"7§(_loc6_);
         }
      }
      
      private static function §<d§(param1:int) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §1$6§)
         {
            if(_loc2_.id == param1)
            {
               return §0$N§.§%! §(_loc2_.text);
            }
         }
         return "";
      }
      
      public static function §5$+§(param1:Bonus, param2:§+%]§) : void
      {
         if(!§8"%§.§&S§.§'`§())
         {
            return;
         }
         var _loc3_:String = §0%§.format(§0$N§.SYSPVP_WORK_FOR,{"bonus":param1.§@$+§()});
         var _loc4_:§0%a§ = §5%8§.§75§(param2.squad.getNumber());
         _loc3_ = _loc3_.replace("%1",§2"e§.§6#R§(_loc4_.§7";§,_loc4_.textColor));
         §8"%§.§?!W§.§!#S§(_loc3_,0,null,false);
         var _loc5_:String = §#% §(param1);
         if(_loc5_)
         {
            §8"%§.§?!W§.§^"7§(_loc5_);
         }
      }
      
      private static function §#% §(param1:Bonus) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §5%j§)
         {
            if(_loc2_.bonus == param1)
            {
               return §0$N§.§%! §(_loc2_.text);
            }
         }
         return "";
      }
      
      public static function §;$^§(param1:int, param2:UserProfile) : void
      {
         var _loc4_:§"Z§ = null;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc6_:§+%]§ = null;
         if(!§8"%§.§&S§.§'`§())
         {
            return;
         }
         var _loc3_:§<#&§ = §8"%§.§?!W§.§^!U§().wager;
         if(Boolean(param1 == PvpSystemMessage.SURRENDERED) && Boolean(_loc3_) && (_loc3_.id == §-"P§.§'$L§ || _loc3_.id == §-"P§.§,$^§))
         {
            _loc4_ = §8"%§.§?!W§.§4"m§.§?%j§(Application.userProfile);
            _loc5_ = §8"%§.§?!W§.§4"m§.§="T§(_loc4_.§&$;§());
            for each(_loc6_ in _loc5_)
            {
               if(_loc6_.squad.§&!G§().equals(param2))
               {
                  §8"%§.§?!W§.§^"7§(§0$N§.SYSPVP_COMPANION_SURRENDER);
                  break;
               }
            }
         }
      }
      
      public static function §+!W§() : void
      {
         if(!§8"%§.§&S§.§'`§())
         {
            return;
         }
         var _loc1_:§<#&§ = §8"%§.§?!W§.§^!U§().wager;
         if(Boolean(_loc1_) && (_loc1_.id == §-"P§.§"#p§ || _loc1_.id == §-"P§.§>!x§ || _loc1_.id == §-"P§.§,%@§ || _loc1_.id == §-"P§.§`$=§ || _loc1_.id == §-"P§.§68§ || _loc1_.id == §-"P§.MERCENARIES_DUEL))
         {
            §8"%§.§?!W§.§^"7§(§0$N§.SYSPVP_SECOND_TURN);
         }
      }
      
      public static function §5%n§(param1:int) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8$0§)
         {
            if(_loc2_.boss == param1)
            {
               return §2"e§.§;"e§(§0$N§.§%! §(_loc2_.text),"{br}","\n\n");
            }
         }
         return "";
      }
   }
}

