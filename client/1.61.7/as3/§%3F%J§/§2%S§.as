package §?%J§
{
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!"r§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §"$+§.§`&$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&%7§.§'&2§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1&-§.§4!s§;
   import §2"L§.§^$y§;
   import §2#H§.§3$p§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§2&F§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7$1§.§,&D§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#<§.*;
   import §8#o§.§#$s§;
   import §<!^§.§["l§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=&!§.§<$Z§;
   import §>!_§.§'!&§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?>§.§4#o§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$v§.*;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$<§.§;%S§;
   import §]#[§.§2%o§;
   import §^!]§.TeleportEvent;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2%S§ extends §-"o§
   {
      
      private static const §9#[§:§&$2§ = new §&$2§(17);
      
      private static const §@9§:§&$2§ = new §&$2§(15);
      
      private static const §%"_§:§&$2§ = new §&$2§(10);
      
      private var §'!,§:§&$2§ = new §&$2§(29);
      
      private var §>%Y§:§&$2§ = new §&$2§(2);
      
      private var paramSet:§5$n§;
      
      private var §^%4§:Vector.<§+%]§> = new Vector.<§+%]§>();
      
      private var boss:§+%]§;
      
      public function §2%S§(param1:Boolean = false)
      {
         super(param1);
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§]"T§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = 0;
         _loc4_ = uint(7 + 1.6 * param2);
         this.paramSet = §5$n§.§<#=§("AmGuardingBot",§@9§ + §-q§.§8$G§(§%"_§.value / 2,0.7 * _loc4_),50,30);
         this.§'!,§.value += §-q§.§8$G§(§%"_§.value,_loc4_);
         this.§>%Y§.value += §-q§.§8$G§(§%"_§.value,_loc4_);
         var _loc5_:UserProfile = UserProfile.§'#3§(§0$N§.§%! §("BOT_SERGEANT_NAME_1"),_loc4_,Race.§+#T§,(60 + 6 * param2 + 11 * param2 * param3) * (§2a§ ? 0.9 : 1),5 + _loc4_,_loc4_ * 0.6,§,$O§.§ ![§);
         var _loc6_:Vector.<§-!`§> = new Vector.<§-!`§>();
         if(§^i§)
         {
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_SERGEANT_NAME_1"),[_loc5_,this.§2%+§(Race.§ "w§,param2,param3),this.§2%+§(Race.§+#T§,param2,param3)]));
         }
         else
         {
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_SERGEANT_NAME_1"),[_loc5_]));
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_SERGEANT_NAME_2"),[this.§2%+§(Race.§ "w§,param2,param3),this.§2%+§(Race.§+#T§,param2,param3)]));
         }
         return _loc6_;
      }
      
      private function §2%+§(param1:Race, param2:uint, param3:uint) : UserProfile
      {
         var _loc4_:uint = uint(5 + 1.5 * param2);
         return UserProfile.§'#3§(§0$N§.§%! §("BOT_SERGEANT_NAME_2"),4 + _loc4_ * 0.85,param1,18 + 4 * param2 + 8 * param2 * param3,2 + _loc4_ * 0.8,2 + _loc4_ * 0.4,§,$O§.§3"U§);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>();
         if(§^i§)
         {
            _loc2_ = param1[0].§1!n§();
         }
         else
         {
            _loc2_.push(param1[0].§1!n§()[0]);
            _loc2_.push(param1[1].§1!n§()[0]);
            _loc2_.push(param1[1].§1!n§()[1]);
         }
         this.boss = _loc2_[0];
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.7),new §>%Q§(§+%z§.GRENADE,0.5),new §>%Q§(§+%z§.MINIGUN,0.5),new §>%Q§(§+%z§.§4"k§,0.5),new §>%Q§(§+%z§.STICKY_GRENADE,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE,0.7),new §>%Q§(§+%z§.§!`§,0.7)]);
         var _loc3_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc3_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.AK_47,§+%z§.AK_47_UPG_1A,§+%z§.AK_47_UPG_1B_SNOWBALL,§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1]);
            §§push(this.boss.aiArsenal);
            var _temp_16:* = new <§>%Q§>[new §>%Q§(§+%z§.AK_47_UPG_2A,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.5),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5)];
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.AK_47_UPG_2A,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.5),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5)],uint.MAX_VALUE);
         }
         if(!§^i§)
         {
            this.boss.buffs.place(new §`""§());
         }
         var _loc5_:uint = 1;
         while(_loc5_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc5_];
            _loc4_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.7),new §>%Q§(§+%z§.MINIGUN,0.7),new §>%Q§(§+%z§.STICKY_GRENADE,0.7),new §>%Q§(§+%z§.BAZOOKA_UPG_1,0.5),new §>%Q§(§+%z§.§!`§,0.3),new §>%Q§(§+%z§.CANNON,0.1)]);
            _loc4_.aiArsenal.subtractWeapons([§+%z§.§"!S§]);
            if(_loc3_)
            {
               _loc4_.aiArsenal.subtractWeapons([§+%z§.AK_47,§+%z§.AK_47_UPG_1A,§+%z§.AK_47_UPG_1B_SNOWBALL,§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1]);
               _loc4_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.AK_47_UPG_2A,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.5),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7)],uint.MAX_VALUE);
            }
            if(!§^i§)
            {
               _loc4_.buffs.place(new §`""§());
            }
            this.§^%4§[_loc5_ - 1] = _loc4_;
            _loc5_++;
         }
         super.§+$L§(param1);
         this.boss.aiMissFactor = 2;
         this.boss.aiShotPower = 3;
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:uint = 0;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            _loc3_ = §4"m§.§="T§(this.boss,false,true);
            for each(_loc4_ in _loc3_)
            {
               this.§6W§(_loc4_);
               if(_loc4_ == this.boss)
               {
                  this.§6W§(_loc4_);
               }
            }
         }
         if(param2.squad.§@Q§(this.boss))
         {
            _loc3_ = §4"m§.§="T§(this.boss,false,true);
            _loc5_ = Application.scene.§@$I§.§;%a§.§"L§([§,&D§]).length;
            if(_loc5_ < §9#[§.value)
            {
               for each(_loc4_ in _loc3_)
               {
                  this.§6W§(_loc4_);
               }
            }
            for each(_loc4_ in _loc3_)
            {
               if(this.§^%4§.indexOf(_loc4_) == -1)
               {
                  this.§"& §(_loc4_);
               }
            }
         }
         if(this.§^%4§.indexOf(param2) != -1)
         {
            _loc3_ = §4"m§.§="T§(param2);
            for each(_loc4_ in _loc3_)
            {
               if(this.§^%4§.indexOf(_loc4_) == -1)
               {
                  new §2&F§(param2,param2.x,param2.y,_loc4_,this.§'!,§.value);
               }
            }
         }
      }
      
      private function §6W§(param1:§+%]§) : void
      {
         var _loc2_:Point = §-#M§.§&"!§(param1.x,param1.y,250,50,50,true);
         if(!_loc2_)
         {
            _loc2_ = new Point(param1.x,param1.y);
         }
         new §,&D§(this.boss,_loc2_.x,_loc2_.y,this.paramSet);
      }
      
      private function §"& §(param1:§+%]§) : void
      {
         param1.attributes.attack.§5#l§(this.§>%Y§.value);
         §2!H§.§'!i§(§0%§.format(§0$N§.BONUS_ATTACK,{"value":this.§>%Y§.value}),§2!H§.§8"<§,param1.x + param1.width * 0.5,param1.y + param1.height * 0.5,20);
         §1"-§.§8"l§(param1,§1"-§.§>#t§,80);
      }
      
      override public function clear() : void
      {
         this.boss = null;
         this.§^%4§.length = 0;
      }
      
      public function getSergeant() : §+%]§
      {
         return this.boss;
      }
   }
}

