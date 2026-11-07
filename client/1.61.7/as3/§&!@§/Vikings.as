package §&!@§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!L§.*;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,!f§.*;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#H§.§"j§;
   import §2#x§.*;
   import §3"_§.*;
   import §3#T§.Boomerang;
   import §4f§.§-&§;
   import §6$z§.§!"§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §8$V§.§]!i§;
   import §8$V§.§`"c§;
   import §9![§.*;
   import §9%W§.§!7§;
   import §9%W§.§`"y§;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=!p§.§9#n§;
   import §=&!§.§ "^§;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §?%J§.§6%5§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@"x§.BattleSettingsMenu;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§<§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import §`%&§.§8U§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.core.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Vikings extends §6"d§
   {
      
      public static const §+=§:§&$2§ = new §&$2§(3);
      
      public function Vikings()
      {
         super(61);
      }
      
      override public function getId() : int
      {
         return §+#N§.§5#I§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §6%5§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[3],mapRecord.§8$2§[6],mapRecord.§8$2§[0],mapRecord.§8$2§[2]],[mapRecord.§8$2§[4]],[mapRecord.§8$2§[5]],[mapRecord.§8$2§[1]]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§'$R§);
         §'#G§();
      }
      
      override protected function §6&§(param1:uint) : void
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:§2R§ = null;
         super.§6&§(param1);
         var _loc2_:int = 0;
         for each(_loc3_ in enemySquads)
         {
            _loc2_ += _loc3_.§'"H§();
         }
         _loc4_ = §]%!§(BossAchieves.VIKINGS_KILL_TWO_IN_TURN);
         if(_loc4_.available)
         {
            if(_loc2_ <= 1)
            {
               _loc4_.§#"!§();
               §5X§(_loc4_);
            }
            else
            {
               _loc4_.count = 0;
            }
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.VIKINGS_DROWN_ALL)
         {
            _loc2_ = §]%!§(BossAchieves.VIKINGS_DROWN_ALL);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§+=§.value);
            }
            this.§3&9§();
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.victim.disposed)
         {
            _loc2_ = §]%!§(BossAchieves.VIKINGS_DROWN_ALL);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
            this.§3&9§();
         }
      }
      
      private function §3&9§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.VIKINGS_KILL_TWO_IN_TURN);
         if(_loc1_.available)
         {
            §=$I§(_loc1_,§+=§.value - 1);
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.VIKINGS_WIN_WITH_FULL_HP);
         if(param1.power > 0 && _loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.VIKINGS_WIN_WITH_FULL_HP).§,%,§();
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.timer = §,%3§.§5#I§;
         return _loc1_;
      }
   }
}

