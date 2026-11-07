package §?%J§
{
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import § $q§.BagMenu;
   import § &5§.§0&$§;
   import § L§.§`T§;
   import §!!i§.§@&&§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&3§.§[$z§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§]!&§;
   import §+$=§.*;
   import §+%S§.§%!%§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §,#A§.§-$b§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.§<%;§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §4f§.§-&§;
   import §5!b§.§8#W§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7$1§.*;
   import §7$t§.§^$E§;
   import §8#a§.§@#c§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §9z§.§>"d§;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§5%8§;
   import §@"x§.*;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[" §.§ #a§;
   import §[" §.§3$y§;
   import §[" §.§^"c§;
   import §[$<§.§>!u§;
   import §[$<§.§>$o§;
   import §]#[§.§"!I§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import com.greensock.TweenMax;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.window.§4W§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.messages.client.PumpReactionRate;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.boss.§+"Y§;
   
   public class §#%G§ extends §-"o§
   {
      
      private static const point0:Point = new Point(1145.2,180.85);
      
      private static const point1:Point = new Point(1407.3,1102);
      
      private static const point2:Point = new Point(282.9,750.8);
      
      private static const point3:Point = new Point(164.45,106.6);
      
      private static const point4:Point = new Point(103.7,1296.5);
      
      private static const point5:Point = new Point(2714.5,1289.85);
      
      private static const point6:Point = new Point(2410.95,38.65);
      
      private const §1!1§:§&$2§ = new §&$2§(2);
      
      private const §4%T§:§&$2§ = new §&$2§(3);
      
      private const §-#W§:§&$2§ = new §&$2§(3);
      
      private const §@%7§:§&$2§ = new §&$2§(28);
      
      private const §1!@§:§&$2§ = new §&$2§(7);
      
      private const §`$`§:§&$2§ = new §&$2§(20);
      
      private const §3S§:§&$2§ = new §&$2§(100);
      
      private const §]$@§:§&$2§ = new §&$2§(300);
      
      private const §9"D§:§&$2§ = new §&$2§(70);
      
      private const §8$v§:§&$2§ = new §&$2§(3);
      
      private var boss:§+%]§;
      
      private var §4#s§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §0"H§:Vector.<§`T§> = new Vector.<§`T§>(0);
      
      private var §2$!§:§5$n§;
      
      private var §&^§:§'#R§;
      
      private var §?#q§:§+"Y§;
      
      private var §@"Q§:int = 0;
      
      private var §2"3§:§&$2§ = new §&$2§(0);
      
      private var §"%?§:int;
      
      public function §#%G§(param1:Boolean = false)
      {
         super(param1);
         if(param1)
         {
            resource = new §@#%§("engineer.swf");
         }
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§'#L§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         this.§"%?§ = param1.length;
         var _loc4_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc5_:§,!c§ = new §,!c§(13,1,0.7,param1);
         _loc4_.push(new §-!`§(§0$N§.§%! §("BOT_NAME_ENGINEER_BOSS"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_ENGINEER_BOSS"),_loc5_.level + 5,Race.§#%V§,17 * _loc5_.§?"-§ + 4 * _loc5_.§>$m§ + (§^i§ ? 453 : 603),_loc5_.level * 0.9,_loc5_.level * 1.07,§,$O§.BOSS_ENGINEER)]));
         return _loc4_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = §+%]§(param1[0].§1!n§()[0]);
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         §§push(this.boss);
         §§push(§§findproperty(§,%8§));
         var _temp_10:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,1),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.8),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,0.8),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6),new §>%Q§(§+%z§.§6&8§,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.5,3),new §>%Q§(§+%z§.BANDAGE,0.5,3),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.AK_47_UPG_1A,0.3),new §>%Q§(§+%z§.PLASMAGUN,0.1,§2a§ ? 0 : 2,30)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,1),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.8),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,0.8),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6),new §>%Q§(§+%z§.§6&8§,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.5,3),new §>%Q§(§+%z§.BANDAGE,0.5,3),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.AK_47_UPG_1A,0.3),new §>%Q§(§+%z§.PLASMAGUN,0.1,§2a§ ? 0 : 2,30)],uint.MAX_VALUE,true,true);
         if(§<#A§())
         {
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.6),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.3),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.3),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.3,1),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.ION_CANNON,0.8,2),new §>%Q§(§+%z§.ROBO_PIRANHA,0.4,2)],uint.MAX_VALUE);
         }
         this.boss.buffs.place(new §3#j§());
         this.§ #D§();
         this.boss.addEventListener(§0%v§.§&!D§,this.§^%m§);
         this.§2$!§ = new §5$n§();
         this.§2$!§.damage = new §&$2§(this.§`$`§.value);
         this.§2$!§.damageRadius = new §&$2§(0);
         this.§2$!§.explosionRadius = new §&$2§(0);
         super.§+$L§(param1);
         Application.scene.addEventListener(§`"^§.GROUND_LEVEL_CHANGED,this.§@%u§);
      }
      
      private function §^%m§(param1:DamageEvent) : void
      {
         if(param1.victim.disposed && param1.source is §[$z§ && param1.source.owner.squad.isAi())
         {
            dispatchEvent(new §7%K§(BossAchieves.ENGINEER_KILL_WITH_ROCKETS));
         }
         this.§&^§.update(0);
      }
      
      private function § #D§() : void
      {
         this.§&^§ = new §'#R§(this.§4%T§.value,§0$N§.§%! §("PROGRESS_BAR_ENGINEER"));
         Application.scene.§7#o§.§?!C§(this.§&^§.getClip());
         var _loc1_:Vector.<int> = §8"%§.§?!W§.§^!U§().missionIds;
         if(_loc1_.length == 2 && (this.§"%?§ == 2 && this.boss.squad.getNumber() == 3 || this.§"%?§ == 1 && this.boss.squad.getNumber() == 2) && (_loc1_[0] == _loc1_[1] || _loc1_[0] == §+#N§.§]%v§))
         {
            this.§&^§.getClip().y = this.§&^§.getClip().y + 50;
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc4_:§;#Q§ = null;
         var _loc5_:uint = 0;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.§4"2§();
            _loc5_ = 0;
            while(_loc5_ < this.§1!1§.value)
            {
               this.§%e§();
               _loc5_++;
            }
         }
         var _loc3_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§;#Q§]);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.owner == this.boss)
            {
               _loc4_.disposed = true;
            }
         }
         if(!param2.squad.isAi() && this.§]W§() && !param2.disposed)
         {
            this.§?#q§ = new §+"Y§(this.boss,param2.x,param2.y - this.§3S§.value / 2,this.§3S§,this.§]$@§,this.§9"D§);
         }
         if(param2.squad.isAi())
         {
            if(param2 == this.boss)
            {
               this.§6&<§();
               if(this.§&^§.§]P§() >= this.§&^§.§`%,§())
               {
                  if(this.§0"H§.length < this.§-#W§.value)
                  {
                     §1"-§.§8"l§(this.boss,§1"-§.§'$!§,46);
                     this.§%e§();
                     this.§&^§.update(0);
                     if(++this.§@"Q§ >= 2)
                     {
                        dispatchEvent(new §7%K§(BossAchieves.ENGINEER_DONT_LET_SPAWN_2_DRONES));
                     }
                  }
               }
               else
               {
                  this.§&^§.update(this.§&^§.§]P§() + 1);
               }
            }
         }
         if(§^i§ && !param2.squad.isAi() && §8"%§.§?!W§.§^!U§().§'#t§())
         {
            §-#M§.§0"%§(200,true);
         }
      }
      
      private function §]W§() : Boolean
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:§+%]§ = null;
         var _loc13_:uint = 0;
         var _loc1_:uint = this.§4#s§.length;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
         var _loc3_:Boolean = §4"m§.§,j§() == 1 || §4"m§.§,j§() == 2 && §^i§;
         var _loc4_:Array = [];
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc9_:int = 14329120;
         if(§&%2§())
         {
            _loc9_ = int(§5%8§.§75§(this.boss.squad.getNumber()).§=%%§);
         }
         _loc7_ = 0;
         while(_loc7_ < _loc1_)
         {
            _loc8_ = _loc7_ + 1;
            while(_loc8_ < _loc1_)
            {
               _loc11_ = false;
               for each(_loc12_ in _loc2_)
               {
                  if(!_loc12_.disposed && §-q§.§+K§(this.§4#s§[_loc7_].x,this.§4#s§[_loc7_].y,this.§4#s§[_loc8_].x,this.§4#s§[_loc8_].y,_loc12_.x,_loc12_.y,§<H§.§,%P§))
                  {
                     _loc11_ = true;
                     _loc6_ = true;
                     if(!_loc3_)
                     {
                        if(_loc12_ == currentUnit)
                        {
                           _loc5_ = false;
                        }
                        if(this.§2"3§.value < this.§8$v§.value)
                        {
                           new §;#Q§(this.boss,this.§2$!§,this.§4#s§[_loc7_],this.§4#s§[_loc8_],_loc9_,false);
                        }
                     }
                  }
               }
               if(!_loc11_)
               {
                  _loc4_[_loc4_.length] = [_loc7_,_loc8_];
               }
               _loc8_++;
            }
            _loc7_++;
         }
         if(_loc6_)
         {
            ++this.§2"3§.value;
            if(this.§2"3§.value == this.§8$v§.value + 1)
            {
               this.§2"3§.value = 0;
            }
         }
         var _loc10_:int = this.§1!@§.value - (§^i§ ? 1 : 0);
         _loc7_ = 0;
         while(_loc7_ < _loc10_)
         {
            _loc13_ = §8"%§.randomSeed.§,!q§(0,_loc4_.length - 1);
            new §;#Q§(this.boss,this.§2$!§,this.§4#s§[_loc4_[_loc13_][0]],this.§4#s§[_loc4_[_loc13_][1]],_loc9_,false);
            _loc4_.splice(_loc13_,1);
            _loc7_++;
         }
         §@%;§.play(§`!v§.§-%5§);
         return _loc5_;
      }
      
      private function §%e§() : void
      {
         var _loc2_:§`T§ = null;
         var _loc1_:Point = §-#M§.§,#e§(120,true,40);
         if(_loc1_)
         {
            for each(_loc2_ in this.§0"H§)
            {
               if(§-q§.distance(_loc1_.x,_loc1_.y,_loc2_.x,_loc2_.y) < 200)
               {
                  this.§%e§();
                  return;
               }
            }
            this.§0"H§.push(new §`T§(this.boss,_loc1_.x,_loc1_.y,this.§@%7§));
         }
      }
      
      private function §6&<§() : void
      {
         var _loc1_:* = int(this.§0"H§.length);
         var _loc2_:* = 0;
         while(_loc2_ < _loc1_)
         {
            if(this.§0"H§[_loc2_].disposed)
            {
               this.§0"H§.splice(_loc2_,1);
               _loc1_--;
               _loc2_--;
            }
            _loc2_++;
         }
      }
      
      private function §4"2§() : void
      {
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:§&"T§ = null;
         var _loc1_:Vector.<Point> = new Vector.<Point>(0);
         if(!§^i§)
         {
            _loc1_[0] = point0;
            _loc1_[1] = point1;
            _loc1_[2] = point2;
            _loc1_[3] = point3;
            _loc1_[4] = point4;
            _loc1_[5] = point5;
            _loc1_[6] = point6;
         }
         else
         {
            _loc3_ = Application.scene.width;
            _loc4_ = Application.scene.height;
            _loc5_ = 400;
            _loc7_ = 0;
            while(_loc7_ < this.§1!@§.value)
            {
               _loc6_ = §-#M§.§^N§(_loc3_,_loc4_,_loc1_,_loc5_);
               _loc1_.push(_loc6_);
               _loc7_++;
            }
         }
         for each(_loc2_ in _loc1_)
         {
            _loc8_ = new §&"T§();
            _loc8_.clip = §6#A§.§!&6§("LaserActivatorIndestructible");
            _loc8_.x = _loc2_.x;
            _loc8_.y = _loc2_.y;
            Application.scene.§+!K§(_loc8_.clip,_loc8_.x,_loc8_.y,true);
            this.§4#s§.push(_loc8_);
         }
      }
      
      private function §@%u§(param1:§<%;§) : void
      {
         var _loc2_:§&"T§ = null;
         for each(_loc2_ in this.§4#s§)
         {
            if(!_loc2_.disposed)
            {
               _loc2_.y += param1.delta;
            }
         }
      }
      
      override public function clear() : void
      {
         this.boss = null;
         this.§4#s§.length = 0;
         this.§0"H§.length = 0;
         this.§?#q§ = null;
         this.§2$!§ = null;
         Application.scene.§7#o§._removeChild(this.§&^§.getClip());
         Application.scene.removeEventListener(§`"^§.GROUND_LEVEL_CHANGED,this.§@%u§);
         this.§&^§.destroy();
         this.§&^§ = null;
      }
   }
}

