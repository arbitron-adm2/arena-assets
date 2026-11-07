package §8#`§
{
   import § !8§.§`!d§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §?#g§.§&"P§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import flash.errors.IllegalOperationError;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §4"y§ implements §#%r§
   {
      
      protected static const §%%e§:String = "../storage/icons/";
      
      protected static const §4$K§:String = "../storage/social/" + §8"%§.§[f§.getType().name + "/icons/";
      
      protected static const §"#'§:String = §%%e§ + "common/";
      
      protected static const §`"B§:String = §%%e§ + "races/";
      
      protected static const §"%L§:String = §%%e§ + "levelup_ru/";
      
      protected static const §8t§:String = §%%e§ + "levelup_en/";
      
      protected static const §!%=§:String = §%%e§ + "bonus/";
      
      protected static const §[&&§:String = §%%e§ + "clan/";
      
      protected static const §[%b§:String = §%%e§ + "battle/";
      
      protected static const §9%q§:String = §%%e§ + "rank/";
      
      public static const §3%=§:String = ".png";
      
      public static const §6!h§:String = ".jpg";
      
      protected static var §"$x§:String = §3%=§;
      
      §§push(§§findproperty(§ !`§));
      var _temp_18:* = new <String>["Farmer" + §"$x§,"Hunter" + §"$x§,"Maniacs" + §"$x§,"Miner" + §"$x§,"Samurai" + §"$x§,"Sergeant" + §"$x§,"BurningZombies" + §"$x§,"WanderingSpirit" + §"$x§,"VoodooShaman" + §"$x§,"Illusionist" + §"$x§,"Vikings" + §"$x§,"PirateGang" + §"$x§,"WindMaster" + §"$x§,"Yakuza" + §"$x§,"VengefulCaptain" + §"$x§,"RomeoAndJuliet" + §"$x§,"ZombieKing" + §"$x§,"AncientGhost" + §"$x§,"Engineer" + §"$x§,"GuardianOfDepths" + §"$x§,"DarkKnight" + §"$x§,"Assassin" + §"$x§,"Alchemic" + §"$x§,"Archibot" + §"$x§,"Emperor" + §"$x§,"Scientist" + §"$x§,"Symbiote" + §"$x§,"Blacksmith" + §"$x§,"SoulMaster" + §"$x§,"RebelRobot" + §"$x§,"Devotee" + §"$x§];
      
      protected static const § !`§:Vector.<String> = new <String>["Farmer" + §"$x§,"Hunter" + §"$x§,"Maniacs" + §"$x§,"Miner" + §"$x§,"Samurai" + §"$x§,"Sergeant" + §"$x§,"BurningZombies" + §"$x§,"WanderingSpirit" + §"$x§,"VoodooShaman" + §"$x§,"Illusionist" + §"$x§,"Vikings" + §"$x§,"PirateGang" + §"$x§,"WindMaster" + §"$x§,"Yakuza" + §"$x§,"VengefulCaptain" + §"$x§,"RomeoAndJuliet" + §"$x§,"ZombieKing" + §"$x§,"AncientGhost" + §"$x§,"Engineer" + §"$x§,"GuardianOfDepths" + §"$x§,"DarkKnight" + §"$x§,"Assassin" + §"$x§,"Alchemic" + §"$x§,"Archibot" + §"$x§,"Emperor" + §"$x§,"Scientist" + §"$x§,"Symbiote" + §"$x§,"Blacksmith" + §"$x§,"SoulMaster" + §"$x§,"RebelRobot" + §"$x§,"Devotee" + §"$x§];
      
      §§push(§§findproperty(§@$$§));
      var _temp_45:* = new <String>["Paladin" + §"$x§,"Hacker" + §"$x§,"Thief" + §"$x§,"Psionik" + §"$x§,"Phantom" + §"$x§,"Archidemon" + §"$x§,"Druid" + §"$x§,"Pharaoh" + §"$x§,"Cyborg" + §"$x§,"Yarl" + §"$x§,"Enchanter" + §"$x§,"Archivist" + §"$x§,"GravityMaster" + §"$x§,"SolarPriest" + §"$x§,"ArcticWarrior" + §"$x§,"SpidersQueen" + §"$x§];
      
      protected static const §@$$§:Vector.<String> = new <String>["Paladin" + §"$x§,"Hacker" + §"$x§,"Thief" + §"$x§,"Psionik" + §"$x§,"Phantom" + §"$x§,"Archidemon" + §"$x§,"Druid" + §"$x§,"Pharaoh" + §"$x§,"Cyborg" + §"$x§,"Yarl" + §"$x§,"Enchanter" + §"$x§,"Archivist" + §"$x§,"GravityMaster" + §"$x§,"SolarPriest" + §"$x§,"ArcticWarrior" + §"$x§,"SpidersQueen" + §"$x§];
      
      protected var §[!=§:String = §"#'§ + "wormixLogo" + §"$x§;
      
      public function §4"y§()
      {
         super();
      }
      
      public function §9#A§(param1:int) : String
      {
         return §[%b§ + "winSuperboss" + §"$x§;
      }
      
      public function get bossIcon() : String
      {
         return §!%=§ + "weaponBonus" + §"$x§;
      }
      
      public function get missionComplete() : String
      {
         return this.§[!=§;
      }
      
      public function get gladiatorComplete() : String
      {
         return §[%b§ + "gladiator" + §"$x§;
      }
      
      public function get bonusIcon() : String
      {
         return §!%=§ + "simpleBonus" + §"$x§;
      }
      
      public function get rubyFoundInHouse() : String
      {
         return §!%=§ + "rubyBonus" + §"$x§;
      }
      
      public function §?$^§(param1:§<,§) : String
      {
         return §!%=§ + §=$,§.valueOf(param1.type).value + "Bonus" + §"$x§;
      }
      
      public function get newItems() : String
      {
         return this.§[!=§;
      }
      
      public function get newTeamMate() : String
      {
         return §"#'§ + "newTeammate" + §"$x§;
      }
      
      public function get newTeamMateYou() : String
      {
         return §"#'§ + "newTeammateYou" + §"$x§;
      }
      
      public function get callToPvp() : Array
      {
         return [§!%=§ + "weaponBonus" + §"$x§,§[%b§ + "readyToBattle" + §"$x§];
      }
      
      public function get requestPumpReaction() : String
      {
         return §"#'§ + "reactionRequest" + §"$x§;
      }
      
      public function get activityPumpFriendsReaction() : String
      {
         return §"#'§ + "reaction" + §"$x§;
      }
      
      public function get postStatus() : String
      {
         return this.§[!=§;
      }
      
      public function §@$W§(param1:§^$E§) : String
      {
         return this.§[!=§;
      }
      
      public function §]#M§(param1:§;#_§) : String
      {
         return §"#'§ + "weaponBonus" + §"$x§;
      }
      
      public function §3k§(param1:§^%%§) : String
      {
         return this.§[!=§;
      }
      
      public function §5&<§(param1:§`!d§) : String
      {
         throw new IllegalOperationError();
      }
      
      public function §8$=§(param1:§`!d§) : String
      {
         return §`"B§ + param1.configName + §"$x§;
      }
      
      public function §]!r§(param1:§`!d§, param2:§&"P§) : String
      {
         return §`"B§ + param1.configName + "_" + param2.§^#;§().toLocaleLowerCase() + §"$x§;
      }
      
      public function get winInPvp() : String
      {
         return §[%b§ + "victory" + §"$x§;
      }
      
      public function get looseInPvp() : String
      {
         return §[%b§ + "loose" + §"$x§;
      }
      
      public function get tutorialIcon() : String
      {
         return this.§[!=§;
      }
      
      public function §@%t§(param1:Boolean) : String
      {
         return §!%=§ + (param1 ? "returnFriend" : "comeback") + "Bonus" + §"$x§;
      }
      
      public function get callOnReturnFriendButton() : String
      {
         throw new IllegalOperationError();
      }
      
      public function get inviteToClan() : String
      {
         return this.§4%=§("inviteToClan");
      }
      
      public function get openClan() : String
      {
         return this.§4%=§("openClan");
      }
      
      public function get createClan() : String
      {
         return this.§4%=§("createClan");
      }
      
      public function get extendClan() : String
      {
         return this.§4%=§("extendClan");
      }
      
      public function get joinToClan() : String
      {
         return this.§4%=§("joinToClan");
      }
      
      public function get leaveClan() : String
      {
         return this.§4%=§("leaveClan");
      }
      
      public function get medalsExchange() : String
      {
         return this.§4%=§("medalsExchange");
      }
      
      public function get promoteRank() : String
      {
         return this.§4%=§("promoteRank");
      }
      
      public function get winTwoOpponents() : String
      {
         return this.§[%9§("winTwoOpponents");
      }
      
      public function get winWithFriend() : String
      {
         return this.§[%9§("winWithFriend");
      }
      
      public function get looseTwoOpponents() : String
      {
         return this.§[%9§("looseTwoOpponents");
      }
      
      public function get looseWithFriend() : String
      {
         return this.§[%9§("looseWithFriend");
      }
      
      public function get looseSuperboss() : String
      {
         return this.§[%9§("looseSuperboss");
      }
      
      public function get winSuperboss() : String
      {
         return this.§[%9§("winSuperboss");
      }
      
      public function get looseSuperbossWithFriend() : String
      {
         return this.§[%9§("looseSuperbossWithFriend");
      }
      
      public function get winSuperbossWithFriend() : String
      {
         return this.§[%9§("winSuperbossWithFriend");
      }
      
      public function get §9!g§() : String
      {
         return §"$x§;
      }
      
      protected function §@"V§(param1:String) : String
      {
         return param1 + §"$x§;
      }
      
      protected function §'#4§(param1:String, param2:String) : String
      {
         return param1 + this.§@"V§(param2);
      }
      
      protected function §[%9§(param1:String) : String
      {
         return this.§'#4§(§[%b§,param1);
      }
      
      protected function §4%=§(param1:String) : String
      {
         return this.§'#4§(§[&&§,param1);
      }
      
      public function get newRank() : String
      {
         return §9%q§ + "newRank" + §"$x§;
      }
      
      public function get rubyLeague() : String
      {
         return §9%q§ + "rubyLeague" + §"$x§;
      }
      
      public function get winInRopeRace() : String
      {
         return §[%b§ + "victoryRopeRace" + §"$x§;
      }
      
      public function get looseInRopeRace() : String
      {
         return §[%b§ + "looseRopeRace" + §"$x§;
      }
      
      public function get winInRopeRaceCoop() : String
      {
         return §[%b§ + "victoryRopeRaceCoop" + §"$x§;
      }
   }
}

