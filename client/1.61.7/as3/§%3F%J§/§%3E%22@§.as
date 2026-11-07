package §?%J§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § "L§.RebelRobotTurret;
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§?3§;
   import §+&<§.*;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-!U§.*;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§[!F§;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4'§.§#"l§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!b§.*;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§`s§;
   import §7$t§.§2"y§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§7%-§;
   import §="z§.§9%1§;
   import §=$#§.*;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@<§.§+%]§;
   import §[!`§.§1%0§;
   import §]$v§.§<§;
   import §]^§.§-$T§;
   import §^!]§.§-$w§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiServerEvent;
   import com.greensock.core.TweenCore;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderItem;
   import config.§5%T§;
   import config.§9+§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.StatusEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class §>"@§ extends §-"o§
   {
      
      private static const WEAPONS_COOLDOWN:int = 5;
      
      §§push(§§findproperty(§+%g§));
      var _temp_5:* = new <Point>[new Point(872,1374),new Point(938,1036),new Point(852,595),new Point(1405,716),new Point(1787,551),new Point(2273,542),new Point(2414,864),new Point(2154,1363),new Point(1761,1295),new Point(1307,1153)];
      var _temp_10:* = new <Point>[new Point(872,1374),new Point(938,1036),new Point(852,595),new Point(1405,716),new Point(1787,551),new Point(2273,542),new Point(2414,864),new Point(2154,1363),new Point(1761,1295),new Point(1307,1153)];
      
      private static const §+%g§:Vector.<Point> = new <Point>[new Point(872,1374),new Point(938,1036),new Point(852,595),new Point(1405,716),new Point(1787,551),new Point(2273,542),new Point(2414,864),new Point(2154,1363),new Point(1761,1295),new Point(1307,1153)];
      
      private static const CAN_NOT_BLOCK:Vector.<int> = new <int>[§+%z§.ROPE];
      
      private var boss:§+%]§;
      
      private var §>#G§:§"Z§;
      
      private var §?%N§:§1%0§;
      
      private var §5";§:Vector.<RebelRobotTurret> = new Vector.<RebelRobotTurret>();
      
      private var §^!j§:Vector.<int>;
      
      public function §>"@§(param1:Boolean = false)
      {
         super(param1);
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§!"p§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      private static function §]%A§(param1:§,!c§, param2:Race) : UserProfile
      {
         return UserProfile.§'#3§(§0$N§.§<N§("BOSS_REBEL_ROBOT_SUPPORT"),param1.level * 0.9,param2,280 + 5 * param1.§?"-§ + 10 * param1.§3"`§,param1.level * 0.9,param1.level * 1.2,§,$O§.§]#c§);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.2,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_REBEL_ROBOT_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_REBEL_ROBOT_NAME"),_loc4_.level,Race.§-K§,955 + 4.9 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§,_loc4_.level * 1.5,_loc4_.level * 1.4,§,$O§.§=!]§,§]!E§.§@!4§,§5%T§.§-%Z§)]),new §-!`§(§0$N§.§<N§("BOSS_REBEL_ROBOT_SUPPORT_TEAM"),[§]%A§(_loc4_,Race.§-K§),§]%A§(_loc4_,Race.§-K§)])];
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_REBEL_ROBOT_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_REBEL_ROBOT_NAME"),_loc4_.level,Race.§-K§,955 + 4.9 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§,_loc4_.level * 1.5,_loc4_.level * 1.4,§,$O§.§=!]§,§]!E§.§@!4§,§5%T§.§-%Z§)]),new §-!`§(§0$N§.§<N§("BOSS_REBEL_ROBOT_SUPPORT_TEAM"),[§]%A§(_loc4_,Race.§-K§),§]%A§(_loc4_,Race.§-K§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_REBEL_ROBOT_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_REBEL_ROBOT_NAME"),_loc4_.level,Race.§-K§,955 + 4.9 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§,_loc4_.level * 1.5,_loc4_.level * 1.4,§,$O§.§=!]§,§]!E§.§@!4§,§5%T§.§-%Z§)]),new §-!`§(§0$N§.§<N§("BOSS_REBEL_ROBOT_SUPPORT_TEAM"),[§]%A§(_loc4_,Race.§-K§),§]%A§(_loc4_,Race.§-K§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         Application.scene.addEventListener(§0%v§.WEAPON_SHOOT,this.§9"w§);
         this.boss = param1[0].§1!n§()[0];
         var _loc2_:§^$E§ = this.boss.§2u§();
         this.boss.§7"i§(null);
         this.§0!I§(this.boss);
         this.boss.§7"i§(§<$c§.§^&1§(_loc2_.getId(),this.boss.record.getRace()));
         this.§>#G§ = param1[1];
         var _loc3_:uint = 0;
         while(_loc3_ < this.§>#G§.§1!n§().length)
         {
            this.§6& §(this.§>#G§.§1!n§()[_loc3_]);
            _loc3_++;
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:Point = null;
         var _loc4_:MovieClip = null;
         var _loc5_:§+%]§ = null;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            for each(_loc3_ in §+%g§)
            {
               _loc4_ = §6#A§.§!&6§("RebelRobotTurretMount");
               Application.scene.§+!K§(_loc4_,_loc3_.x,_loc3_.y,true);
            }
            this.§5";§.push(new RebelRobotTurret(§+%g§[3]));
            this.§5";§.push(new RebelRobotTurret(§+%g§[5]));
            this.§5";§.push(new RebelRobotTurret(§+%g§[8]));
            this.§5";§.push(new RebelRobotTurret(§+%g§[0]));
         }
         if(!param2.squad.isAi())
         {
            this.§^!j§ = new Vector.<int>(0);
            if(this.§?%N§)
            {
               this.§?%N§.disposed = true;
            }
            _loc5_ = this.boss.disposed ? §8"%§.§?!W§.§4"m§.§="T§(this.boss)[0] : this.boss;
            this.§?%N§ = new §1%0§(_loc5_,_loc5_.x,_loc5_.y - 130);
            if(!§2a§)
            {
               §-#M§.§0"%§(300);
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:RebelRobotTurret = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         if(!currentUnit.squad.isAi())
         {
            for each(_loc2_ in this.§5";§)
            {
               _loc3_ = 0;
               _loc4_ = int(§+%g§.length);
               while(_loc3_ < _loc4_)
               {
                  if(_loc2_.x == §+%g§[_loc3_].x && _loc2_.y == §+%g§[_loc3_].y)
                  {
                     _loc5_ = _loc3_ + 1;
                     _loc6_ = §+%g§[_loc5_ < _loc4_ ? _loc5_ : 0];
                     _loc2_.x = _loc6_.x;
                     _loc2_.y = _loc6_.y;
                     §1"-§.explode(§;n§.§6#B§,_loc6_.x,_loc6_.y,20);
                     Application.scene.§,# §(_loc6_.x,_loc6_.y,40);
                     break;
                  }
                  _loc3_++;
               }
            }
         }
      }
      
      private function §9"w§(param1:WeaponShootEvent) : void
      {
         var delayWeapon:Function;
         var src:§+%]§ = null;
         var weapons:Vector.<BackpackItem> = null;
         var index:int = 0;
         var i:int = 0;
         var length:int = 0;
         var rowIndex:int = 0;
         var colIndex:int = 0;
         var e:WeaponShootEvent = param1;
         if(!currentUnit.squad.isAi() && this.§^!j§.indexOf(e.recordId) == -1)
         {
            delayWeapon = function(param1:BackpackItem):void
            {
               if(Boolean(param1) && Boolean(!param1.isEmpty()) && CAN_NOT_BLOCK.indexOf(§1!S§.§[!r§(param1.getId())) == -1)
               {
                  param1.§=%;§(WEAPONS_COOLDOWN);
               }
            };
            this.§^!j§.push(e.recordId);
            src = this.boss.disposed ? §8"%§.§?!W§.§4"m§.§="T§(this.boss)[0] : this.boss;
            §1"-§.explode(§;n§.§1"E§,currentUnit.x,currentUnit.y,§<H§.§@k§,§`!v§.§`%9§);
            §1"-§.§2$O§(src,currentUnit,18,10,5806559,5);
            weapons = currentUnit.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
            i = 0;
            length = int(weapons.length);
            while(i < length)
            {
               if(Boolean(weapons[i]) && weapons[i].getId() == e.recordId)
               {
                  index = i;
                  break;
               }
               i++;
            }
            rowIndex = index + 1;
            while(rowIndex % §#$R§.§><§ != 0)
            {
               rowIndex++;
            }
            rowIndex--;
            i = 0;
            while(i < §#$R§.§><§)
            {
               delayWeapon(weapons[rowIndex--]);
               i++;
            }
            colIndex = index - §#$R§.§><§;
            while(colIndex > 0)
            {
               delayWeapon(weapons[colIndex]);
               colIndex -= §#$R§.§><§;
            }
            colIndex = index + §#$R§.§><§;
            while(colIndex < §#$R§.§0%&§)
            {
               delayWeapon(weapons[colIndex]);
               colIndex += §#$R§.§><§;
            }
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(param1.source is §<#1§ || param1.source.owner == this.boss)
         {
            param1.power = 0;
         }
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.SOUL_GUN),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.SOUL_GUN),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)],99);
         §-#M§.§&"r§(param1);
         param1.buffs.place(new §!"t§());
         param1.addEventListener(§0%v§.§&!D§,this.§?$u§,false,§[!F§.§##c§);
         param1.§9&2§();
      }
      
      private function §6& §(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)],99);
         §-#M§.§&"r§(param1);
         param1.addEventListener(§0%v§.§&!D§,this.§?$u§,false,§[!F§.§##c§);
      }
      
      override public function clear() : void
      {
         Application.scene.removeEventListener(§0%v§.WEAPON_SHOOT,this.§9"w§);
         this.boss = null;
      }
   }
}

