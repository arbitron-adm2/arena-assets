package §?%J§
{
   import § "d§.§,!c§;
   import §!!!§.§7&%§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#",§.§+!h§;
   import §#"V§.§6"%§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!@§.§!6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.§[k§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§ %c§;
   import §4!!§.§!%n§;
   import §4!!§.§#Z§;
   import §4!!§.§'$V§;
   import §4!!§.§2&F§;
   import §4!!§.§[%@§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §<"?§.*;
   import §<%k§.§`!v§;
   import §=$#§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§[%Z§;
   import §@!i§.*;
   import §@"x§.*;
   import §@#K§.§3&2§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §[$<§.§;"E§;
   import §^!"§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import com.greensock.*;
   import com.greensock.loading.*;
   import com.greensock.loading.core.*;
   import com.greensock.plugins.*;
   import config.§5%T§;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`"]§ extends §-"o§
   {
      
      private static const §#`§:uint = 5;
      
      private static const §;"_§:uint = 2;
      
      private static const POISON_DAMAGE:int = 50;
      
      private static const §"6§:int = 180;
      
      private static const FIRE_DAMAGE:int = 35;
      
      private static const FROST_DAMAGE:int = 60;
      
      private static const SHOCK_DAMAGE:int = 70;
      
      private static const §7#Y§:int = 150;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §&#$§:Number = Math.PI / 64;
      
      private var boss:§+%]§;
      
      private var §="q§:§"Z§;
      
      private var §2"&§:Vector.<Point>;
      
      private var reagents:Vector.<§+%q§>;
      
      private var §2$q§:Boolean;
      
      public function §`"]§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("alchemist.swf");
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§[<§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var stats:§,!c§ = null;
         var playerSquads:Vector.<§"Z§> = param1;
         var maxLevel:uint = param2;
         var unitCount:uint = param3;
         stats = new §,!c§(5,1.2,1,playerSquads);
         var mainTeam:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_ALCHEMIST_NAME,stats.level,Race.§#%V§,980 + 5 * stats.§?"-§ + 25 * stats.§3"`§,stats.level * 1.1,stats.level * 1.5,§,$O§.§ #2§,0,§5%T§.§<"0§);
         };
         var aiTeams:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         if(§^i§)
         {
            aiTeams.push(new §-!`§(§0$N§.BOSS_ALCHEMIST_NAME,[mainTeam(),this.§8&=§(stats,Race.§"$H§),this.§8&=§(stats,Race.ALIEN)]));
         }
         else
         {
            aiTeams.push(new §-!`§(§0$N§.BOSS_ALCHEMIST_NAME,[mainTeam()]));
            aiTeams.push(new §-!`§(§0$N§.BOSS_ALCHEMIST_ASISSTANT_TEAM,[this.§8&=§(stats),this.§8&=§(stats),this.§8&=§(stats)]));
         }
         return aiTeams;
      }
      
      private function §8&=§(param1:§,!c§, param2:Race = null) : UserProfile
      {
         return UserProfile.§'#3§(§0$N§.BOSS_ALCHEMIST_ASISSTANT,param1.level * 0.9,param2 ? param2 : (§0#2§.§"!w§() ? Race.§6#T§() : Race.§?#I§()),520 + 4 * param1.§?"-§ + 20 * param1.§3"`§,param1.level * 0.8,param1.level * 1.4,§0#2§.§"!w§() ? §,$O§.NIGHT_VISION_DEVICE : §,$O§.FIREPROOF_HELMET,§]!E§.TOTEM_POISON);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         this.boss = param1[0].§1!n§()[0];
         this.§="q§ = §^i§ ? param1[0] : param1[1];
         _loc2_ = this.§="q§.§1!n§();
         var _loc3_:uint = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§&&"§(_loc2_[_loc4_]);
            _loc4_++;
         }
         if(!§^i§)
         {
            this.§&&"§(this.boss);
         }
         this.boss.buffs.place(new §!"t§(100));
         this.§2"&§ = new Vector.<Point>(0);
         this.reagents = new Vector.<§+%q§>(0);
         super.§+$L§(param1);
      }
      
      private function §&&"§(param1:§+%]§) : void
      {
         var _loc3_:Boolean = false;
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         var _loc2_:Boolean = param1 == this.boss;
         _loc3_ = §<#A§();
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.8 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.PARASITE_UPG_1,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.4,3),new §>%Q§(§+%z§.BANDAGE,0.3,2)];
         var _loc4_:Vector.<§>%Q§> = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.8 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.PARASITE_UPG_1,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.4,3),new §>%Q§(§+%z§.BANDAGE,0.3,2)];
         if(§^i§ || !§2a§)
         {
            if(_loc2_)
            {
               _loc4_.push(new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.3,2),new §>%Q§(§+%z§.BLIZZARD,0.2,2));
            }
            _loc4_.push(new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.3,2));
         }
         param1.aiArsenal = new §,%8§(_loc4_,99,true,_loc2_ && !§2a§,!_loc2_);
         if(_loc3_)
         {
            if(_loc2_)
            {
               param1.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.5),new §>%Q§(§+%z§.§;%Z§,0.7),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.5,1),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.5,1)],uint.MAX_VALUE);
            }
            else
            {
               param1.aiArsenal.§0!]§(§+%z§.§!`§,0.4);
               param1.aiArsenal.§0!]§(§+%z§.DRILL_GUN_UPG_2,0.4);
               §§push(param1.aiArsenal);
               var _temp_22:* = new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.5),new §>%Q§(§+%z§.§;%Z§,0.7),new §>%Q§(§+%z§.VILE_PUMPKIN,0.5),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.6,2),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.5,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.5,2)];
               §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.5),new §>%Q§(§+%z§.§;%Z§,0.7),new §>%Q§(§+%z§.VILE_PUMPKIN,0.5),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.6,2),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.5,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.5,2)],uint.MAX_VALUE);
            }
         }
         §-#M§.§&"r§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:int = 0;
         var _loc6_:§"Z§ = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:§+%q§ = null;
         if(param1 == 1)
         {
            _loc3_ = 0;
            while(_loc3_ < §#`§)
            {
               this.§1$@§();
               _loc3_++;
            }
            if(!§^i§)
            {
               _loc6_ = §4"m§.§4$C§()[0];
               for each(_loc7_ in _loc6_.§1!n§())
               {
                  _loc7_.addEventListener(§0%v§.§&!D§,this.§'&A§);
                  _loc7_.addEventListener(§0%v§.DISPOSED,this.§;!<§);
               }
               Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
            }
         }
         else
         {
            this.§@"L§();
         }
         var _loc4_:Boolean = param2.squad == this.§="q§;
         var _loc5_:Boolean = this.reagents.length < §#`§;
         if(param2 == this.boss || §^i§ && this.boss.disposed && !_loc5_ && _loc4_)
         {
            this.§`#g§(param2);
         }
         else if(_loc5_ && _loc4_ && (§^i§ || !this.boss.disposed))
         {
            _loc3_ = 0;
            while(_loc3_ < §;"_§)
            {
               _loc8_ = this.§1$@§();
               §1"-§.§2$O§(param2,_loc8_,18,10,_loc8_.§?!+§(),5);
               §@%;§.play(§`!v§.§`%9§);
               if(!§^i§)
               {
                  dispatchEvent(new §7%K§(§!6§.§#!!§));
               }
               _loc3_++;
            }
         }
         if(!param2.squad.isAi() && !§^i§ && !§2a§)
         {
            §-#M§.§0"%§(300,true);
         }
         this.§2$q§ = false;
         super.§ "a§(param1,param2);
      }
      
      override public function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         if(!§^i§ && !§4"m§.§;#l§() && !this.§2$q§)
         {
            dispatchEvent(new §7%K§(§!6§.§@%P§));
         }
      }
      
      private function §;!<§(param1:Event) : void
      {
         §+%]§(param1.target).removeEventListener(§0%v§.§&!D§,this.§'&A§);
         §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,this.§;!<§);
      }
      
      private function §'&A§(param1:DamageEvent) : void
      {
         if(param1.power <= 0)
         {
            return;
         }
         if(!param1.source)
         {
            return;
         }
         if(!param1.source.owner)
         {
            return;
         }
         if(!param1.source.owner.squad.isAi())
         {
            return;
         }
         if(param1.source.owner == this.boss)
         {
            return;
         }
         if(param1.source.owner.squad == this.§="q§)
         {
            dispatchEvent(new §7%K§(§!6§.§,!=§));
         }
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit.squad.isAi())
         {
            return;
         }
         param1.unit.addEventListener(§0%v§.§&!D§,this.§'&A§);
         param1.unit.addEventListener(§0%v§.DISPOSED,this.§;!<§);
      }
      
      private function §1$@§() : §+%q§
      {
         var _loc1_:Point = null;
         _loc1_ = §-#M§.§^N§(Application.scene.width,Application.scene.height - 200,this.§2"&§,§7#Y§);
         var _loc2_:§+%q§ = §+%q§.create(_loc1_);
         if(!§^i§)
         {
            _loc2_.addEventListener(§0%v§.DISPOSED,this.§<""§);
         }
         this.§2"&§.push(_loc1_);
         this.reagents.push(_loc2_);
         return _loc2_;
      }
      
      private function §<""§(param1:Event) : void
      {
         §+%q§(param1.target).removeEventListener(§0%v§.DISPOSED,this.§<""§);
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         if(§4"m§.§;#l§())
         {
            return;
         }
         this.§2$q§ = true;
      }
      
      private function §@"L§() : void
      {
         var _loc1_:* = 0;
         if(this.reagents.length)
         {
            _loc1_ = int(this.reagents.length - 1);
            while(_loc1_ > -1)
            {
               if(Boolean(this.reagents[_loc1_]) && this.reagents[_loc1_].disposed)
               {
                  this.§2"&§.splice(this.§2"&§.indexOf(this.reagents[_loc1_].point),1);
                  this.reagents.splice(_loc1_,1);
               }
               _loc1_--;
            }
         }
      }
      
      private function §`#g§(param1:§+%]§) : void
      {
         var reg:§+%q§ = null;
         var trigger:§'$V§ = null;
         var tmpUnit:§+%]§ = null;
         var curUnit:§+%]§ = param1;
         reg = §<H§.§7%+§(curUnit,§""L§.§,"=§(this.reagents)) as §+%q§;
         if(reg)
         {
            trigger = new §'$V§(curUnit,reg.x,reg.y,true,curUnit,reg.§?!+§(),reg.§?!+§(),40);
            tmpUnit = curUnit;
            §8$a§.§&!#§(trigger,§0%v§.DISPOSED,function():void
            {
               if(!tmpUnit.disposed && !Application.scene.§@$I§.§=%d§())
               {
                  §+#j§(reg,tmpUnit);
               }
            });
            reg.disposed = true;
         }
      }
      
      private function §+#j§(param1:§+%q§, param2:§+%]§) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:§5$n§ = null;
         var _loc6_:§[%@§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc3_:Vector.<§+%]§> = param1.§?!+§() == §+%q§.§+#"§ ? §8"%§.§?!W§.§4"m§.§="T§(param2,false,true) : §8"%§.§?!W§.§4"m§.§6"M§(param2);
         for each(_loc4_ in _loc3_)
         {
            switch(param1.§?!+§())
            {
               case §+%q§.§^[§:
                  §@%;§.play(§`!v§.§`%9§);
                  new § %c§(param2,param2.x,param2.y,_loc4_,SHOCK_DAMAGE,30);
                  break;
               case §+%q§.§+"6§:
                  _loc5_ = §<$c§.§ !=§(§+%z§.BLIZZARD).§<$4§.clone();
                  _loc5_.damage.value = FROST_DAMAGE;
                  _loc6_ = new §[%@§(param2,param2.x,param2.y,_loc5_,Math.atan2(_loc4_.y - param2.y,_loc4_.x - param2.x),20,§#Z§.ZERO);
                  _loc6_.§<!K§(false,false);
                  break;
               case §+%q§.§+#"§:
                  new §2&F§(param2,param2.x,param2.y,_loc4_,§"6§);
                  break;
               case §+%q§.§9%X§:
                  new §!%n§(param2,param2.x,param2.y,false,_loc4_,POISON_DAMAGE);
                  break;
               case §+%q§.§&$A§:
                  _loc7_ = _loc4_.y - 10;
                  §'"$§.§]#I§(param2,_loc4_.x,_loc7_,null,FIRE_DAMAGE,20,0,false,false,§&!E§.FIRE);
                  §1"-§.explode(§;n§.§@"W§,_loc4_.x,_loc7_,30,§`!v§.§>l§);
                  _loc8_ = -2;
                  while(_loc8_ <= 2)
                  {
                     new §+&F§(param2,-PI_HALF + _loc8_ * §&#$§,8,_loc4_.x + _loc8_ * 6,_loc7_ - 5,50,true);
                     _loc8_++;
                  }
            }
         }
      }
   }
}

