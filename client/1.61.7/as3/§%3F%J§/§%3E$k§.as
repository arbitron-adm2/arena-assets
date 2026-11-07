package §?%J§
{
   import § "d§.§,!c§;
   import § #m§.§2#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §#k§.§-#S§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-&5§.§ &8§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§7"3§;
   import §2#H§.§^!J§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §3%J§.*;
   import §4!!§.§&!^§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6$z§.§!"§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9![§.*;
   import §<!W§.*;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §@c§.§;##§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import config.§5%T§;
   import config.§;"I§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.Qtip;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.client.StartBattle;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §>$k§ extends §-"o§
   {
      
      private static const §"p§:String = "BossSoulRelease";
      
      private static const §[c§:String = "BossSoulCapture";
      
      private static const §+%F§:int = 3;
      
      private var boss:§+%]§;
      
      private var §>#G§:§"Z§;
      
      private var §4"d§:§+%]§;
      
      private var dummy:§&"T§;
      
      public function §>$k§(param1:Boolean = false)
      {
         super(param1);
      }
      
      private static function §]%A§(param1:§,!c§, param2:Race) : UserProfile
      {
         return UserProfile.§'#3§(§0$N§.§<N§("BOSS_SOUL_MASTER_PUPPET"),param1.level * 0.9,param2,360 + 3 * param1.§?"-§ + 10 * param1.§3"`§,param1.level * 0.8,param1.level * 1.2,§,$O§.DARK_CULTIST_HOOD,§]!E§.ARMY_KNIFE,62);
      }
      
      private static function §6& §(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)],99);
         §-#M§.§&"r§(param1);
         param1.graphics.getClip().transform.colorTransform = new ColorTransform(1,1,1,1,-100,-100,-100,0);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.2,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SOUL_MASTER_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SOUL_MASTER_NAME"),_loc4_.level,Race.§"$H§,875 + 4.4 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§,_loc4_.level * 1.2,_loc4_.level * 1.4,§,$O§.BOSS_SOUL_MASTER_HELM,§]!E§.BOSS_SOUL_MASTER_STAFF,§5%T§.§3#Y§)]),new §-!`§(§0$N§.§<N§("BOSS_SOUL_MASTER_PUPPET_TEAM"),[§]%A§(_loc4_,Race.§#%V§),§]%A§(_loc4_,Race.§#%V§),§]%A§(_loc4_,Race.§#%V§)])];
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SOUL_MASTER_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SOUL_MASTER_NAME"),_loc4_.level,Race.§"$H§,875 + 4.4 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§,_loc4_.level * 1.2,_loc4_.level * 1.4,§,$O§.BOSS_SOUL_MASTER_HELM,§]!E§.BOSS_SOUL_MASTER_STAFF,§5%T§.§3#Y§)]),new §-!`§(§0$N§.§<N§("BOSS_SOUL_MASTER_PUPPET_TEAM"),[§]%A§(_loc4_,Race.§#%V§),§]%A§(_loc4_,Race.§#%V§),§]%A§(_loc4_,Race.§#%V§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SOUL_MASTER_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SOUL_MASTER_NAME"),_loc4_.level,Race.§"$H§,875 + 4.4 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§,_loc4_.level * 1.2,_loc4_.level * 1.4,§,$O§.BOSS_SOUL_MASTER_HELM,§]!E§.BOSS_SOUL_MASTER_STAFF,§5%T§.§3#Y§)]),new §-!`§(§0$N§.§<N§("BOSS_SOUL_MASTER_PUPPET_TEAM"),[§]%A§(_loc4_,Race.§#%V§),§]%A§(_loc4_,Race.§#%V§),§]%A§(_loc4_,Race.§#%V§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         this.§0!I§(this.boss);
         this.§>#G§ = param1[1];
         var _loc2_:Vector.<§+%]§> = this.§>#G§.§1!n§();
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_.length)
         {
            §6& §(_loc2_[_loc3_]);
            _loc3_++;
         }
         Application.scene.addEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(!param2.squad.isAi())
         {
            §-#M§.§0"%§();
            this.boss.buffs.place(new §7"3§());
            if(param1 > 1 && param2.hp >= §+%F§)
            {
               this.§4$J§();
            }
         }
      }
      
      private function §4$J§() : void
      {
         var _loc2_:Point = null;
         var _loc4_:§&!^§ = null;
         var _loc1_:int = currentUnit.hp / §+%F§;
         var _loc3_:int = 1;
         while(_loc3_ < §+%F§)
         {
            do
            {
               _loc2_ = §-#M§.§,#e§();
            }
            while(§>#9§.unit(_loc2_.x,_loc2_.y));
            currentUnit.attributes.hp.change(-_loc1_);
            new §;##§(currentUnit,_loc2_.x,_loc2_.y,_loc1_);
            _loc4_ = new §&!^§(currentUnit,currentUnit.x,currentUnit.y,true,_loc2_,3381759,255,40);
            _loc4_.§4M§ = false;
            _loc3_++;
         }
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            §1"-§.§,&§(this.boss.x,this.boss.y,§6#A§.§!&6§(§"p§),0.8,true,this.§?G§);
            this.dummy = Application.scene.§,$z§();
         }
      }
      
      private function §?G§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = this.§>#G§.§1!n§();
         for each(_loc2_ in _loc1_)
         {
            if(!this.§4"d§ || this.§4"d§.hp < _loc2_.hp)
            {
               this.§4"d§ = _loc2_;
            }
         }
         if(this.§4"d§)
         {
            §1"-§.§,&§(this.§4"d§.x,this.§4"d§.y,§6#A§.§!&6§(§[c§),0.8,true,this.§0%D§);
         }
         else
         {
            this.dummy.disposed = true;
         }
      }
      
      private function §0%D§() : void
      {
         var _loc1_:UserProfile = null;
         var _loc2_:§+%]§ = null;
         _loc1_ = this.§4"d§.record.§ "P§(true);
         _loc1_.§-"§(this.boss.record.getCharName());
         _loc2_ = new §+%]§(_loc1_,this.§4"d§.x,this.§4"d§.y);
         _loc2_.attributes.hp.change(this.§4"d§.hp - this.§4"d§.attributes.hp.§#&"§());
         DamageEvent.§!"2§(null,this.§4"d§,_loc2_.hp,§0%v§.§'%e§);
         Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§2%l§,false,true,§0%v§.DAMAGE_TRIGGER));
         this.§4"d§.§9&2§();
         this.§4"d§.disposed = true;
         this.boss.squad.addUnit(_loc2_);
         this.boss = _loc2_;
         this.boss.§1%f§();
         this.§0!I§(this.boss);
         Application.scene.§7#o§.§"W§(this.boss);
         this.dummy.disposed = true;
         this.§4"d§ = null;
      }
      
      private function §1n§(param1:Event) : void
      {
         var _loc2_:§`"C§ = this.boss.buffs.getBuff(§7"3§.NAME);
         if(Boolean(_loc2_) && currentUnit != this.boss)
         {
            this.boss.buffs.§6C§(§7"3§.NAME);
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
         §8$a§.§&!#§(param1,§0%v§.DISPOSED,this.onBossDisposed,false,§[!F§.§6#@§);
         param1.§9&2§();
      }
      
      override public function clear() : void
      {
         Application.scene.removeEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
         this.boss = null;
      }
   }
}

