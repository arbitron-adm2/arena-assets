package §&&6§
{
   import § "d§.§,!c§;
   import § &5§.§%$O§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%$n§.*;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §+%S§.§?3§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §4^§.§'!u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §6"'§.§=$@§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§`s§;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=1§.Archivist;
   import §?#g§.Race;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$K§.§[&"§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.§!$^§;
   import §[!`§.ArchivistSeal;
   import §]&?§.§?u§;
   import §^#[§.§&$2§;
   import §`v§.§2&H§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import config.§5%T§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   
   public class §?#m§ extends §-"o§
   {
      
      private static const §^"§:uint = 2;
      
      private static const §,%K§:uint = 2;
      
      private static const §"K§:§&$2§ = new §&$2§(-8);
      
      private static const §5"V§:uint = 90;
      
      private static const §+&#§:uint = 150;
      
      private static const §""`§:uint = 600;
      
      private static const §1%P§:uint = 140;
      
      private static const §4"$§:uint = 50;
      
      private static const §&"^§:uint = 300;
      
      private static const §']§:uint = 11;
      
      private static const § $z§:Point = new Point(1325,480);
      
      private var §]"9§:Array = [new Point(812,455),new Point(736,630),new Point(726,856),new Point(754,1060),new Point(806,1214),new Point(968,1408),new Point(678,1434),new Point(1158,1398),new Point(1444,1374),new Point(1752,1386),new Point(2037,1422),new Point(2037,1230),new Point(2061,1064),new Point(2099,899),new Point(2125,663),new Point(1156,1056),new Point(1484,1088),new Point(1684,1078)];
      
      private var boss:§+%]§;
      
      private var §!4§:§"Z§;
      
      private var §8%3§:Vector.<ArchivistSeal>;
      
      private var §,&1§:Vector.<§!$^§> = new Vector.<§!$^§>();
      
      private var §<!7§:Point;
      
      private var §6L§:uint = 0;
      
      public function §?#m§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("archivist.swf");
      }
      
      private static function §1$%§(param1:§+%]§) : §6S§
      {
         return new §6S§("ArchivistAuraIdle","ArchivistAuraAppear","ArchivistAuraFading");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var stats:§,!c§ = null;
         var mainTeam:Function = null;
         var playerSquads:Vector.<§"Z§> = param1;
         var maxLevel:uint = param2;
         var unitCount:uint = param3;
         stats = new §,!c§(5,1.1,0.9,playerSquads);
         mainTeam = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_ARCHIVIST_BOT_NAME_1,stats.level * 1.35,Race.§+#T§,(600 + 8 * stats.§?"-§ + 3 * stats.§>$m§) * 0.9,stats.level * 1.5,stats.level * 0.9,§,$O§.§5"=§,§]!E§.§=%>§,§5%T§.§'%j§);
         };
         var createMinionBoss:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_ARCHIVIST_BOT_NAME_2,stats.level * 1,Race.§#%V§,150 + 7 * stats.§?"-§ + 3 * stats.§>$m§,stats.level * 0.9,stats.level * 1.3,§,$O§.DARK_CULTIST_HOOD,§]!E§.TOTEM_POISON,§5%T§.§5&&§);
         };
         var aiTeams:Vector.<§-!`§> = new Vector.<§-!`§>();
         if(§^i§)
         {
            aiTeams.push(new §-!`§(§0$N§.BOSS_ARCHIVIST_BOT_NAME_1,[mainTeam(),createMinionBoss(),createMinionBoss()]));
         }
         else
         {
            aiTeams.push(new §-!`§(§0$N§.BOSS_ARCHIVIST_BOT_NAME_1,[mainTeam()]));
            aiTeams.push(new §-!`§(§0$N§.BOSS_ARCHIVIST_TEAM_BOT_2,[createMinionBoss(),createMinionBoss(),createMinionBoss()]));
         }
         return aiTeams;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc4_:Point = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:Vector.<§+%]§> = null;
         var _loc3_:Vector.<§+%]§> = param1[0].§1!n§();
         _loc2_ = §+%]§(_loc3_[0]);
         _loc2_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§[$X§,1),new §>%Q§(§+%z§.BLIZZARD,0.8),new §>%Q§(§+%z§.SOUL_GUN,0.8),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.DEEP_FREEZE,0.05,1,30)],uint.MAX_VALUE,false,true);
         _loc2_.buffs.place(new §3#j§());
         _loc2_.buffs.place(new §!"t§(§+&#§));
         _loc2_.buffs.place(new §[&"§(§""`§,§""`§ / 2));
         _loc2_.buffs.place(new §@$J§());
         this.boss = _loc2_;
         if(§^i§)
         {
            _loc5_ = _loc3_.length;
            _loc6_ = 1;
            while(_loc6_ < _loc5_)
            {
               _loc2_ = _loc3_[_loc6_];
               this.§2!P§(_loc2_);
               _loc6_++;
            }
         }
         else
         {
            _loc7_ = param1[1].§1!n§();
            for each(_loc2_ in _loc7_)
            {
               this.§2!P§(_loc2_);
            }
         }
         super.§+$L§(param1);
         this.§!4§ = param1[1];
         _loc4_ = new Point(Application.scene.width / 2,Application.scene.height / 2);
         this.§<!7§ = new Point(_loc4_.x + Archivist.§10§.x,_loc4_.y + Archivist.§10§.y);
         new §`s§(this.§<!7§.x,this.§<!7§.y,§5"V§,this.boss,this.§@$,§,false);
         this.§8%3§ = new Vector.<ArchivistSeal>(0);
      }
      
      private function §2!P§(param1:§+%]§) : void
      {
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)],uint.MAX_VALUE,true,false,true);
         param1.buffs.place(new §3#j§());
      }
      
      private function §3!t§() : void
      {
         var _loc1_:§!$^§ = null;
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc4_:§!$^§ = null;
         for each(_loc1_ in this.§,&1§)
         {
            _loc1_.disposed = true;
         }
         _loc2_ = new Point(§ $z§.x,§ $z§.y);
         _loc3_ = 0;
         while(_loc3_ < §']§)
         {
            _loc4_ = new §!$^§(this.boss,_loc2_.x,_loc2_.y);
            _loc2_.x += _loc4_.width * 1.5;
            this.§,&1§.push(_loc4_);
            _loc3_++;
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§,'§ = null;
         this.§3!t§();
         if(§4"m§.§,j§() == 1)
         {
            _loc3_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
            this.§]"9§ = §""L§.§6$6§(this.§]"9§,_loc3_);
            this.§>!9§(2,§'!u§.§!$@§);
            this.§>!9§(§,%K§,§'!u§.§,#O§);
         }
         if(param2 == this.boss)
         {
            if(this.§0"W§() < 2)
            {
               this.§>!9§(§8"%§.randomSeed.§,!q§(1,§^"§),§'!u§.§!$@§);
               this.§>!9§(1,§'!u§.§,#O§);
            }
         }
         if(this.§!4§.§@Q§(param2) && !param2.disposed)
         {
            this.§8!I§(param2);
         }
      }
      
      private function §>!9§(param1:uint, param2:String) : void
      {
         var _loc4_:ArchivistSeal = null;
         var _loc3_:uint = 0;
         while(_loc3_ < param1)
         {
            _loc4_ = new ArchivistSeal(this.boss,this.boss.x,this.boss.y,param2,new Point(this.§]"9§[this.§6L§].x,this.§]"9§[this.§6L§].y));
            _loc4_.addEventListener(§0%v§.DISPOSED,this.§8%C§);
            if(_loc4_.type == §'!u§.§,#O§ && !this.boss.buffs.hasBuff(§,"R§.NAME))
            {
               this.boss.buffs.place(new §,"R§(§1$%§(this.boss)));
            }
            this.§8%3§.push(_loc4_);
            if(this.§6L§ == this.§]"9§.length - 1)
            {
               this.§6L§ = 0;
            }
            ++this.§6L§;
            _loc3_++;
         }
      }
      
      private function §@$,§() : void
      {
         this.boss.setSpeedXY(0,0);
         §<H§.§"%8§(this.boss,this.§<!7§.x,this.§<!7§.y - §<H§.§,%P§);
         new §`s§(this.§<!7§.x,this.§<!7§.y,§5"V§,this.boss,this.§@$,§,false);
      }
      
      private function §8%C§(param1:Event) : void
      {
         var _loc2_:ArchivistSeal = null;
         for each(_loc2_ in this.§8%3§)
         {
            if(_loc2_.disposed)
            {
               if(!_loc2_.§@!6§)
               {
                  _loc2_.removeEventListener(§0%v§.DISPOSED,this.§8%C§);
                  _loc2_.§0%l§();
               }
            }
         }
         if(this.§0"W§() == 0)
         {
            this.boss.buffs.§6C§(§,"R§.NAME);
         }
      }
      
      private function §0"W§() : uint
      {
         var _loc2_:ArchivistSeal = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§8%3§)
         {
            if(!_loc2_.disposed && _loc2_.type == §'!u§.§,#O§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function §8!I§(param1:§+%]§) : void
      {
         var _loc6_:§+%]§ = null;
         var _loc7_:uint = 0;
         var _loc8_:Vector.<§+%]§> = null;
         var _loc9_:§+%]§ = null;
         var _loc10_:uint = 0;
         var _loc11_:Point = null;
         var _loc12_:uint = 0;
         var _loc2_:Vector.<Point> = new Vector.<Point>();
         var _loc3_:Vector.<§+%]§> = new Vector.<§+%]§>();
         var _loc4_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc5_:Vector.<§+%]§> = this.§!4§.§1!n§();
         for each(_loc6_ in _loc4_)
         {
            _loc8_ = new Vector.<§+%]§>(0);
            for each(_loc9_ in _loc5_)
            {
               if(_loc9_ != param1)
               {
                  _loc8_.push(_loc9_);
               }
            }
            _loc10_ = §<H§.§5"]§(_loc6_.x,_loc6_.y,§&"^§,_loc8_).length;
            if(_loc10_ == 0)
            {
               _loc11_ = §3+§.move(_loc6_,1,§1%P§);
               if(Math.abs(_loc11_.x - _loc6_.x) > §4"$§)
               {
                  _loc2_.push(_loc11_);
                  _loc3_.push(_loc6_);
               }
               _loc11_ = §3+§.move(_loc6_,-1,§1%P§);
               if(Math.abs(_loc11_.x - _loc6_.x) > §4"$§)
               {
                  _loc2_.push(_loc11_);
                  _loc3_.push(_loc6_);
               }
            }
         }
         _loc7_ = _loc2_.length;
         if(_loc7_ > 0)
         {
            _loc12_ = §8"%§.randomSeed.§,!q§(0,_loc7_ - 1);
            §<H§.§"%8§(param1,_loc2_[_loc12_].x,_loc2_[_loc12_].y);
            _loc3_[_loc12_].attributes.armor.§5#l§(§"K§.value);
            param1.attributes.armor.§5#l§(Math.abs(§"K§.value));
            §2!H§.§'!i§(§0%§.format(§0$N§.ARMOR_REDUCTION,{"value":§"K§.value}),§2!H§.§8"<§,_loc3_[_loc12_].x + _loc3_[_loc12_].width * 0.5,_loc3_[_loc12_].y + _loc3_[_loc12_].height * 0.5,20);
            §2!H§.§'!i§(§0%§.format(§0$N§.ARMOR_REDUCTION,{"value":"+" + Math.abs(§"K§.value)}),§2!H§.§5"H§,param1.x + param1.width * 0.5,param1.y + param1.height * 0.5,20);
            new §'$V§(_loc3_[_loc12_],_loc3_[_loc12_].x,_loc3_[_loc12_].y,true,param1,3355443,1402368,20);
            §@%;§.play(§`!v§.§'7§);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:ArchivistSeal = null;
         for each(_loc1_ in this.§8%3§)
         {
            _loc1_.removeEventListener(§0%v§.DISPOSED,this.§8%C§);
         }
         this.boss = null;
      }
   }
}

