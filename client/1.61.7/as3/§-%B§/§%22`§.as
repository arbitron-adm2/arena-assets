package §-%B§
{
   import § "d§.§,!c§;
   import § %f§.§=%f§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §0%"§.§[!^§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#H§.§'$5§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#`§.§'#R§;
   import §4%_§.ZombieGrave;
   import §7!B§.§&"T§;
   import §8#<§.§!#^§;
   import §8$V§.TeamController;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%§.Zombie;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"`§ extends §-"o§
   {
      
      private static const §&"+§:int = 6;
      
      private static const §,$W§:int = 4;
      
      private static const §4"3§:int = 7;
      
      private static const §7#B§:int = 15;
      
      private static const §?#U§:int = 150;
      
      private static const §,!h§:int = §?#U§ * 0.5;
      
      private static const §0!`§:int = 40;
      
      private static const §#"X§:int = 4;
      
      private static const §3_§:int = 10;
      
      private static const §;#4§:int = 4;
      
      private static const §,#k§:int = 2;
      
      private static const §+"c§:int = TeamController.§4%K§ * 2;
      
      private static const §>!a§:int = §+"c§ - §,#k§;
      
      private static const §!"h§:Number = 0.75;
      
      private static const §'!3§:Number = 0.67;
      
      private static const §[$^§:Number = 0.5;
      
      private static const §^#z§:Number = 0.33;
      
      private static const §4#v§:Number = 0.25;
      
      private static const § !y§:Number = 0.2;
      
      private static const §<#7§:§&$2§ = new §&$2§();
      
      private static const §"&G§:§&$2§ = new §&$2§(1);
      
      private static const §+!f§:§&$2§ = new §&$2§(2);
      
      private static const §7J§:§&$2§ = new §&$2§(3);
      
      private static const §+&7§:Array = [§+%z§.FROST_STASIS];
      
      private var §2$N§:§&$2§ = new §&$2§();
      
      private var §4&6§:§&$2§ = new §&$2§();
      
      private var §`#S§:§&$2§ = new §&$2§();
      
      private var §8"y§:§&$2§ = new §&$2§();
      
      private var §`!f§:§&$2§ = new §&$2§();
      
      private var §<&!§:§&$2§ = new §&$2§();
      
      private var §%"`§:§&$2§ = new §&$2§();
      
      private var §"F§:§&$2§ = new §&$2§();
      
      private var §3"2§:§&$2§ = new §&$2§();
      
      private var §,&"§:§&$2§ = new §&$2§();
      
      private var §-!y§:§&$2§ = new §&$2§();
      
      private var §%"r§:§&$2§ = new §&$2§();
      
      private var §<#F§:§&$2§ = new §&$2§();
      
      private var §<"9§:§&$2§ = new §&$2§();
      
      private var §@!h§:§&$2§ = new §&$2§();
      
      private var §^"C§:§&$2§ = new §&$2§();
      
      private var §3b§:§?"&§ = new §?"&§();
      
      private var §&^§:§'#R§;
      
      private var §8%=§:§"Z§;
      
      private var §4"@§:§+%]§;
      
      private var §7!W§:Boolean;
      
      private var §^$+§:Boolean;
      
      private var §="a§:Boolean;
      
      private var §!" §:Boolean;
      
      private var §`!#§:Boolean;
      
      private var stats:§,!c§;
      
      private var §<"B§:int = 0;
      
      private var §@!#§:int = 0;
      
      private var §8+§:int;
      
      private var random:§,'§;
      
      private var §6p§:Boolean;
      
      private var drillUppers:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §5![§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      public function §"`§(param1:Boolean = false)
      {
         super(param1);
         this.random = randomSeed;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         this.stats = new §,!c§(0,0.5,0.5,param1);
         this.§8+§ = §<!9§.§["q§(this.stats.§-$U§);
         var _loc4_:uint = §,!c§.§#%%§(param1);
         this.§<#F§.value = _loc4_;
         this.§3b§.value = _loc4_ == §<!9§.§4p§(§<!9§.getMaxLevel()) * 2;
         this.§`#S§.value = this.stats.§;%&§ / 2 + (_loc4_ / param1.length - 1) * 2;
         this.§2$N§.value = §#"X§ + Math.round((§3_§ - §#"X§) / (§<!9§.getMaxLevel() - §;#4§) * (this.stats.§;%&§ - §;#4§));
         return new <§-!`§>[new §-!`§(§0$N§.RACE_ZOMBIE_NAME,[this.§&!§(§ !y§),this.§&!§(§ !y§)])];
      }
      
      private function §&!§(param1:Number = 1) : UserProfile
      {
         var _loc2_:int = 0;
         _loc2_ = this.stats.§-$U§ * 1.5;
         var _loc3_:int = this.stats.§-$U§ * 2 - _loc2_;
         var _loc4_:int = this.§8+§ * param1;
         return UserProfile.§'#3§(§0$N§.RACE_ZOMBIE_NAME,this.stats.§-$U§,Race.§"$H§,_loc4_,_loc3_,_loc2_);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc3_:§+%]§ = null;
         this.§&^§ = new §'#R§(this.§`#S§.value);
         Application.scene.§7#o§.§?!C§(this.§&^§.getClip());
         this.§&^§.getClip().visible = false;
         this.§8%=§ = param1[0];
         var _loc2_:Vector.<§+%]§> = this.§8%=§.§1!n§();
         this.§4"@§ = _loc2_[0];
         for each(_loc3_ in _loc2_)
         {
            _loc3_.aiArsenal = this.§#]§(_loc3_);
            _loc3_.§;!s§();
            _loc3_.§9&2§();
         }
         super.§+$L§(param1);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§,false,§[!F§.§,%k§);
      }
      
      private function §#]§(param1:§+%]§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false) : §,%8§
      {
         var _loc9_:int = 0;
         var _loc8_:Vector.<§>%Q§> = new Vector.<§>%Q§>(0);
         if(param5 && !param6 || param1.bonuses.§^#5§(Bonus.POISON_DAMAGE) || param1.bonuses.§^#5§(Bonus.POISONING_ADDITION))
         {
            if(this.§4&6§.value > 5)
            {
               _loc8_.push(new §>%Q§(§+%z§.GAS_GRENADE,0.1,1,10,19),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1A,0.1,1,20,29),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2A_BIO,0.1,1,30));
            }
            if(this.§4&6§.value > 7)
            {
               _loc8_.push(new §>%Q§(§+%z§.SOUL_GUN,0.1,1,10,19),new §>%Q§(§+%z§.SOUL_GUN_UPG_1,0.1,1,20,29),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.1,1,30));
            }
            if(this.§<#F§.value > 2)
            {
               _loc8_.push(new §>%Q§(§+%z§.CROSSBOW,0.1,1,12));
            }
            if(this.§<#F§.value > 3 && this.§4&6§.value > 6)
            {
               _loc8_.push(new §>%Q§(§+%z§.FOUL_WATERMELON,0.1,1,16));
            }
            if(this.§<#F§.value > 4 || this.§4&6§.value > 8)
            {
               _loc8_.push(new §>%Q§(§+%z§.VILE_PUMPKIN,0.1,1,21));
            }
         }
         if(param6 || param1.bonuses.§^#5§(Bonus.FROST_DAMAGE) || param1.bonuses.§^#5§(Bonus.IMMOBILITY_ADDITION))
         {
            if(this.§4&6§.value > 6)
            {
               _loc8_.push(new §>%Q§(§+%z§.AK_47_UPG_1B_SNOWBALL,0.1,1,10,20),new §>%Q§(§+%z§.AK_47_UPG_2B_MOROZKO,0.1,1,21));
            }
            if(this.§4&6§.value > 6)
            {
               _loc8_.push(new §>%Q§(§+%z§.GAS_GRENADE_UPG_1B,0.1,1,16,25),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2B_KRIO,0.1,1,26));
            }
            if(this.§4&6§.value > 6)
            {
               _loc8_.push(new §>%Q§(§+%z§.§8#d§,0.1,1,10,16),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG1A,0.1,1,17,23),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.1,1,24));
            }
            if(this.§4&6§.value > 11)
            {
               _loc8_.push(new §>%Q§(§+%z§.§7&E§,0.1,1),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.1,1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.1,1));
            }
            if(this.§<#F§.value > 4)
            {
               _loc8_.push(new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.1,1),new §>%Q§(§+%z§.DEEP_FREEZE,0.1,1));
            }
            if(this.§<#F§.value > 3 || this.§4&6§.value > 9)
            {
               _loc8_.push(new §>%Q§(§+%z§.BLIZZARD,0.1,1));
            }
            if((this.§<#F§.value > 6 || this.§4&6§.value > 16) && §0#2§.§0![§())
            {
               _loc8_.push(new §>%Q§(§+%z§.SNOWFLAKE_STRIKE_UPG_2A,0.1,1));
            }
         }
         if(param1.bonuses.§^#5§(Bonus.FIRE_DAMAGE))
         {
            if(this.§4&6§.value > 4)
            {
               _loc8_.push(new §>%Q§(§+%z§.§^";§,0.1,1),new §>%Q§(§+%z§.§"%P§,0.1,1));
            }
            if(this.§<#F§.value > 3)
            {
               _loc8_.push(new §>%Q§(§+%z§.MOLOTOV,0.1,1),new §>%Q§(§+%z§.§ %L§,0.1,1));
            }
            if(this.§<#F§.value > 5 && this.§4&6§.value > 8)
            {
               _loc8_.push(new §>%Q§(§+%z§.RED_HOT_HAMMER,0.1,1),new §>%Q§(§+%z§.PLASMAGUN,0.1,1));
            }
         }
         if(param1.bonuses.§^#5§(Bonus.SHOCK_DAMAGE))
         {
            if(this.§4&6§.value > 3)
            {
               _loc8_.push(new §>%Q§(§+%z§.HARPOON,0.1,1,8,12),new §>%Q§(§+%z§.ELECTRIC_HARPOON_UPG_1,0.1,1,13,17),new §>%Q§(§+%z§.ELECTRIC_HARPOON_UPG_2A,0.1,1,18,24),new §>%Q§(§+%z§.ELECTRIC_HARPOON_UPG_2B,0.1,1,25));
            }
            if(this.§4&6§.value > 9)
            {
               _loc8_.push(new §>%Q§(§+%z§.ENERGY_RIFLE,0.1,1,9,14),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,0.1,1,15,20),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.1,1,21,27),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.1,1,28));
            }
            if(this.§4&6§.value > 11)
            {
               _loc8_.push(new §>%Q§(§+%z§.AIR_BLOCKER,0.1,1,18,25),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.1,1,26));
            }
            if(this.§4&6§.value > 13)
            {
               _loc8_.push(new §>%Q§(§+%z§.ION_CANNON,0.1,1,30));
            }
            if(this.§<#F§.value > 2)
            {
               _loc8_.push(new §>%Q§(§+%z§.§6&8§,0.1,1),new §>%Q§(§+%z§.THUNDER_HAMMER,0.1,1));
            }
            if(this.§<#F§.value > 4)
            {
               _loc8_.push(new §>%Q§(§+%z§.SHOCKER,0.1,1,13,18),new §>%Q§(§+%z§.SHOCKER_UPG_1,0.1,1,19,24),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.1,1,25),new §>%Q§(§+%z§.PUPPET_MECH,0.1,1,30));
            }
            if(this.§<#F§.value > 6)
            {
               _loc8_.push(new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.1,1,30));
            }
         }
         if(param1.isLeader || param1.bonuses.§^#5§(Bonus.AIR_DAMAGE))
         {
            if(this.§<#F§.value > 3 && this.§4&6§.value > 5)
            {
               _loc8_.push(new §>%Q§(§+%z§.BUNKER_BUSTER,0.1,12,20),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,1,15,25),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.1,1,18));
            }
            if(this.§<#F§.value > 5 && this.§4&6§.value > 12)
            {
               _loc8_.push(new §>%Q§(§+%z§.METEOR,0.1,1,22),new §>%Q§(§+%z§.§<!;§,0.1,1,26));
            }
            if(this.§<#F§.value == §+"c§ && this.§4&6§.value > 15 && §0#2§.§0![§())
            {
               _loc8_.push(new §>%Q§(§+%z§.SUPER_BUNKER_BUSTER,0.1,1,30));
            }
         }
         if(param2)
         {
         }
         if(param3)
         {
         }
         if(param4)
         {
            _loc8_.push(new §>%Q§(§+%z§.§!`§,0.1,1,8,16),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,0.1,1,17,24),new §>%Q§(§+%z§.DRILL_GUN_UPG_2,0.1,1,25));
            if(this.§4&6§.value > 8)
            {
               _loc8_.push(new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.1,1,30));
            }
         }
         if(param1.isLeader)
         {
            if(this.§4&6§.value > 8)
            {
               _loc8_.push(new §>%Q§(§+%z§.ROBO_PIRANHA,0.05,1,26));
            }
            if(this.§4&6§.value > 14)
            {
               _loc8_.push(new §>%Q§(§+%z§.PUPPET,0.05,1,20,24),new §>%Q§(§+%z§.PUPPET_U1,0.05,1,25,29),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.05,1,30),new §>%Q§(§+%z§.PUPPET_U2B_GHOSTLY,0.05,1,30));
            }
         }
         if(!param1.bonuses.§%$k§([Bonus.POISON_DAMAGE,Bonus.POISONING_ADDITION,Bonus.FIRE_DAMAGE,Bonus.FROST_DAMAGE,Bonus.IMMOBILITY_ADDITION,Bonus.SHOCK_DAMAGE,Bonus.AIR_DAMAGE]))
         {
            if(this.§4&6§.value > 2)
            {
               _loc8_.push(new §>%Q§(§+%z§.STICKY_GRENADE,0.1,1,12,16),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.1,1,17,21),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.1,1,22),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.1,1,22));
            }
            if(this.§4&6§.value > 3)
            {
               _loc8_.push(new §>%Q§(§+%z§.AK_47,0.1,1,10,18),new §>%Q§(§+%z§.AK_47_UPG_1A,0.1,1,19,25),new §>%Q§(§+%z§.AK_47_UPG_2A,0.1,1,26));
            }
            if(this.§4&6§.value > 4)
            {
               _loc8_.push(new §>%Q§(§+%z§.SNIPER_RIFLE,0.1,1,14,18),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.1,1,19,23),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.1,1,24,28),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2B,0.1,1,24,28),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.1,1,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.1,1,29));
            }
            if(this.§4&6§.value > 7)
            {
               _loc8_.push(new §>%Q§(§+%z§.HANDICRAFTED_RIFLE,0.1,1,20));
            }
            if(this.§4&6§.value > 10)
            {
               _loc8_.push(new §>%Q§(§+%z§.PARASITE,0.1,14,17),new §>%Q§(§+%z§.PARASITE_UPG_1,0.1,18,21),new §>%Q§(§+%z§.PARASITE_UPG_2,0.1,22));
            }
            if(this.§4&6§.value > 11)
            {
            }
            if(this.§4&6§.value > 13)
            {
               _loc8_.push(new §>%Q§(§+%z§.VACUUM_GRENADE,0.1,1,27));
            }
         }
         _loc9_ = param1.record.getLevel();
         var _loc10_:§,%8§ = new §,%8§(_loc8_,_loc9_);
         _loc10_.subtractWeapons(§+&7§);
         return _loc10_;
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(§8"%§.§?!W§.§4"m§.§,j§() == 1)
         {
            §8"%§.§?!W§.§>$y§("========= total waves " + this.§`#S§.value + ", enemy team limit " + this.§2$N§.value);
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
      }
      
      private function §,!l§(param1:Event) : void
      {
         this.§0!W§();
      }
      
      private function §0!W§() : void
      {
         if(this.§3$`§ == 0 && this.§8%=§.§'"H§() == 0 && this.§4&6§.value < this.§`#S§.value)
         {
            this.§3"2§.value = 0;
            this.§,&"§.value = 0;
            this.§-!y§.value = 0;
            this.§%"r§.value = 0;
            this.§8"y§.value = 0;
            this.drillUppers.length = 0;
            ++this.§4&6§.value;
            this.§="a§ = this.§4&6§.value == this.§`#S§.value;
            this.§`!#§ = false;
            this.§!" § = false;
            this.§^$+§ = false;
            if(this.§4&6§.value > 1)
            {
               ++this.§^"C§.value;
            }
            this.§&^§.update(this.§4&6§.value);
            this.§&^§.§#7§(§0%§.format(§0$N§.§%! §("WAVE_TITLE"),{
               "count":this.§4&6§.value,
               "total":this.§`#S§.value + "" + (this.§="a§ ? " !" : "")
            }));
            if(this.§4&6§.value > 0)
            {
               this.§&^§.getClip().visible = true;
            }
            §8"%§.§?!W§.§>$y§("------------ wave # " + this.§4&6§.value + " / " + this.§`#S§.value + (this.§2&&§ ? " is Pumpkin!" : "") + (this.§="a§ ? " is LAST!" : ""));
            if(this.§2&&§)
            {
               this.§^$+§ = this.§@!#§ > 0 && this.stats.§;%&§ == 30 && this.§4&6§.value > §&"+§ && this.random.§,!q§(1,100) > (this.§4&6§.value > §&"+§ * 2 ? 90 : 95) - this.§@!#§;
               if(this.§^$+§)
               {
                  this.§@!#§ = 0;
               }
            }
            if(this.§-%E§)
            {
               ++this.§"F§.value;
               if(this.§<#F§.value > §,#k§ && this.§"F§.value % (§>!a§ - Math.round(this.§<#F§.value / 2)) == 0)
               {
                  this.§<"9§.value = §7J§.value;
                  this.§[m§();
               }
               else
               {
                  this.§<"9§.value = §+!f§.value;
                  this.§^%q§();
               }
            }
            else
            {
               this.§6p§ = !this.§6p§;
               if(this.§6p§)
               {
                  this.§<"9§.value = §<#7§.value;
                  this.§3"u§();
               }
               else
               {
                  this.§<"9§.value = §"&G§.value;
                  this.§+&>§();
               }
            }
            if(this.§2&&§)
            {
               if(this.§^$+§)
               {
                  this.§,C§();
               }
               else
               {
                  this.§?#X§();
               }
            }
         }
      }
      
      private function §?#X§() : void
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:§+%]§ = null;
         var _loc1_:Vector.<§"Z§> = §8"%§.§?!W§.§4"m§.§4$C§();
         var _loc2_:§+%]§ = this.§8%=§.§'"H§() > 0 ? this.§8%=§.§1!n§()[0] : this.§4"@§;
         for each(_loc3_ in _loc1_)
         {
            for each(_loc4_ in _loc3_.§1!n§())
            {
               _loc4_.buffs.place(new §-$s§(_loc2_,_loc4_.record.getLevel() <= §7#B§ ? §,$W§ : §4"3§,§=%f§.§8%>§.value,§,$O§.PUMPKIN_GREEN_WEAPON));
            }
         }
      }
      
      private function §,C§() : void
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:§+%]§ = null;
         var _loc1_:Vector.<§"Z§> = §8"%§.§?!W§.§4"m§.§4$C§();
         var _loc2_:§+%]§ = this.§4"@§.squad.§'"H§() > 0 ? this.§4"@§.squad.§1!n§()[0] : this.§4"@§;
         for each(_loc3_ in _loc1_)
         {
            for each(_loc4_ in _loc3_.§1!n§())
            {
               _loc4_.buffs.place(new §-$s§(_loc2_,§4"3§,0,§,$O§.GIFT_BOX_WEAPON,true,true,true));
            }
         }
      }
      
      private function §[m§() : void
      {
         var y0:int;
         var spawnLimitHalf:Number;
         var spawnDistHalf:int;
         var x0:int;
         var i:int;
         var spawnLimit:int = 0;
         var dummy:§&"T§ = null;
         var indent:Number = NaN;
         var unit:§+%]§ = null;
         var unitsDrillUp:Function = null;
         var fluct:int = 0;
         var x:int = 0;
         var isLeader:Boolean = false;
         unitsDrillUp = function(param1:Event = null):void
         {
            var _loc2_:§+%]§ = null;
            var _loc3_:* = 0;
            var _loc4_:int = 0;
            var _loc5_:MovieClip = null;
            if(drillUppers.length > 0)
            {
               _loc3_ = int(drillUppers.length - 1);
               while(_loc3_ > -1)
               {
                  _loc2_ = drillUppers[_loc3_];
                  _loc4_ = 0;
                  while(_loc4_ < 3)
                  {
                     Application.scene.§,# §(_loc2_.x,_loc2_.y + _loc4_ * 10,10);
                     §1"-§.explode(§;n§.§7q§,_loc2_.x,_loc2_.y + _loc4_ * 10,10);
                     _loc4_++;
                  }
                  if(_loc2_.speedY > 0)
                  {
                     _loc5_ = §6#A§.§!&6§("GirderH");
                     if(_loc2_.isLeader)
                     {
                        _loc5_.rotation = 90;
                     }
                     else
                     {
                        _loc5_.width = §<H§.§@k§;
                     }
                     Application.scene.§+!K§(_loc5_,_loc2_.x,_loc2_.y + (_loc2_.isLeader ? 120 : 30));
                     _loc2_.physParams.§5N§ = §9%1§.§&!A§;
                     drillUppers.splice(_loc3_,1);
                  }
                  _loc3_--;
               }
               §@%;§.play(§`!v§.§0#O§);
            }
            else
            {
               Application.scene.removeEventListener(§0%v§.FRAME,unitsDrillUp);
               if(dummy)
               {
                  dummy.disposed = true;
               }
            }
         };
         var pos:Point = §-#M§.§,#e§();
         while(!pos)
         {
            pos = §-#M§.§,#e§();
         }
         y0 = Application.scene.height - 10;
         spawnLimit = this.§2$N§.value;
         spawnLimitHalf = spawnLimit * 0.5;
         spawnDistHalf = spawnLimit % 2 == 0 ? §,!h§ : 0;
         dummy = Application.scene.§,$z§();
         indent = (spawnLimitHalf + 1) * §?#U§ + §0!`§;
         x0 = Math.max(indent,Math.min(pos.x,Application.scene.width - indent));
         i = -spawnLimitHalf;
         while(i < spawnLimitHalf)
         {
            fluct = this.random.§,!q§(-§0!`§,§0!`§);
            x = x0 + (§?#U§ + fluct) * i - spawnDistHalf;
            isLeader = i == 0 && this.§4&6§.value > 17;
            pos.setTo(x,y0);
            unit = this.spawnUnit(pos,isLeader,true);
            unit.setSpeedXY(0,this.random.§,!q§(-40,-50));
            unit.physParams.§5N§ = §9%1§.§>#T§;
            this.drillUppers.push(unit);
            i++;
         }
         §8"%§.§?!W§.§>$y§("launch " + spawnLimit + " drills! from delay " + this.§=!m§ + " waves");
         Application.scene.addEventListener(§0%v§.FRAME,unitsDrillUp);
      }
      
      private function §^%q§() : void
      {
         var pos:Point;
         var x0:int;
         var y0:int;
         var spawnLimitHalf:Number;
         var paramSet:§5$n§;
         var spawnDistHalf:int;
         var i:int;
         var instance:§"`§;
         var spawnLimit:int = 0;
         var dummy:§&"T§ = null;
         var fluct:int = 0;
         var x:int = 0;
         var isLeader:Boolean = false;
         var dropGrave:Function = function(param1:int, param2:int, param3:§5$n§, param4:Boolean):void
         {
            var grave:ZombieGrave = null;
            var xs:int = param1;
            var ys:int = param2;
            var paramSet:§5$n§ = param3;
            var isLeader:Boolean = param4;
            grave = §2#N§(xs,ys,true,isLeader);
            grave.addEventListener(§0%v§.DISPOSED,function onMarchGraveDisposed(param1:Event):void
            {
               ZombieGrave(param1.target).removeEventListener(§0%v§.DISPOSED,onMarchGraveDisposed);
               if(Application.scene.§@$I§.§=%d§())
               {
                  return;
               }
               if(ZombieGrave(param1.target).spawnSuccess)
               {
                  ++§,&"§.value;
               }
               else
               {
                  ++§-!y§.value;
               }
               if(§,&"§.value + §-!y§.value == §%"r§.value)
               {
                  if(dummy)
                  {
                     dummy.disposed = true;
                  }
                  §7!W§ = false;
                  §8"%§.§?!W§.§>$y§("launch " + spawnLimit + " strike! from delay " + §=!m§ + " waves" + (§-!y§.value ? ", lost " + §-!y§.value + (§6p§ ? " -> append simple spawn " : " append graves spawn") : ""));
                  if(§-!y§.value > 0)
                  {
                     if(§6p§)
                     {
                        §3"u§(true);
                     }
                     else
                     {
                        §+&>§(true);
                     }
                  }
               }
            });
            §8$a§.§&!#§(grave,§0%v§.§+&=§,function onCollideGrave(param1:Event):void
            {
               var e:Event = param1;
               §'"$§.§]#I§(grave.getOwner(),grave.x,grave.y,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,§&!E§.AIR);
               §1"-§.explode(§;n§.MEDIUM,grave.x,grave.y,paramSet.explosionRadius.value,§`!v§.§["s§);
               grave.setSpeedXY(0,-4);
               §8$a§.§&!#§(grave,§0%v§.§+&=§,function(param1:Event):void
               {
                  if(!grave.disposed)
                  {
                     grave.spawnZombie(true);
                  }
               });
            });
         };
         this.§7!W§ = true;
         pos = §-#M§.§,#e§();
         while(!pos)
         {
            pos = §-#M§.§,#e§();
         }
         x0 = pos.x;
         y0 = -20;
         spawnLimit = this.§2$N§.value;
         spawnLimitHalf = spawnLimit * 0.5;
         paramSet = §<$c§.§ !=§(§+%z§.ZOMBIE_MARCH).§<$4§.clone();
         spawnDistHalf = spawnLimit % 2 == 0 ? §,!h§ : 0;
         dummy = Application.scene.§,$z§();
         i = -spawnLimitHalf;
         while(i < spawnLimitHalf)
         {
            fluct = this.random.§,!q§(-§0!`§,§0!`§);
            x = x0 + (§?#U§ + fluct) * i - spawnDistHalf;
            isLeader = i == 0 && this.§4&6§.value > 6;
            dropGrave(x,y0,paramSet,isLeader);
            ++this.§%"r§.value;
            i++;
         }
         instance = this;
         §@%;§.play(§`!v§.AIR_STRIKE);
      }
      
      private function §3"u§(param1:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc2_:uint = this.§8%=§.§'"H§();
         if(_loc2_ == 0 || param1)
         {
            _loc3_ = this.§2$N§.value - (param1 ? this.§,&"§.value : _loc2_);
            if(_loc3_ > 0)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc3_)
               {
                  _loc4_ = §-#M§.§,#e§();
                  while(!_loc4_)
                  {
                     _loc4_ = §-#M§.§,#e§();
                  }
                  _loc6_ = this.§4&6§.value > 2 && _loc5_ == 0;
                  this.spawnUnit(_loc4_,_loc6_);
                  _loc4_ = null;
                  _loc5_++;
               }
               §8"%§.§?!W§.§>$y§("spawn enemies " + _loc3_ + (param1 ? ", after march" : "") + ", total spawned bots " + this.§`!f§.value);
            }
         }
      }
      
      private function spawnUnit(param1:Point, param2:Boolean = false, param3:Boolean = false) : §+%]§
      {
         var _loc4_:UserProfile = null;
         _loc4_ = this.§&!§();
         this.§8!D§(_loc4_,param2,false,false,param3);
         var _loc5_:§+%]§ = Race.create(_loc4_,param1.x,param1.y);
         this.§8%=§.addUnit(_loc5_);
         if(param2)
         {
            _loc5_.isLeader = true;
         }
         if(!_loc5_.isRevived())
         {
            _loc5_.§;!s§();
            _loc5_.§=%P§();
         }
         this.§>#c§(_loc5_,param2,false,false,param3);
         Application.scene.§7#o§.§"W§(_loc5_);
         §@%;§.play(§`!v§.§"d§);
         return _loc5_;
      }
      
      private function §`#;§(param1:UserProfile) : void
      {
         this.§8!D§(param1,false,true);
      }
      
      private function §'#%§(param1:UserProfile) : void
      {
         this.§8!D§(param1,true,true);
      }
      
      private function §'#_§(param1:UserProfile) : void
      {
         this.§8!D§(param1,false,false,true);
      }
      
      private function §^%2§(param1:UserProfile) : void
      {
         this.§8!D§(param1,true,false,true);
      }
      
      private function §0!;§(param1:§+%]§) : void
      {
         this.§>#c§(param1,false,true);
      }
      
      private function § #A§(param1:§+%]§) : void
      {
         this.§>#c§(param1,true,true);
      }
      
      private function §8h§(param1:§+%]§) : void
      {
         this.§>#c§(param1,false,false,true);
      }
      
      private function §-$X§(param1:§+%]§) : void
      {
         this.§>#c§(param1,true,false,true);
      }
      
      private function §8!D§(param1:UserProfile, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         ++this.§8"y§.value;
         ++this.§`!f§.value;
         if(this.§!!;§)
         {
            ++this.§<&!§.value;
         }
         var _loc6_:int = this.§4&6§.value;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:String = §0$N§.RACE_ZOMBIE_NAME;
         if(param3)
         {
            _loc10_ = §0$N§.REVIVED_ZOMBIE_NAME;
            if(_loc6_ > 5 && this.random.§,!q§(1,100) > 85)
            {
               _loc11_ = this.random.§,!q§(1,15) > 12 ? int(§]!E§.PICK) : int(§]!E§.§5"&§);
            }
         }
         else if(param4)
         {
            _loc10_ = §0$N§.MARCH_ZOMBIE_NAME;
            if(_loc6_ > 9 && this.random.§,!q§(1,100) > (_loc6_ > 13 ? 70 : 85))
            {
               _loc11_ = int(§]!E§.ARMY_KNIFE);
            }
         }
         else if(param5)
         {
            _loc10_ = §0$N§.DRILL_ZOMBIE_NAME;
         }
         if(this.§!!;§)
         {
            _loc10_ = this.§9!T§ ? §0$N§.FREEZE_ZOMBIE_NAME : §0$N§.REVENGE_ZOMBIE_NAME;
            _loc11_ = this.§9!T§ ? (_loc6_ > 7 && this.random.§,!q§(1,100) > 80 ? int(§!#^§.FROST_SHIELD + 1) : int(§]!E§.§3"5§)) : (_loc6_ > 4 && this.random.§,!q§(1,100) > 65 ? int(§]!E§.SKULL_STAFF) : int(§]!E§.GNAWED_BONE));
            if(_loc6_ > (this.§<#F§.value > 4 ? 7 : 9) && this.random.§,!q§(1,100) > (_loc6_ > 14 ? 80 : 90) || _loc6_ > 14 && this.§="a§)
            {
               _loc7_ = true;
               if(!this.§!" § && (_loc6_ > 10 && this.random.§,!q§(1,10) > (_loc6_ > 12 ? 2 : 6) || _loc6_ > 14 && this.§="a§))
               {
                  _loc8_ = this.§!" § = true;
                  _loc10_ = §0$N§.RADIOACTIVE_ZOMBIE_NAME;
               }
               else
               {
                  _loc10_ = §0$N§.TOXIC_ZOMBIE_NAME;
               }
               _loc12_ = int(§,$O§.§ ![§);
               _loc11_ = int(§]!E§.TOTEM_POISON);
            }
         }
         else if(this.§2&&§)
         {
            _loc10_ = this.§^$+§ ? §0$N§.NOT_SANTA_ZOMBIE_NAME : §0$N§.PUMPKIN_ZOMBIE_NAME;
            _loc12_ = this.§^$+§ ? int(§,$O§.WINTER_HAT) : int(§,$O§.PUMPKIN_ORANGE);
         }
         if(param2)
         {
            _loc10_ = §0$N§.COMMANDER_ZOMBIE_NAME;
            if(param3)
            {
               _loc10_ = §0$N§.COMMANDER_REVIVE_ZOMBIE_NAME;
               if(!_loc7_)
               {
                  _loc12_ = int(§,$O§.NIGHT);
                  if(this.§4&6§.value > 9 && this.random.§,!q§(1,100) > 75)
                  {
                     _loc12_ = int(§,$O§.DARK_CULTIST_HOOD);
                     if(§0#2§.§0![§() && this.§4&6§.value > 14 && this.random.§,!q§(1,25) > 15)
                     {
                        _loc12_ = int(§,$O§.§]#c§);
                     }
                  }
               }
            }
            else if(param4)
            {
               _loc10_ = §0$N§.COMMANDER_MARCH_ZOMBIE_NAME;
               if(!_loc7_)
               {
                  _loc12_ = int(§,$O§.AVIATOR);
                  if(this.§4&6§.value > 14 && this.random.§,!q§(1,100) > 80)
                  {
                     _loc12_ = int(§,$O§.OFFICER);
                     if(§0#2§.§0![§() && this.§4&6§.value > 15 && this.random.§,!q§(1,20) > 15)
                     {
                        _loc12_ = int(§,$O§.ROBOCHIKEN);
                     }
                  }
               }
            }
            else if(param5)
            {
               _loc10_ = §0$N§.COMMANDER_DRILL_ZOMBIE_NAME;
               if(!_loc7_ && this.§<#F§.value == §+"c§)
               {
                  _loc12_ = int(§,$O§.§##z§);
                  if(§0#2§.§0![§() && this.random.§,!q§(1,100) > 98)
                  {
                     _loc12_ = int(§,$O§.§="F§);
                  }
               }
            }
            if(this.§!!;§)
            {
               _loc10_ = this.§9!T§ ? §0$N§.MASTER_FREEZE_ZOMBIE_NAME : §0$N§.MASTER_REVENGE_ZOMBIE_NAME;
               if(_loc7_)
               {
                  if(_loc10_ == §0$N§.RADIOACTIVE_ZOMBIE_NAME)
                  {
                     _loc10_ = §0$N§.RADIOMASTER_ZOMBIE_NAME;
                  }
                  else
                  {
                     _loc10_ = §0$N§.MASTER_TOXIC_ZOMBIE_NAME;
                  }
               }
            }
            else if(this.§2&&§ && this.§4&6§.value > 6 && !this.§^$+§)
            {
               _loc10_ = §0$N§.COMMANDER_PUMPKIN_ZOMBIE_NAME;
               _loc12_ = int(§,$O§.§&%V§);
            }
            if(!_loc7_)
            {
               if(this.§!!;§)
               {
                  _loc12_ = _loc11_ == §]!E§.GNAWED_BONE && _loc6_ > 14 && this.random.§,!q§(1,100) > 70 ? int(§,$O§.CHIEFTAIN) : int(§,$O§.SHERIFF);
               }
               else if(!this.§2&&§)
               {
                  _loc12_ = int(§,$O§.§3"U§);
                  if(_loc6_ > 4 && this.random.§,!q§(1,100) > (_loc6_ > 6 ? 60 : 80))
                  {
                     _loc12_ = int(§,$O§.LEGIONER);
                     if(_loc6_ > 17 && this.random.§,!q§(1,40) > 30)
                     {
                        _loc12_ = §!#^§.FIEND_HELM + 6;
                     }
                  }
               }
               if(_loc12_ == §,$O§.LEGIONER && _loc11_ == §]!E§.ARMY_KNIFE)
               {
                  _loc11_ = int(§]!E§.WHINGER);
               }
               if(_loc12_ == §,$O§.SHERIFF && this.§9!T§ && _loc6_ > 15 && this.random.§,!q§(1,100) > 70)
               {
                  _loc11_ = int(§]!E§.PLASMA_SHIELD);
               }
            }
         }
         else if(!this.§!!;§)
         {
            if(_loc6_ > 7)
            {
               if(this.§<"B§ > 0 && this.random.§,!q§(1,100) > 90 - this.§<"B§)
               {
                  this.§<"B§ /= 2;
                  _loc9_ = true;
                  if(!this.§`!#§ && _loc6_ > 15 && this.random.§,!q§(1,10) > 7)
                  {
                     _loc10_ = §0$N§.SUPER_AQUALUNG_ZOMBIE_NAME;
                     _loc11_ = int(§]!E§.WATER_SWORD);
                     _loc12_ = int(§,$O§.§^"h§);
                     this.§`!#§ = true;
                  }
                  else
                  {
                     _loc10_ = §0$N§.AQUALUNG_ZOMBIE_NAME;
                     _loc12_ = int(§,$O§.AQUALUNG);
                  }
               }
            }
            if(!this.§2&&§ && !_loc9_ && param3 && this.random.§,!q§(1,100) > 70)
            {
               _loc10_ = §0$N§.HUNGRY_ZOMBIE_NAME;
               _loc11_ = §!#^§.HAM_MACE + 1;
            }
         }
         param1.§-"§(_loc10_);
         param1.§2!§(_loc10_);
         var _loc13_:Number = param2 ? §[$^§ : (this.§!!;§ ? (_loc8_ ? §'!3§ : §^#z§) : (_loc9_ ? §'!3§ : §4#v§));
         param1.stats.§8+§.value = this.§8+§ * _loc13_;
         if(_loc12_)
         {
            param1.§7"i§(§<$c§.§^&1§(_loc12_,param1.getRace()));
         }
         if(_loc11_)
         {
            param1.§;"U§(§<$c§.§"$h§(_loc11_));
         }
      }
      
      private function §>#c§(param1:§+%]§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         var unit:§+%]§ = param1;
         var isLeader:Boolean = param2;
         var fromGrave:Boolean = param3;
         var fromMarch:Boolean = param4;
         var fromDrills:Boolean = param5;
         var isToxic:Boolean = Boolean(unit.§ !5§()) && unit.§ !5§().getId() == §[!^§.TOXIC_CREATURE;
         if(this.§^$+§ || unit.record.§'&;§() == §0$N§.RADIOMASTER_ZOMBIE_NAME || Boolean(unit.§2u§()) && (Boolean(unit.§2u§().getId() == §,$O§.§="F§ || unit.§2u§().getId() == §,$O§.§^"h§)))
         {
            this.§5![§.push(unit);
         }
         if(this.§!!;§)
         {
            Zombie(unit).placeRevenge(true,this.§9!T§);
            if(this.§9!T§)
            {
               unit.graphics.colorTransform(50,50,50);
               unit.clip.transform.colorTransform = new ColorTransform(1,1,1,1,0,0,80,0);
            }
         }
         if(fromDrills)
         {
            unit.physParams.§3&I§ = false;
            unit.addEventListener(§0%v§.§3G§,function onStable(param1:Event):void
            {
               if(unit.stable && !unit.bonuses.§^#5§(Bonus.§&$x§))
               {
                  unit.removeEventListener(§0%v§.§3G§,onStable);
                  unit.physParams.§3&I§ = true;
               }
            });
         }
         switch(unit.record.getCharName())
         {
            case §0$N§.RADIOACTIVE_ZOMBIE_NAME:
            case §0$N§.RADIOMASTER_ZOMBIE_NAME:
               unit.buffs.place(new §'$5§());
         }
         if(isLeader && !unit.isLeader)
         {
            unit.isLeader = true;
         }
         if(unit.isLeader)
         {
            unit.aiMissFactor = 0;
            ++unit.aiShotPower;
         }
         if(unit.§2u§())
         {
            unit.§3!y§();
            ++unit.aiShotPower;
         }
         if(unit.§+!b§())
         {
            ++unit.aiShotPower;
         }
         if(unit.§ !5§())
         {
            ++unit.aiShotPower;
         }
         unit.aiArsenal = this.§#]§(unit,fromGrave,fromMarch,fromDrills,this.§!!;§,this.§9!T§,isToxic);
         unit.addEventListener(§0%v§.§^$3§,this.onSink);
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.addEventListener(§0%v§.DISPOSED,function onDisposed(param1:Event):void
         {
            §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,onDisposed);
            §+%]§(param1.target).removeEventListener(§0%v§.§&!D§,§?$u§);
            §+%]§(param1.target).removeEventListener(§0%v§.§^$3§,onSink);
            if(!fromGrave && !fromMarch && !Application.scene.§@$I§.§=%d§())
            {
            }
            if(!Application.scene.§@$I§.§=%d§())
            {
               if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§1"3§())
               {
                  §0!W§();
               }
            }
         },false,§[!F§.§6#@§);
      }
      
      private function onSink(param1:Event) : void
      {
         ++this.§<"B§;
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         if(Boolean(param1.source.owner) && !param1.source.owner.squad.isAi())
         {
            switch(param1.source.damageType)
            {
               case §&!E§.§!?§:
               case §&!E§.POISON:
               case §&!E§.§=$-§:
               case §&!E§.FIRE:
                  break;
               case §&!E§.COLD:
                  if(param1.victim.disposed)
                  {
                     ++this.§@!#§;
                  }
                  break;
               case §&!E§.AIR:
            }
            _loc2_ = this.§5![§.indexOf(param1.victim);
            if(_loc2_ > -1)
            {
               this.§5![§.splice(_loc2_,1);
               ++this.§@!h§.value;
            }
         }
      }
      
      private function §+&>§(param1:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc2_:uint = this.§8%=§.§'"H§();
         if(_loc2_ == 0 || param1)
         {
            _loc3_ = this.§2$N§.value - (param1 ? this.§,&"§.value : _loc2_);
            if(_loc3_ > 0)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc3_)
               {
                  _loc4_ = §-#M§.§,#e§();
                  while(!_loc4_)
                  {
                     _loc4_ = §-#M§.§,#e§();
                  }
                  _loc6_ = this.§3"2§.value == 0 && this.§4&6§.value > 3;
                  this.§2#N§(_loc4_.x,_loc4_.y,false,_loc6_,true);
                  _loc4_ = null;
                  ++this.§3"2§.value;
                  ++this.§%"`§.value;
                  _loc5_++;
               }
               §8"%§.§?!W§.§>$y§("spawn graves " + _loc3_ + (param1 ? ", after march" : "") + ", total spawned graves " + this.§%"`§.value);
               this.§["t§(30,this.§"&+§);
               this.§["t§(100);
            }
         }
      }
      
      private function §2#N§(param1:int, param2:int, param3:Boolean, param4:Boolean, param5:Boolean = false) : ZombieGrave
      {
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc6_ = §0$N§.RACE_ZOMBIE_NAME;
         _loc7_ = ZombieGrave.§=!-§.value - 0.5;
         _loc8_ = int(this.stats.§-$U§);
         _loc9_ = 0;
         var _loc10_:ZombieGrave = new ZombieGrave(Race.§"$H§.§]!D§().graveType,param1,param2,this.§4"@§,_loc6_,_loc8_,this.§8%=§,null,_loc7_,_loc9_,_loc8_,_loc8_,param3);
         if(param5)
         {
            _loc10_.§3!v§ = true;
         }
         _loc10_.§'#b§(this.§&!§());
         if(param4)
         {
            _loc10_.§?&@§ = param3 ? this.§^%2§ : this.§'#%§;
         }
         else
         {
            _loc10_.§?&@§ = param3 ? this.§'#_§ : this.§`#;§;
         }
         if(param4)
         {
            _loc10_.§7##§ = param3 ? this.§-$X§ : this.§ #A§;
         }
         else
         {
            _loc10_.§7##§ = param3 ? this.§8h§ : this.§0!;§;
         }
         return _loc10_;
      }
      
      private function §["t§(param1:int = 30, param2:Function = null) : void
      {
         var dummy:§&"T§ = null;
         var frames:int = param1;
         var callback:Function = param2;
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(frames,function():void
         {
            if(callback != null)
            {
               callback();
            }
            if(dummy)
            {
               dummy.disposed = true;
            }
         });
      }
      
      private function §"&+§() : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:ZombieGrave = null;
         var _loc1_:Vector.<§&"T§> = this.§9!k§;
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = ZombieGrave(_loc2_);
            if(_loc3_.§3!v§)
            {
               _loc3_.§3!v§ = false;
            }
            _loc3_.spawnZombie(true);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.§7#o§._removeChild(this.§&^§.getClip());
         this.§&^§.destroy();
         this.§&^§ = null;
      }
      
      private function get §9!k§() : Vector.<§&"T§>
      {
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([ZombieGrave]);
         return _loc1_.filter(this.§?!=§);
      }
      
      private function §?!=§(param1:§&"T§, param2:int, param3:Vector.<§&"T§>) : Boolean
      {
         return ZombieGrave(param1).getOwner().squad.isAi();
      }
      
      private function get §3$`§() : int
      {
         return this.§9!k§.length;
      }
      
      private function get §-%E§() : Boolean
      {
         return this.§4&6§.value % this.§=!m§ == 0;
      }
      
      private function get §2&&§() : Boolean
      {
         return this.§4&6§.value % §&"+§ == 0;
      }
      
      private function get §!!;§() : Boolean
      {
         return !this.§2&&§ && this.§8"y§.value % this.§`#§ == 0;
      }
      
      private function get §9!T§() : Boolean
      {
         return this.§!!;§ && this.§<&!§.value % this.§1"z§ == 0;
      }
      
      private function get §`#§() : int
      {
         var _loc1_:uint = uint(this.§4&6§.value);
         var _loc2_:Boolean = this.§<#F§.value > 3;
         if(_loc1_ < 2)
         {
            return this.§<#F§.value > 2 ? (_loc2_ ? 4 : 5) : 1000;
         }
         if(_loc1_ < 6)
         {
            return _loc2_ ? 3 : 4;
         }
         if(_loc1_ < 10)
         {
            return _loc2_ ? 2 : 3;
         }
         return 2;
      }
      
      private function get §1"z§() : int
      {
         var _loc1_:uint = uint(this.§4&6§.value);
         var _loc2_:Boolean = this.§<#F§.value > 6;
         if(_loc1_ < 5)
         {
            return _loc2_ ? 4 : 1000;
         }
         if(_loc1_ < 9)
         {
            return _loc2_ ? 3 : 4;
         }
         if(_loc1_ < 12)
         {
            return _loc2_ ? 2 : 3;
         }
         return 2;
      }
      
      private function get §=!m§() : int
      {
         var _loc1_:uint = uint(this.§4&6§.value);
         if(_loc1_ < 5)
         {
            return 4;
         }
         if(_loc1_ < 8)
         {
            return 7;
         }
         if(_loc1_ < 11)
         {
            return 10;
         }
         if(_loc1_ < 15)
         {
            return 2;
         }
         return 1;
      }
      
      public function get waveNumCompleted() : int
      {
         return this.§^"C§.value;
      }
      
      public function get killRareCount() : int
      {
         return this.§@!h§.value;
      }
      
      public function get hasFullTeam() : Boolean
      {
         return this.§3b§.value;
      }
   }
}

