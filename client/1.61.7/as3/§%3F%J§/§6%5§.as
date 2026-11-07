package §?%J§
{
   import § !8§.§`!d§;
   import §!!i§.§@&&§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7!n§.*;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §9%W§.§`"y§;
   import §<$q§.§,%3§;
   import §<$q§.§?!d§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[" §.§4#@§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import com.greensock.loading.*;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §6%5§ extends §-"o§
   {
      
      private var §-$d§:int = 0;
      
      private var bosses:Vector.<§+%]§>;
      
      public function §6%5§(param1:Boolean = false)
      {
         super(param1);
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§5#I§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = §^i§ ? uint(2.2 + 1.2 * param2) : uint(5 + (Application.userProfile.§^!A§() + Application.userProfile.getLevel()) / 4);
         var _loc5_:uint = §^i§ ? uint(60 + 7 * param2 + 9 * param2 * param3) : uint(_loc4_ * 39);
         var _loc6_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc7_:Array = [UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_VIKING1"),_loc4_ * 2,Race.§!!S§,125 + _loc5_,_loc4_ * 1.2,10 + _loc4_ * 2.7,§,$O§.BOSS_VIKING),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_VIKING2"),_loc4_ * 2,Race.§+#T§,(74 + _loc5_) * (§2a§ ? 0.9 : 1),5 + _loc4_ * 1.9,5 + _loc4_ * 1.9,§,$O§.BOSS_VIKING),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_VIKING3"),_loc4_ * 2,Race.§+&8§,230 + _loc5_,10 + _loc4_ * 2.4,_loc4_ * 1.4,§,$O§.BOSS_VIKING)];
         if(§^i§)
         {
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_VIKING"),[_loc7_[0],_loc7_[1],_loc7_[2]]));
         }
         else
         {
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_VIKING1"),[_loc7_[0]]));
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_VIKING2"),[_loc7_[1]]));
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_VIKING3"),[_loc7_[2]]));
         }
         return _loc6_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc5_:Vector.<§>%Q§> = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         if(§^i§)
         {
            _loc2_ = param1[0].§1!n§();
         }
         else
         {
            _loc2_.push(param1[0].§1!n§()[0]);
            _loc2_.push(param1[1].§1!n§()[0]);
            _loc2_.push(param1[2].§1!n§()[0]);
         }
         var _loc3_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         this.bosses = new Vector.<§+%]§>(0);
         var _loc4_:uint = 0;
         while(_loc4_ < _loc2_.length)
         {
            this.bosses[_loc4_] = _loc2_[_loc4_];
            this.bosses[_loc4_].aiMissFactor = 1;
            this.bosses[_loc4_].aiShotPower = 5;
            _loc5_ = new <§>%Q§>[new §>%Q§(§+%z§.§?$w§),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.CROSSBOW),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1),new §>%Q§(§+%z§.MOLOTOV,0.7),new §>%Q§(§+%z§.§^";§,0.7),new §>%Q§(§+%z§.RIFLE_UPG_1),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.§8#d§)];
            if(§^i§ && §8"%§.§?!W§.§^!U§().§'#t§())
            {
               _loc5_.push(new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,1,30));
            }
            this.bosses[_loc4_].aiArsenal = new §,%8§(_loc5_);
            if(_loc3_)
            {
               this.bosses[_loc4_].aiArsenal.subtractWeapons([§+%z§.CARPET_BAZOOKA,§+%z§.CARPET_BAZOOKA_UPG_1,§+%z§.§8#d§,§+%z§.FREEZING_BAZOOKA_UPG1A,§+%z§.FREEZING_BAZOOKA_UPG1B,§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B,§+%z§.§^";§]);
               this.bosses[_loc4_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.BLIZZARD,0.5),new §>%Q§(§+%z§.CANNON_UPG_3A,0.5),new §>%Q§(§+%z§.CANNON_UPG_3B_STICKY,0.5),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.5)],uint.MAX_VALUE);
            }
            this.bosses[_loc4_].buffs.place(new §`""§());
            this.bosses[_loc4_].addEventListener(§0%v§.§^$3§,this.onBossSink);
            this.bosses[_loc4_].addEventListener(§0%v§.§&!D§,this.§'$R§);
            _loc4_++;
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         if(!§^i§ && (§8"%§.§&S§.§41§() || !§8"%§.§%w§.§ #;§()) || §^i§ && §8"%§.§?!W§.§^!U§().§'#t§())
         {
            if(this.§-$d§ > -100)
            {
               this.§-$d§ -= 2;
               Application.scene.§-%[§(new ColorTransform(1,1,1,1,this.§-$d§,this.§-$d§,this.§-$d§));
               Application.scene.§6%Z§(new ColorTransform(1,1,1,1,2 * this.§-$d§,2 * this.§-$d§,2 * this.§-$d§));
               Application.scene.§'#!§(new ColorTransform(1,1,1,1,2 * this.§-$d§,2 * this.§-$d§,2 * this.§-$d§));
            }
         }
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.timer = §,%3§.§5#I§;
         return _loc1_;
      }
      
      private function onBossSink(param1:Event) : void
      {
         dispatchEvent(new §7%K§(BossAchieves.VIKINGS_DROWN_ALL));
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         dispatchEvent(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         this.bosses.length = 0;
         for each(_loc1_ in this.bosses)
         {
            _loc1_.removeEventListener(§0%v§.§^$3§,this.onBossSink);
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         }
      }
   }
}

