package §?%J§
{
   import § "L§.FirearmTurret;
   import § "L§.MortarTurret;
   import § "L§.§`#r§;
   import § %"§.§"%5§;
   import § %f§.§ "r§;
   import § %f§.§;$y§;
   import § %f§.FieryPumpkin;
   import § %f§.GasGrenade;
   import § %f§.MechPuppet;
   import § %f§.Parasite;
   import § %f§.Puppet;
   import § %f§.VacuumGrenade;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%$n§.§<%<§;
   import §%$n§.§?,§;
   import §%&3§.§'C§;
   import §%&3§.§[$z§;
   import §%&6§.§2$v§;
   import §%&6§.§=!l§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §+5§.§7!U§;
   import §+5§.Boulder;
   import §+5§.§^$[§;
   import §,"`§.§9#s§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-8§.§`%[§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§!%J§;
   import §3#T§.§;#Q§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#2§.§,$8§;
   import §4$"§.FoulWatermelon;
   import §4$"§.Watermelon;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§+%5§;
   import §7$1§.§8&D§;
   import §7$1§.§;!%§;
   import §7$1§.§;$n§;
   import §7$1§.§=!?§;
   import §7$1§.PushingMine;
   import §7$1§.StickyMine;
   import §7$t§.§&!e§;
   import §9%4§.§'!T§;
   import §9%4§.§2&7§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<!^§.§["l§;
   import §<!f§.§!"<§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §>">§.§<!p§;
   import §>"l§.§#!Y§;
   import §>%I§.§-#f§;
   import §>%S§.§^!V§;
   import §?"q§.§""?§;
   import §?"q§.§>$`§;
   import §?"q§.LullabyElixir;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§!"t§;
   import §?$K§.§,$[§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?o§.§!%I§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[#I§.NailGrenade;
   import §[#I§.§`"O§;
   import §[%'§.§<"G§;
   import §]#b§.§8!d§;
   import §]$v§.§&"I§;
   import §]$v§.§+x§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§]"8§;
   import config.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]j§ extends §-"o§
   {
      
      private static const §,n§:§&$2§ = new §&$2§(150);
      
      private static const §9W§:§&$2§ = new §&$2§(100);
      
      public static const §8F§:uint = 1;
      
      §§push(§§findproperty(§7"G§));
      var _temp_1:* = new <Point>[new Point(-§9W§.value,-§9W§.value),new Point(§9W§.value,-§9W§.value),new Point(§9W§.value,§9W§.value),new Point(-§9W§.value,§9W§.value)];
      var _temp_3:* = new <Point>[new Point(-§9W§.value,-§9W§.value),new Point(§9W§.value,-§9W§.value),new Point(§9W§.value,§9W§.value),new Point(-§9W§.value,§9W§.value)];
      
      private static const §7"G§:Vector.<Point> = new <Point>[new Point(-§9W§.value,-§9W§.value),new Point(§9W§.value,-§9W§.value),new Point(§9W§.value,§9W§.value),new Point(-§9W§.value,§9W§.value)];
      
      private var boss:§+%]§;
      
      private var §=$8§:Vector.<§&"T§> = new Vector.<§&"T§>();
      
      private var §2$!§:§5$n§;
      
      public function §]j§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("hunter.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = uint(5 + 1.4 * param2);
         this.§2$!§ = §5$n§.§<#=§(null,_loc4_ * 2.5,0,0);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§%! §("BOT_NAME_HUNTER"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_HUNTER"),_loc4_,Race.§+&8§,60 + 8 * param2 + 9 * param2 * param3,_loc4_ * 1.6,_loc4_ * 1,§,$O§.INDIAN,0,§5%T§.§4#=§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§%! §("BOT_NAME_HUNTER"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_HUNTER"),_loc4_,Race.§+&8§,60 + 8 * param2 + 9 * param2 * param3,_loc4_ * 1.6,_loc4_ * 1,§,$O§.INDIAN,0,§5%T§.§4#=§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         var _loc2_:Boolean = §<#A§();
         §§push(this.boss);
         §§push(§§findproperty(§,%8§));
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.§8#d§,0.2),new §>%Q§(§+%z§.MINIGUN,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.5 : 0.7),new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 0.7)];
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.§8#d§,0.2),new §>%Q§(§+%z§.MINIGUN,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.5 : 0.7),new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 0.7)];
         var _temp_7:* = new <§>%Q§>[new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.§8#d§,0.2),new §>%Q§(§+%z§.MINIGUN,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.5 : 0.7),new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 0.7)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.§8#d§,0.2),new §>%Q§(§+%z§.MINIGUN,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.5 : 0.7),new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 0.7)]);
         if(_loc2_)
         {
            this.boss.aiArsenal.§0!]§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,0.7);
            this.boss.aiArsenal.subtractWeapons([§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1,§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B,§+%z§.BAZOOKA,§+%z§.BAZOOKA_UPG_1,§+%z§.§8#d§,§+%z§.FREEZING_BAZOOKA_UPG1A,§+%z§.FREEZING_BAZOOKA_UPG1B]);
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.§^%l§,0.8),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.5),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.3,2),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.5,2),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9)],uint.MAX_VALUE);
         }
         this.boss.buffs.place(new §!"t§(§,n§.value));
         this.boss.buffs.place(new §,$[§());
         if(!§^i§)
         {
            if(§^"8§)
            {
               this.boss.buffs.place(new §`""§());
            }
            else
            {
               §-#M§.§&"r§(this.boss);
            }
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§+%]§ = null;
         super.§ "a§(param1,param2);
         if(!§4"m§.§;#l§())
         {
            this.§1!7§();
            for each(_loc3_ in §4"m§.§6"M§(this.boss))
            {
               this.§0%7§(_loc3_);
            }
         }
      }
      
      private function §0%7§(param1:§+%]§) : void
      {
         var _loc2_:int = int(this.§=$8§.length);
         var _loc3_:int = 0;
         while(_loc3_ < §7"G§.length)
         {
            this.§]&4§(§-q§.§&!%§(§9W§.value - §<H§.§,%P§,param1.x + §7"G§[_loc3_].x,param1.y + §7"G§[_loc3_].y));
            if(_loc3_ > 0)
            {
               new §;#Q§(this.boss,this.§2$!§,this.§=$8§[_loc2_ + _loc3_],this.§=$8§[_loc2_ + _loc3_ - 1],65535,false);
            }
            if(_loc3_ == §7"G§.length - 1)
            {
               new §;#Q§(this.boss,this.§2$!§,this.§=$8§[_loc2_ + _loc3_],this.§=$8§[_loc2_],65535,false);
            }
            _loc3_++;
         }
         §@%;§.play(§`!v§.§-%5§);
      }
      
      private function §]&4§(param1:Point) : void
      {
         var _loc2_:§&"T§ = null;
         §1"-§.explode(§;n§.§1"E§,param1.x,param1.y,10);
         _loc2_ = new §&"T§();
         _loc2_.addEventListener(§0%v§.§&!D§,this.§9!5§);
         _loc2_.canBeDamaged = true;
         _loc2_.physParams.§0#0§ = §<#`§.§&!c§;
         _loc2_.stable = true;
         _loc2_.clip = §6#A§.§!&6§("LaserActivatorDestructible");
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         Application.scene.§@$I§.§1$+§(_loc2_);
         this.§=$8§[this.§=$8§.length] = _loc2_;
      }
      
      private function §9!5§(param1:DamageEvent) : void
      {
         if(param1.power > 0)
         {
            this.§,!C§(param1.victim);
            dispatchEvent(new §7%K§(§8F§));
         }
         else
         {
            param1.victim.stable = true;
         }
      }
      
      private function §,!C§(param1:§&"T§) : void
      {
         §1"-§.explode(§;n§.§1"E§,param1.x,param1.y,15);
         param1.removeEventListener(§0%v§.§&!D§,this.§9!5§);
         param1.disposed = true;
      }
      
      private function §1!7§() : void
      {
         var _loc1_:§&"T§ = null;
         for each(_loc1_ in this.§=$8§)
         {
            if(!_loc1_.disposed)
            {
               this.§,!C§(_loc1_);
            }
         }
         this.§=$8§.length = 0;
      }
      
      override public function clear() : void
      {
         this.§1!7§();
         this.boss = null;
         this.§2$!§ = null;
      }
   }
}

