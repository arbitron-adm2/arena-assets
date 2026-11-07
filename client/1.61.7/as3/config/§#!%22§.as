package config
{
   import § "d§.§,!c§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+#P§.§]!E§;
   import §+&<§.*;
   import §,$J§.§,$O§;
   import §-!U§.*;
   import §-%B§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §7!B§.§&"T§;
   import §9%W§.§`"y§;
   import §<$q§.§"%r§;
   import §=!p§.§1e§;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §@!N§.§3!3§;
   import §@!i§.§'#E§;
   import §@<§.§+%]§;
   import §`%c§.*;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#!"§
   {
      
      public static const § %;§:int = 3;
      
      §§push(§§findproperty(§9!v§));
      var _temp_13:* = new <Object>[{
         "item":§]!E§.WATER_SWORD,
         "mass":1
      },{
         "item":§]!E§.TANK_SHIELD,
         "mass":1
      },{
         "item":§]!E§.PICK,
         "mass":1
      },{
         "item":§]!E§.§5!P§,
         "mass":1
      },{
         "item":§]!E§.§^T§,
         "mass":1
      },{
         "item":§]!E§.BOSS_JARL_SPEAR,
         "mass":1
      },{
         "item":§]!E§.ROBINHOOD_BOW,
         "mass":1
      },{
         "item":§,$O§.WINTER_HAT,
         "mass":1
      },{
         "item":§,$O§.CHRISTMAS_HELMET,
         "mass":1
      },{
         "item":§,$O§.MOOSE_HELM,
         "mass":1
      },{
         "item":§,$O§.BLACK_SOMBRERO,
         "mass":1
      },{
         "item":§,$O§.MINER_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_ARCTIC_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_ENCHANTER_MASK,
         "mass":1
      },{
         "item":§,$O§.§+0§,
         "mass":1
      },{
         "item":§,$O§.BOSS_GRAVITY_MASTER_HELM,
         "mass":1
      },{
         "item":§,$O§.§?&G§,
         "mass":1
      },{
         "item":§,$O§.§`%T§,
         "mass":1
      },{
         "item":§,$O§.§%!>§,
         "mass":1
      },{
         "item":§,$O§.§,$5§,
         "mass":1
      },{
         "item":§,$O§.BOSS_BURNING_ZOMBIES_FLAME,
         "mass":1
      },{
         "item":§,$O§.BOSS_SOUL_MASTER_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_SYMBIOTE_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_MINER_CAP,
         "mass":1
      },{
         "item":§,$O§.BOSS_YAKUZA_TIGER,
         "mass":1
      },{
         "item":§,$O§.§[&2§,
         "mass":1
      },{
         "item":§,$O§.ROBINHOOD_HAT,
         "mass":1
      }];
      var _temp_26:* = new <Object>[{
         "item":§]!E§.WATER_SWORD,
         "mass":1
      },{
         "item":§]!E§.TANK_SHIELD,
         "mass":1
      },{
         "item":§]!E§.PICK,
         "mass":1
      },{
         "item":§]!E§.§5!P§,
         "mass":1
      },{
         "item":§]!E§.§^T§,
         "mass":1
      },{
         "item":§]!E§.BOSS_JARL_SPEAR,
         "mass":1
      },{
         "item":§]!E§.ROBINHOOD_BOW,
         "mass":1
      },{
         "item":§,$O§.WINTER_HAT,
         "mass":1
      },{
         "item":§,$O§.CHRISTMAS_HELMET,
         "mass":1
      },{
         "item":§,$O§.MOOSE_HELM,
         "mass":1
      },{
         "item":§,$O§.BLACK_SOMBRERO,
         "mass":1
      },{
         "item":§,$O§.MINER_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_ARCTIC_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_ENCHANTER_MASK,
         "mass":1
      },{
         "item":§,$O§.§+0§,
         "mass":1
      },{
         "item":§,$O§.BOSS_GRAVITY_MASTER_HELM,
         "mass":1
      },{
         "item":§,$O§.§?&G§,
         "mass":1
      },{
         "item":§,$O§.§`%T§,
         "mass":1
      },{
         "item":§,$O§.§%!>§,
         "mass":1
      },{
         "item":§,$O§.§,$5§,
         "mass":1
      },{
         "item":§,$O§.BOSS_BURNING_ZOMBIES_FLAME,
         "mass":1
      },{
         "item":§,$O§.BOSS_SOUL_MASTER_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_SYMBIOTE_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_MINER_CAP,
         "mass":1
      },{
         "item":§,$O§.BOSS_YAKUZA_TIGER,
         "mass":1
      },{
         "item":§,$O§.§[&2§,
         "mass":1
      },{
         "item":§,$O§.ROBINHOOD_HAT,
         "mass":1
      }];
      
      public static const §9!v§:Vector.<Object> = new <Object>[{
         "item":§]!E§.WATER_SWORD,
         "mass":1
      },{
         "item":§]!E§.TANK_SHIELD,
         "mass":1
      },{
         "item":§]!E§.PICK,
         "mass":1
      },{
         "item":§]!E§.§5!P§,
         "mass":1
      },{
         "item":§]!E§.§^T§,
         "mass":1
      },{
         "item":§]!E§.BOSS_JARL_SPEAR,
         "mass":1
      },{
         "item":§]!E§.ROBINHOOD_BOW,
         "mass":1
      },{
         "item":§,$O§.WINTER_HAT,
         "mass":1
      },{
         "item":§,$O§.CHRISTMAS_HELMET,
         "mass":1
      },{
         "item":§,$O§.MOOSE_HELM,
         "mass":1
      },{
         "item":§,$O§.BLACK_SOMBRERO,
         "mass":1
      },{
         "item":§,$O§.MINER_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_ARCTIC_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_ENCHANTER_MASK,
         "mass":1
      },{
         "item":§,$O§.§+0§,
         "mass":1
      },{
         "item":§,$O§.BOSS_GRAVITY_MASTER_HELM,
         "mass":1
      },{
         "item":§,$O§.§?&G§,
         "mass":1
      },{
         "item":§,$O§.§`%T§,
         "mass":1
      },{
         "item":§,$O§.§%!>§,
         "mass":1
      },{
         "item":§,$O§.§,$5§,
         "mass":1
      },{
         "item":§,$O§.BOSS_BURNING_ZOMBIES_FLAME,
         "mass":1
      },{
         "item":§,$O§.BOSS_SOUL_MASTER_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_SYMBIOTE_HELM,
         "mass":1
      },{
         "item":§,$O§.BOSS_MINER_CAP,
         "mass":1
      },{
         "item":§,$O§.BOSS_YAKUZA_TIGER,
         "mass":1
      },{
         "item":§,$O§.§[&2§,
         "mass":1
      },{
         "item":§,$O§.ROBINHOOD_HAT,
         "mass":1
      }];
      
      public function §#!"§()
      {
         super();
      }
      
      public static function §-#,§(param1:int) : Boolean
      {
         var _loc2_:Object = null;
         if(§+%z§.§2$_§(param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         var _loc4_:int = int(§9!v§.length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = §9!v§[_loc3_];
            if(_loc2_.item == param1 && §9&3§(_loc2_.mass))
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private static function §9&3§(param1:int) : Boolean
      {
         return param1 < § %;§;
      }
      
      public static function §1"5§() : Array
      {
         var _loc4_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         var _loc3_:int = int(§9!v§.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = §9!v§[_loc2_];
            if(!§+%z§.§2$_§(_loc4_.item) && §9&3§(_loc4_.mass))
            {
               _loc1_[_loc1_.length] = _loc4_.item;
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

