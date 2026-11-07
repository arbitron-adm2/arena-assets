package §&&6§
{
   import § "d§.§,!c§;
   import § $N§.§0+§;
   import § $N§.§<%j§;
   import § &5§.§0&$§;
   import §!$D§.*;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#$e§.§!a§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%"§.§[!^§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§0$+§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§>#M§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §7$t§.§[!X§;
   import §8#o§.§#$s§;
   import §8$Z§.§9!&§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§9#n§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §=1§.*;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §^!]§.TeleportEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0_§ extends §-"o§
   {
      
      private static const §9&&§:uint = 15;
      
      private static const §5#1§:uint = 150;
      
      private static const §,!X§:uint = 120;
      
      private static const §;&+§:uint = 210;
      
      private var §3%+§:int = -1;
      
      private var §=$!§:Boolean = false;
      
      private var §=%+§:Vector.<§0+§> = new Vector.<§0+§>(0);
      
      private var boss:§+%]§;
      
      public function §0_§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("psionic.swf");
         §5"i§ = false;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var stats:§,!c§ = null;
         var playerSquads:Vector.<§"Z§> = param1;
         var maxLevel:uint = param2;
         var unitCount:uint = param3;
         stats = new §,!c§(5,1.1,0.9,playerSquads);
         var mainTeam:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_PSIONICS_BOT_NAME_1,stats.level * 1.35,Race.§+#T§,(500 + 7 * stats.§?"-§ + 3 * stats.§>$m§) * 0.95,stats.level * 1.5,stats.level * 0.8,§,$O§.BOSS_PSI_TELEPATHIST);
         };
         var createMinionBoss:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_PSIONICS_BOT_NAME_2,stats.level * 1,Race.§ "w§,150 + 6 * stats.§?"-§ + 3 * stats.§>$m§,stats.level * 0.8,stats.level * 0.9,§,$O§.PSI_BIOTIC);
         };
         var aiTeams:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         if(§^i§)
         {
            aiTeams.push(new §-!`§(§0$N§.BOSS_PSIONICS_BOT_NAME_1,[mainTeam(),createMinionBoss(),createMinionBoss()]));
         }
         else
         {
            aiTeams.push(new §-!`§(§0$N§.BOSS_PSIONICS_BOT_NAME_1,[mainTeam()]));
            aiTeams.push(new §-!`§(§0$N§.BOSS_PSIONICS_TEAM_BOT_2,[createMinionBoss(),createMinionBoss(),createMinionBoss()]));
         }
         return aiTeams;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:Vector.<§+%]§> = null;
         var _loc2_:Vector.<§+%]§> = param1[0].§1!n§();
         var _loc3_:§+%]§ = _loc2_[0];
         §§push(_loc3_);
         §§push(§§findproperty(§,%8§));
         var _temp_7:* = new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.DOCTOR_BAG,0.2,1),new §>%Q§(§+%z§.PUPPET,0.05,§^i§ ? 0 : 1,30)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.DOCTOR_BAG,0.2,1),new §>%Q§(§+%z§.PUPPET,0.05,§^i§ ? 0 : 1,30)],uint.MAX_VALUE,true,true,false,§^i§);
         _loc3_.buffs.place(new §3#j§());
         this.boss = _loc3_;
         var _loc4_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc4_)
         {
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.ION_CANNON,0.8),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.7),new §>%Q§(§+%z§.§6&8§,0.5),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.5),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.8,1)],uint.MAX_VALUE);
         }
         if(§^i§)
         {
            _loc5_ = _loc2_.length;
            _loc6_ = 1;
            while(_loc6_ < _loc5_)
            {
               _loc3_ = _loc2_[_loc6_];
               this.§2!P§(_loc3_);
               _loc6_++;
            }
         }
         else
         {
            _loc7_ = param1[1].§1!n§();
            for each(_loc3_ in _loc7_)
            {
               this.§2!P§(_loc3_);
            }
         }
         super.§+$L§(param1);
      }
      
      private function §2!P§(param1:§+%]§) : void
      {
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.6 : 1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.6 : 1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)],uint.MAX_VALUE,true,true,true);
         if(_loc2_)
         {
            param1.aiArsenal.subtractWeapons([§+%z§.AK_47,§+%z§.AK_47_UPG_1A,§+%z§.AK_47_UPG_1B_SNOWBALL]);
            §§push(param1.aiArsenal);
            var _temp_11:* = new <§>%Q§>[new §>%Q§(§+%z§.AK_47_UPG_2A,0.5),new §>%Q§(§+%z§.§^%l§,0.5),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.8),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.7),new §>%Q§(§+%z§.BLIZZARD,0.5)];
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.AK_47_UPG_2A,0.5),new §>%Q§(§+%z§.§^%l§,0.5),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.8),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.7),new §>%Q§(§+%z§.BLIZZARD,0.5)],uint.MAX_VALUE);
         }
         param1.buffs.place(new §3#j§());
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:§"Z§ = null;
         super.§ "a§(param1,param2);
         if(§4"m§.§;#l§())
         {
            if(param2 != this.boss && !param2.buffs.hasBuff(§>#M§.NAME))
            {
               this.§#z§(param2);
            }
            if(!§^i§ || §4"m§.activeSquad == this.boss.squad)
            {
               this.§=$!§ = false;
            }
         }
         else if(!this.§=$!§ && param1 > 2 && !this.boss.disposed)
         {
            if(this.§3%+§ == -1)
            {
               this.§"&I§(param2);
               this.§3%+§ = param2.squad.getNumber();
            }
            else
            {
               _loc3_ = false;
               if(this.§3%+§ == param2.squad.getNumber())
               {
                  _loc4_ = §4"m§.§+!0§();
                  for each(_loc5_ in _loc4_)
                  {
                     if(!_loc5_.isAi() && _loc5_.eliminated)
                     {
                        _loc3_ = true;
                        break;
                     }
                  }
               }
               else
               {
                  _loc3_ = true;
               }
               if(_loc3_)
               {
                  this.§"&I§(param2);
                  this.§3%+§ = param2.squad.getNumber();
               }
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:§0+§ = null;
         if(§4"m§.§;#l§() && currentUnit != this.boss)
         {
            _loc2_ = §4"m§.§="T§(this.boss);
            for each(_loc3_ in _loc2_)
            {
               if(this.§=%+§.length >= §9&&§)
               {
                  this.§=%+§[0].disposed = true;
                  this.§=%+§[0].removeEventListener(§!!c§.SPHERE_DAMAGE,this.§9%3§);
                  this.§=%+§.splice(0,1);
               }
               _loc4_ = new §0+§(_loc3_,§,!X§);
               _loc4_.addEventListener(§!!c§.SPHERE_DAMAGE,this.§9%3§);
               this.§=%+§.push(_loc4_);
               §-#M§.§[&F§(_loc3_,16777215,16777215,80);
            }
         }
      }
      
      private function §9%3§(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function §"&I§(param1:§+%]§) : §+%]§
      {
         var _loc2_:§+%]§ = null;
         var _loc5_:Number = NaN;
         var _loc7_:§]$;§ = null;
         var _loc8_:uint = 0;
         var _loc9_:* = 0;
         var _loc3_:Vector.<§+%]§> = §4"m§.§="T§(param1);
         var _loc4_:uint = §;&+§;
         if(_loc3_.length == 0)
         {
            _loc2_ = param1;
            _loc7_ = §4"m§;
            if((Boolean(_loc7_)) && Boolean(!_loc7_.§1"3§()) && !_loc7_.§[!W§())
            {
               if(§4"m§.§=%g§())
               {
                  §8"%§.§?!W§.§4"m§.§%!J§(false);
               }
            }
            _loc4_ = 0;
         }
         else if(_loc3_.length > 1)
         {
            _loc8_ = param1.squad.getNumber();
            _loc9_ = int(_loc3_.length - 1);
            while(_loc9_ >= 0)
            {
               _loc2_ = _loc3_[_loc9_];
               if(_loc2_.squad.getNumber() == _loc8_)
               {
                  _loc3_.splice(_loc9_,1);
                  break;
               }
               _loc9_--;
            }
         }
         if(_loc3_.length != 0)
         {
            _loc2_ = _loc3_[randomSeed.§,!q§(0,_loc3_.length - 1)];
         }
         _loc5_ = 1 * randomSeed.§,!q§(0,360) / Math.PI;
         var _loc6_:Point = §-q§.§2!B§(§<%j§.§9!"§,_loc5_);
         new §<%j§(_loc2_,_loc2_.x + _loc6_.x,Math.min(_loc2_.y + _loc6_.y,Application.scene.height - 1),_loc4_);
         this.§=$!§ = true;
         return _loc2_;
      }
      
      private function §#z§(param1:§+%]§) : void
      {
         var _loc5_:§0+§ = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:Function = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§0+§]);
         var _loc3_:Vector.<§+%]§> = §4"m§.§6"M§(param1);
         var _loc4_:Boolean = false;
         for each(_loc5_ in _loc2_)
         {
            for each(_loc6_ in _loc3_)
            {
               if(§-q§.distance(_loc5_.x,_loc5_.y,_loc6_.x,_loc6_.y) <= §5#1§)
               {
                  _loc7_ = §1%"§.§]$<§(this.§[%Y§,this,[param1,_loc5_,_loc6_]);
                  §1"-§.§8"l§(param1,"LoopTimeBegin",8,_loc7_,true);
                  _loc4_ = true;
                  break;
               }
            }
            if(_loc4_)
            {
               break;
            }
         }
         if(Boolean(_loc2_.length) && !_loc4_)
         {
            dispatchEvent(new Event(§!!c§.PSIONIC_SKIP_TELEPORT));
         }
      }
      
      private function §[%Y§(param1:§+%]§, param2:§0+§, param3:§+%]§) : void
      {
         param2.§-$c§(§5#1§);
         param2.disposed = true;
         §1"-§.explode(§;n§.§1"E§,param3.x,param3.y,§5#1§ * 0.5);
         param3.buffs.§6C§(§ !!§.NAME);
         param3.buffs.§6C§(§[&;§.NAME);
         param3.buffs.§6C§(§+m§.NAME);
         this.§0z§(param1,24);
         §""n§.single(param1,§0%v§.TELEPORT,this.onTeleport,this,[param1],true);
         §<H§.§"%8§(param1,param2.x,param2.y);
      }
      
      private function onTeleport(param1:TeleportEvent, param2:§+%]§) : void
      {
         if(Boolean(param2) && Boolean(!param2.disposed) && !param2.buffs.hasBuff(§>#M§.NAME))
         {
            §1"-§.§8"l§(param2,"LoopTimeEnd");
         }
         this.§0z§(param2,5);
      }
      
      private function §0z§(param1:§+%]§, param2:int) : void
      {
         var owner:§+%]§ = param1;
         var delay:int = param2;
         if(Boolean(owner) && Boolean(!owner.disposed) && !owner.buffs.hasBuff(§>#M§.NAME))
         {
            §8$a§.§%!E§(delay,function():void
            {
               var _loc1_:TweenLiteVars = null;
               if(Boolean(owner) && !owner.disposed)
               {
                  _loc1_ = new TweenLiteVars({"useFrames":true});
                  TweenLite.to(owner.graphics.getClip(),5,_loc1_.autoAlpha(1));
               }
            });
         }
      }
      
      override public function clear() : void
      {
         this.boss = null;
      }
   }
}

