package §`#x§
{
   import § !P§.*;
   import § $q§.SelectMapMenu;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§ 6§;
   import §"!C§.§2v§;
   import §"!C§.§3#n§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0%[§.*;
   import §0&F§.UpgradeEvent;
   import §1!J§.§"t§;
   import §1#p§.*;
   import §2"L§.§!!<§;
   import §2"L§.§,'§;
   import §2"v§.*;
   import §2#i§.§+%z§;
   import §3#T§.Mole;
   import §3#a§.§[&A§;
   import §4!!§.§'$V§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §6#Z§.§&!Z§;
   import §7$t§.§2& §;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9![§.§^§;
   import §9%W§.§8#p§;
   import §9%W§.§`"y§;
   import §<"?§.§7!@§;
   import §<$q§.§"%r§;
   import §<%c§.§-! §;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=$#§.§1!$§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §[$<§.§>$o§;
   import §^#[§.§&$2§;
   import §^4§.§0#q§;
   import §^4§.§]"8§;
   import §`"p§.*;
   import §`%&§.§`§;
   import config.§=%A§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.StartBattle;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9#@§
   {
      
      private static const §-!+§:Vector.<uint> = new <uint>[§>!^§.§6#S§,§>!^§.§?$s§];
      
      private static const §<$A§:§ 6§ = new § 6§();
      
      private var info:§]$d§;
      
      private var §`u§:SelectMapMenu;
      
      public function §9#@§()
      {
         super();
      }
      
      private static function §"!s§() : void
      {
         §[&G§.§]$+§();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
      }
      
      public function §7"+§(param1:HeroicMissionStructure, param2:§8"e§) : void
      {
         var _loc3_:§7!@§ = null;
         if(!Application.isUserBusy())
         {
            Application.setUserBusy(true);
            §[&G§.§5%b§(§0$N§.BATTLE_MISSION_LOAD);
            this.info = new §]$d§(§&$a§.§5!w§);
            _loc3_ = new §7!@§(param1.mapId,param1.bossId1,param1.bossId2);
            this.info.scenario = _loc3_;
            this.info.§^"g§ = param2;
            this.info.mapId = _loc3_.mapRecord.id;
            this.info.noMapGround = _loc3_.noMapGround;
            this.info.missionIds.push(param1.bossId1);
            this.info.missionIds.push(param1.bossId2);
            this.info.setProfiles(new <UserProfile>[Application.userProfile],new <uint>[0]);
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§1!L§,true);
            }
            §"t§.§+%R§(_loc3_.getResources(),this.§+"?§,§"!s§);
         }
      }
      
      private function §+"?§() : void
      {
         §[&G§.§]$+§();
         this.§+%R§(null,this.§&M§);
      }
      
      public function §+%8§(param1:UserProfile, param2:§<$!§) : void
      {
         if(!Application.isUserBusy())
         {
            Application.setUserBusy(true);
            §[&G§.§5%b§(§0$N§.BATTLE_MISSION_LOAD);
            this.info = new §]$d§(§&$a§.§^!p§);
            §§push(this.info);
            var _temp_1:* = new <UserProfile>[Application.userProfile,param1];
            §§pop().setProfiles(new <UserProfile>[Application.userProfile,param1],§-!+§);
            this.info.missionIds.push(0);
            this.info.§-!K§ = param2;
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§^!p§,true);
            }
            this.§+%R§(null,this.§7!#§);
         }
      }
      
      private function §7!#§(param1:§0&$§) : void
      {
         this.info.scene = param1;
         this.info.scenario = new §-! §(this.info.mapId);
         §%%w§.§##$§(StartBattleResult,this.§<&1§);
         §%%w§.§##$§(ArenaLocked,this.§<%U§);
         var _loc2_:StartBattle = new StartBattle();
         _loc2_.missionId = this.info.missionIds[0];
         §%%w§.§,U§(_loc2_);
         §[&G§.§]$+§();
      }
      
      private function §<&1§(param1:§9$v§) : void
      {
         this.§!&<§();
         var _loc2_:StartBattleResult = StartBattleResult(param1.message);
         this.info.battleId = _loc2_.battleId;
         this.info.reagentsForBattle = §#$z§.§[%$§(_loc2_.reagentsForBattle);
         §8"%§.§?!W§.startBattle(this.info);
         this.reset(false);
      }
      
      public function §'!p§(param1:§8%6§) : void
      {
         var _loc2_:Class = null;
         var _loc3_:§>!^§ = null;
         if(!Application.isUserBusy())
         {
            Application.setUserBusy(true);
            §[&G§.§5%b§(§0$N§.BATTLE_MISSION_LOAD);
            this.info = new §]$d§(§&$a§.§5!w§);
            _loc2_ = param1.getClass();
            _loc3_ = new _loc2_();
            this.info.scenario = _loc3_;
            if(!this.info.scenario.mapRecord)
            {
               this.info.scenario.mapRecord = §=%A§.§7S§(§8"%§.§"!§.§0$?§(this.info));
            }
            this.info.mapId = _loc3_.mapRecord.id;
            this.info.noMapGround = _loc3_.noMapGround;
            this.info.missionIds.push(param1.getId());
            this.info.setProfiles(new <UserProfile>[Application.userProfile],new <uint>[0]);
            if(param1.getId() > 0 && §8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§#E§,true);
            }
            this.§+%R§(null,this.§&M§);
         }
      }
      
      private function §&M§(param1:§0&$§) : void
      {
         this.info.scene = param1;
         §%%w§.§##$§(StartBattleResult,this.§<&1§);
         §%%w§.§##$§(ArenaLocked,this.§<%U§);
         var _loc2_:StartBattle = new StartBattle();
         _loc2_.missionId = this.info.missionIds[0];
         §%%w§.§,U§(_loc2_);
      }
      
      public function §?%U§(param1:UserProfile, param2:Boolean) : void
      {
         if(!Application.isUserBusy())
         {
            Application.setUserBusy(true);
            this.info = new §]$d§(§&$a§.§9&A§);
            §§push(this.info);
            var _temp_1:* = new <UserProfile>[Application.userProfile,param1];
            §§pop().setProfiles(new <UserProfile>[Application.userProfile,param1],§-!+§);
            if(param2)
            {
               this.§+#H§();
            }
            else
            {
               this.§^!+§(null);
            }
         }
      }
      
      private function §;$f§(param1:§0&$§) : void
      {
         var scene:§0&$§ = param1;
         if(this.info.§<",§())
         {
            §[&A§.load(this.info.mapId,function():void
            {
               startBattle(scene);
            },this.§&9§);
         }
         else
         {
            this.info.scenario = new §>!^§(this.info.mapId);
            this.startBattle(scene);
         }
      }
      
      private function startBattle(param1:§0&$§) : void
      {
         this.info.scene = param1;
         §8"%§.§?!W§.startBattle(this.info);
         this.reset(false);
         §[&G§.§]$+§();
      }
      
      protected function §&9§() : void
      {
      }
      
      private function §!&<§() : void
      {
         §%%w§.§-"j§(StartBattleResult,this.§<&1§);
         §%%w§.§-"j§(ArenaLocked,this.§<%U§);
      }
      
      private function §<%U§(param1:§9$v§) : void
      {
         this.§!&<§();
         var _loc2_:ArenaLocked = ArenaLocked(param1.message);
         this.reset(true);
      }
      
      private function §+%R§(param1:Vector.<UserProfile>, param2:Function) : void
      {
         this.info.seed = Math.random() * 1000;
         if(!this.info.mapId)
         {
            this.info.mapId = §8"%§.§"!§.§0$?§(this.info);
         }
         §<$A§.load(this.info,param1,param2,this.§`#<§);
      }
      
      private function §`#<§() : void
      {
         this.reset(true);
         §[&G§.§]$+§();
      }
      
      private function reset(param1:Boolean) : void
      {
         this.info = null;
         if(param1)
         {
            Application.setUserBusy(false);
         }
      }
      
      private function §+#H§() : void
      {
         if(!this.§`u§)
         {
            this.§`u§ = new SelectMapMenu(this.info);
            this.§`u§.addEventListener(§[%w§.MENU_ITEM_SELECT,this.§^!+§);
            this.§`u§.addEventListener(§[%w§.WINDOW_CANCEL,this.§<!$§);
         }
         this.§`u§.show();
      }
      
      private function §<!$§(param1:Event) : void
      {
         if(!SelectMapMenu(param1.target).getSelected())
         {
            Application.setUserBusy(false);
            this.info = null;
         }
      }
      
      private function §^!+§(param1:Event) : void
      {
         this.info.mapId = this.§`u§.§^#u§ ? this.§`u§.§^#u§.id : 0;
         this.info.floodingOption = this.§`u§.floodingOption ? this.§`u§.floodingOption.concat() : null;
         this.info.options = this.§`u§.§7&!§.concat();
         this.§+%R§(null,this.§;$f§);
      }
      
      public function §5"I§(param1:int = 0) : void
      {
         var _loc2_:UserProfile = null;
         if(!Application.isUserBusy())
         {
            Application.setUserBusy(true);
            _loc2_ = UserProfile.§'#3§(Application.userProfile.getCharName(),15,Race.§+#T§,200,30,0);
            _loc2_.setIds(Application.userProfile.getId(),"");
            _loc2_.§;"!§(new <UserProfile>[_loc2_]);
            this.info = new §]$d§(§&$a§.§9&A§);
            this.info.setProfiles(new <UserProfile>[_loc2_,_loc2_],§-!+§);
            this.info.mapId = uint(param1) || §8"%§.§"!§.§8"G§();
            this.info.§9$=§ = true;
            this.info.questId = §2v§.ROPE_RACE;
            this.info.floodingOption = §"%r§.STABLE.name;
            this.§+%R§(null,this.§;$f§);
         }
      }
      
      public function getInfo() : §]$d§
      {
         return this.info;
      }
   }
}

