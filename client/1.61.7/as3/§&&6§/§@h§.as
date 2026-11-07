package §&&6§
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §#"V§.*;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%&6§.§2$v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§?3§;
   import §+5§.§^$[§;
   import §,$J§.§,$O§;
   import §,$J§.§0%G§;
   import §-%B§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#8§.§2!?§;
   import §2#H§.§3$p§;
   import §2#W§.§ #,§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§`"y§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.§%!x§;
   import §=$#§.*;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §[!`§.SolarSphere;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.adobe.serialization.json.JSONEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§2#e§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §@h§ extends §-"o§
   {
      
      private var boss:§+%]§;
      
      private var §%!D§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §3$T§:§2#e§;
      
      private var locked:Boolean;
      
      public function §@h§(param1:Boolean = false)
      {
         super(param1);
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
            return UserProfile.§'#3§(§0$N§.§<N§("BOSS_SOLAR_PRIEST_NAME"),stats.level * 1.35,Race.§ "w§,650 + 7 * stats.§?"-§ + 3 * stats.§>$m§,stats.level * 1.5,stats.level * 0.9,§,$O§.§5#U§,§]!E§.§!%M§);
         };
         var createMinionBoss:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.§<N§("BOSS_SOLAR_PRIEST_BOT_NAME"),stats.level * 1,Race.§!!S§,350 + 5 * stats.§?"-§ + 3 * stats.§>$m§,stats.level * 0.7,stats.level * 1.1,§,$O§.§+0§,§]!E§.§5!P§);
         };
         var aiTeams:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         if(§^i§)
         {
            aiTeams.push(new §-!`§(§0$N§.§<N§("BOSS_SOLAR_PRIEST_NAME"),[mainTeam(),createMinionBoss(),createMinionBoss()]));
         }
         else
         {
            aiTeams.push(new §-!`§(§0$N§.§<N§("BOSS_SOLAR_PRIEST_NAME"),[mainTeam()]));
            aiTeams.push(new §-!`§(§0$N§.§<N§("BOSS_SOLAR_PRIEST_TEAM_BOT"),[createMinionBoss(),createMinionBoss(),createMinionBoss()]));
         }
         return aiTeams;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc3_:Vector.<§+%]§> = param1[0].§1!n§();
         _loc2_ = _loc3_[0];
         _loc2_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.2)],uint.MAX_VALUE,true,true);
         _loc2_.buffs.place(new §3#j§());
         _loc2_.buffs.place(new §3$p§());
         §8$a§.§&!#§(_loc2_,§0%v§.DISPOSED,this.onBossDisposed,false,100);
         _loc2_.addEventListener(§0%v§.§&!D§,this.§'$R§,false,100);
         this.boss = _loc2_;
         if(§^i§)
         {
            _loc4_ = _loc3_.length;
            _loc5_ = 1;
            while(_loc5_ < _loc4_)
            {
               _loc2_ = _loc3_[_loc5_];
               this.§2!P§(_loc2_);
               _loc5_++;
            }
         }
         else
         {
            _loc6_ = param1[1].§1!n§();
            for each(_loc2_ in _loc6_)
            {
               §8$a§.§&!#§(_loc2_,§0%v§.DISPOSED,this.§%#I§,false,100);
               _loc2_.addEventListener(§0%v§.§&!D§,this.§43§,false,100);
               this.§%!D§.push(_loc2_);
               this.§2!P§(_loc2_);
            }
         }
         super.§+$L§(param1);
         this.§3$T§ = §2#e§(Application.scene.§@$I§.§5# §(§2#e§));
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§,false,101);
      }
      
      private function §2!P§(param1:§+%]§) : void
      {
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.BANDAGE,0.3,1)]);
         param1.buffs.place(new §3#j§());
      }
      
      override public function §6&§(param1:uint) : void
      {
         var mines:Vector.<§&"T§> = null;
         var buff:§3$p§ = null;
         var sphere:SolarSphere = null;
         var gameObjectsInCircle:Vector.<§&"T§> = null;
         var obj:§&"T§ = null;
         var turnNumber:uint = param1;
         if(currentUnit == this.boss && !this.boss.disposed && §8"%§.§?!W§.§4"m§.§6"M§(this.boss).length > 0)
         {
            §@%;§.play(§`!v§.§#%w§);
            mines = Application.scene.§@$I§.§;%a§.§"L§([§^$[§]);
            buff = §3$p§(this.boss.buffs.getBuff(§3$p§.NAME));
            sphere = new SolarSphere(this.boss,this.boss.x,this.boss.y,null,this.§%!D§.length == 0);
            buff.disable = true;
            gameObjectsInCircle = §<H§.§3%'§(this.boss.x,this.boss.y,§<H§.§-#C§,mines);
            for each(obj in gameObjectsInCircle)
            {
               §1"-§.explode(§;n§.§@%d§,obj.x,obj.y,30,§`!v§.§["s§);
               obj.disposed = true;
            }
            §8$a§.§&!#§(sphere,§0%v§.DISPOSED,function():void
            {
               if(!Application.scene.§@$I§.§=%d§())
               {
                  locked = false;
                  §3$T§.§0$I§(boss);
                  boss.removeEventListener(§0%v§.§'$p§,§8%s§);
                  boss.setSpeedXY(0,1);
                  buff.disable = false;
               }
            });
            this.boss.y = -50;
         }
         else if(this.boss.disposed && !currentUnit.squad.isAi())
         {
            this.§4#1§(false);
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var turnNumber:uint = param1;
         var currentUnit:§+%]§ = param2;
         this.currentUnit = currentUnit;
         §-#M§.§0"%§(250);
         if(this.boss.disposed && !currentUnit.squad.isAi())
         {
            this.§4#1§(true);
            §8$a§.§&!#§(currentUnit,§0%v§.§&!D§,function():void
            {
               if(currentUnit == §8"%§.§?!W§.§4"m§.activeUnit)
               {
                  §4#1§(false);
               }
            });
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(currentUnit == this.boss && !this.boss.disposed)
         {
            this.locked = true;
            this.§3$T§.§-#X§(this.boss);
            this.boss.buffs.§6C§(§ !!§.NAME);
            this.boss.buffs.§6C§(§+m§.NAME);
            this.boss.addEventListener(§0%v§.§'$p§,this.§8%s§);
         }
      }
      
      private function §4#1§(param1:Boolean) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:§3$p§ = null;
         for each(_loc2_ in this.§%!D§)
         {
            if(!_loc2_.disposed)
            {
               _loc3_ = §3$p§(_loc2_.buffs.getBuff(§3$p§.NAME));
               if(_loc3_)
               {
                  _loc3_.§`"Y§ = param1;
               }
               if(param1)
               {
                  break;
               }
            }
         }
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         for each(_loc2_ in this.§%!D§)
         {
            if(!_loc2_.disposed)
            {
               new SolarSphere(this.boss,this.boss.x,this.boss.y,_loc2_);
            }
         }
      }
      
      private function §%#I§(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:§3$p§ = null;
         var _loc2_:Boolean = Application.scene.§@$I§.§=%d§();
         for each(_loc3_ in this.§%!D§)
         {
            if(_loc3_.disposed && !_loc2_)
            {
               if(Boolean(this.boss) && Boolean(!this.boss.disposed) && !this.locked)
               {
                  new SolarSphere(this.boss,_loc3_.x,_loc3_.y,this.boss);
               }
               else
               {
                  for each(_loc4_ in this.§%!D§)
                  {
                     if(!_loc4_.disposed)
                     {
                        new SolarSphere(_loc4_,_loc3_.x,_loc3_.y,_loc4_);
                        _loc5_ = §3$p§(_loc3_.buffs.getBuff(§3$p§.NAME));
                        if(_loc5_)
                        {
                           _loc5_.§[$#§();
                        }
                     }
                  }
               }
               _loc3_.removeEventListener(§0%v§.§&!D§,this.§43§);
               this.§%!D§.splice(this.§%!D§.indexOf(_loc3_),1);
               return;
            }
         }
      }
      
      public function §8%s§(param1:Event) : void
      {
         if(Boolean(this.boss) && !this.boss.disposed)
         {
            this.boss.setSpeedXY(0,0);
            this.boss.stable = true;
         }
      }
      
      private function §43§(param1:DamageEvent) : void
      {
         if(param1.source.owner == this.boss && param1.source.damageType == §&!E§.FIRE)
         {
            param1.power = 0;
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         if(this.locked)
         {
            param1.power = 0;
         }
      }
      
      override public function clear() : void
      {
         this.boss = null;
      }
   }
}

