package §&&6§
{
   import § "d§.§,!c§;
   import § &5§.§0&$§;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#W§.§?#]§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§]2§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2o§.§]#@§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §65§.§`"C§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§??§;
   import §7$t§.§[!X§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=!p§.§&&0§;
   import §=!p§.§1e§;
   import §>1§.§^"&§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[!`§.ArcticTorch;
   import §[$<§.§"#"§;
   import §]$v§.*;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import §`%&§.§`§;
   import config.§5%T§;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`!m§ extends §-"o§
   {
      
      private static const §`y§:int = 2;
      
      private static const §4"O§:String = "FreezingAnim";
      
      private static const §4$5§:int = 90;
      
      private static const §`"0§:int = -33;
      
      private static const §'$^§:Number = 0.5;
      
      private static const §@$<§:Number = 45;
      
      private static const §1$[§:String = "AmBlizzard";
      
      private static const §#"&§:int = 50;
      
      private static const § _§:int = 40;
      
      private static const §,%a§:int = 18;
      
      private static const §8"A§:int = 4;
      
      private static const §-"@§:int = 3;
      
      §§push(§§findproperty(§<$z§));
      var _temp_4:* = new <Point>[new Point(700,400),new Point(2350,400),new Point(1185,665),new Point(1860,660),new Point(515,300),new Point(2485,220)];
      
      private static const §<$z§:Vector.<Point> = new <Point>[new Point(700,400),new Point(2350,400),new Point(1185,665),new Point(1860,660),new Point(515,300),new Point(2485,220)];
      
      private var boss:§+%]§;
      
      private var §>#G§:§"Z§;
      
      private var §^$s§:Vector.<ArcticTorch> = new Vector.<ArcticTorch>();
      
      private var §=a§:Boolean = false;
      
      private var counter:uint = 0;
      
      public function §`!m§(param1:Boolean = false)
      {
         super(param1);
      }
      
      private static function §43§(param1:DamageEvent) : void
      {
         if(param1.source.damageType != §&!E§.FIRE)
         {
            param1.power = 0;
         }
      }
      
      private static function §+g§(param1:UserProfile) : void
      {
         var _loc2_:BackpackItem = param1.getBattleBackpack().§8&E§(§+%z§.§0!m§);
         if(_loc2_)
         {
            delete param1.getBattleBackpack().§^%Z§()[_loc2_.getId()];
         }
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
            return UserProfile.§'#3§(§0$N§.§<N§("BOSS_ARCTIC_WARRIOR_NAME"),stats.level,Race.§!!S§,(920 + 4.5 * stats.§?"-§ * §,!c§.§=$k§(playerSquads) + 20 * stats.§3"`§) * 0.9,stats.level * 1.1,stats.level * 1.5,§,$O§.BOSS_ARCTIC_HELM,§]!E§.BOSS_ARCTIC_SWORD,§5%T§.§"!x§);
         };
         var createMinionBoss:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.ARCTIC_WARRIOR_SUPPORT_NAME,30,Race.§"$H§,200 + 2.5 * stats.§?"-§ * §,!c§.§=$k§(playerSquads) + 8 * stats.§3"`§,0,100,0,§]!E§.§3"5§);
         };
         var aiTeams:Vector.<§-!`§> = new Vector.<§-!`§>();
         if(§^i§)
         {
            aiTeams.push(new §-!`§(§0$N§.§<N§("BOSS_ARCTIC_WARRIOR_NAME"),[mainTeam(),createMinionBoss(),createMinionBoss()]));
         }
         else
         {
            aiTeams.push(new §-!`§(§0$N§.§<N§("BOSS_ARCTIC_WARRIOR_NAME"),[mainTeam()]));
            aiTeams.push(new §-!`§(§0$N§.ARCTIC_WARRIOR_SUPPORT_NAME,[createMinionBoss(),createMinionBoss(),createMinionBoss()]));
         }
         return aiTeams;
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)],99,true,true);
         var _loc2_:§^%%§ = param1.§+!b§();
         param1.§;"U§(null);
         §-#M§.§&"r§(param1);
         param1.§;"U§(§<$c§.§"$h§(_loc2_.getId()));
         var _loc3_:§`"C§ = param1.buffs.getBuff(§3#j§.NAME);
         (_loc3_ as §3#j§).§?$e§(§<$z§);
      }
      
      private function §2!P§(param1:§+%]§) : void
      {
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)],uint.MAX_VALUE,true,false,true);
         param1.buffs.place(new §3#j§());
         param1.clip.transform.colorTransform = new ColorTransform(1,1,1,1,0,0,80,0);
         param1.addEventListener(§0%v§.§&!D§,§43§,false,§[!F§.§##c§);
         param1.§=%P§();
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc3_:Vector.<§+%]§> = param1[0].§1!n§();
         _loc2_ = §+%]§(_loc3_[0]);
         this.§0!I§(_loc2_);
         this.boss = _loc2_;
         if(§^i§)
         {
            this.§>#G§ = param1[0];
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
            this.§>#G§ = param1[1];
            _loc6_ = param1[1].§1!n§();
            for each(_loc2_ in _loc6_)
            {
               this.§2!P§(_loc2_);
            }
         }
         super.§+$L§(param1);
         Application.scene.weather = §0&$§.§`#@§;
         this.§8$P§();
         this.boss.addEventListener(§0%v§.§&!D§,this.§'$R§,false,§[!F§.§##c§);
         Application.scene.addEventListener(§0%v§.FRAME,this.§;!l§);
         Application.scene.addEventListener(§0%v§.WEAPON_SHOOT,this.§3%K§);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var turnNumber:uint = param1;
         var currentUnit:§+%]§ = param2;
         this.currentUnit = currentUnit;
         if(currentUnit.squad.isAi())
         {
            this.§=a§ = false;
         }
         else if(!currentUnit.squad.isAi())
         {
            §-#M§.§0"%§();
            this.§=a§ = this.boss.disposed || this.§0%^§ || this.§>#G§.§1%`§ > 0;
            if(this.§=a§)
            {
               §8$a§.§&!#§(currentUnit,§0%v§.§&!D§,function():void
               {
                  if(§8"%§.§?!W§.§4"m§.activeUnit == currentUnit)
                  {
                     §=a§ = false;
                  }
               });
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:ArcticTorch = null;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         if(!currentUnit.squad.isAi())
         {
            if(!currentUnit.buffs.§%%b§([§+N§.NAME,§2&>§.NAME]))
            {
               this.§'! §(currentUnit);
            }
            for each(_loc2_ in this.§^$s§)
            {
               _loc2_.disposed = true;
            }
            this.§^$s§ = new Vector.<ArcticTorch>();
            _loc3_ = §`y§;
            _loc4_ = §""L§.§,"=§(this.§^$s§);
            _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               _loc6_ = §-#M§.§`"5§(_loc4_,110,50,false);
               if(_loc6_)
               {
                  this.§^$s§.push(new ArcticTorch(_loc6_));
               }
               _loc5_++;
            }
            §+g§(currentUnit.squad.§?"#§());
         }
         else if(!this.boss.disposed && this.§0%^§ && !this.boss.buffs.hasBuff(§+N§.NAME))
         {
            this.§'! §(this.boss);
         }
      }
      
      private function §'! §(param1:§+%]§) : void
      {
         var clip:MovieClip = null;
         var dummy:§&"T§ = null;
         var unit:§+%]§ = param1;
         clip = §6#A§.§!&6§(§4"O§);
         dummy = Application.scene.§,$z§();
         unit.buffs.§6C§(§+m§.NAME);
         unit.graphics.§5$#§(§2m§.§-w§,clip);
         §8$a§.§%!E§(§4$5§,function():void
         {
            unit.graphics.detachClip(clip,§2m§.§-w§);
            unit.buffs.place(new §+N§(boss));
            dummy.disposed = true;
         });
      }
      
      private function §;!l§(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Vector.<int> = null;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:int = 0;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         if(this.§=a§ && this.counter++ % §@$<§ == 0 && !§8"%§.§?!W§.§4"m§.§1"3§())
         {
            _loc2_ = this.boss.disposed || this.§0%^§ ? §8"A§ : int(0 + §-"@§ * this.§>#G§.§1%`§);
            _loc3_ = new Vector.<int>();
            _loc4_ = §8"%§.§?!W§.§4"m§.§="T§(currentUnit);
            for each(_loc5_ in _loc4_)
            {
               _loc3_.push(_loc5_.x);
            }
            _loc6_ = 0;
            while(_loc6_ < _loc2_)
            {
               _loc7_ = null;
               while(!_loc7_)
               {
                  _loc7_ = new Point(§8"%§.randomSeed.§,!q§(200,Application.scene.width - 200),0);
                  for each(_loc8_ in _loc3_)
                  {
                     if(Boolean(_loc7_) && Boolean(_loc8_ + §<H§.§@% § >= _loc7_.x) && _loc8_ - §<H§.§@% § <= _loc7_.x)
                     {
                        _loc7_ = null;
                     }
                  }
               }
               new §^"&§(this.boss,§5$n§.§<#=§(§1$[§,§#"&§,§ _§,§,%a§),_loc7_);
               _loc3_.push(_loc7_.x);
               _loc6_++;
            }
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = param1.source.owner;
         if(param1.source.damageType == §&!E§.COLD)
         {
            this.boss.attributes.hp.§#1§(param1.power,false,0);
            param1.power = 0;
         }
         else if(this.boss.buffs.hasBuff(§+N§.NAME) || this.boss.hp - param1.power <= 0 && this.§7"r§())
         {
            §2!H§.§'!i§("(" + int(param1.power) + ")",§2!H§.§?$!§,this.boss.x + this.boss.width * 0.5,this.boss.y + this.boss.height * 0.5,20);
            param1.power = 0;
         }
         if(Boolean(_loc2_) && Boolean(!_loc2_.squad.isAi()) && !_loc2_.buffs.§%%b§([§+N§.NAME,§+m§.NAME]))
         {
            _loc2_.buffs.place(new §+m§(this.boss,2));
         }
      }
      
      private function §8$P§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = §`"0§;
         var _loc2_:int = int(_loc1_ * 1.5);
         Application.scene.§-%[§(new ColorTransform(1,1,1,1,_loc1_,_loc1_,_loc1_));
         Application.scene.§'#!§(new ColorTransform(1,1,1,1,_loc1_,_loc1_,_loc1_));
         Application.scene.§6%Z§(new ColorTransform(1,1,1,1,_loc2_,_loc2_,_loc2_));
      }
      
      private function §7"r§() : Boolean
      {
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(this.boss);
         if(_loc1_.length > 0)
         {
            §'$V§.§=!Y§(this.boss,this.boss.x,this.boss.y,this.boss,null,5162495,3768283);
            this.boss.x = _loc1_[0].x;
            this.boss.y = _loc1_[0].y;
            §1"-§.explode(§;n§.§8!-§,_loc1_[0].x,_loc1_[0].y,§<H§.§,%P§,§`!v§.§-$L§);
            this.boss.attributes.hp.change(Math.abs(_loc1_[0].hp - this.boss.hp));
            _loc1_[0].disposed = true;
            return true;
         }
         return false;
      }
      
      private function §3%K§(param1:WeaponShootEvent) : void
      {
         if(param1.stopsTimer)
         {
            this.§=a§ = false;
         }
      }
      
      private function get §0%^§() : Boolean
      {
         return this.boss.hp / this.boss.attributes.hp.§#&"§() <= §'$^§;
      }
      
      override public function clear() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.§;!l§);
         Application.scene.removeEventListener(§0%v§.WEAPON_SHOOT,this.§3%K§);
         this.boss = null;
      }
   }
}

