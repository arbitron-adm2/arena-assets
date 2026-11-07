package ru.pragmatix.wormix.game.rules
{
   import § !8§.§9%+§;
   import § "d§.§,!c§;
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§6$3§;
   import §#"V§.*;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#5§.*;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§]2§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §1&-§.§ &=§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §;!Z§.*;
   import §<!W§.§!"+§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §=7§.§?%4§;
   import §=;§.§1S§;
   import §=;§.§@§;
   import §=;§.§^"E§;
   import §?#g§.Race;
   import §?$7§.*;
   import §?$K§.§>K§;
   import §?$L§.§&$9§;
   import §?X§.§36§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@#K§.§-§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §]$J§.§2%X§;
   import §]$J§.§4%^§;
   import §]$J§.§7!V§;
   import §]$J§.§]#X§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import config.§=%A§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class SupplyManager
   {
      
      private static var §^$6§:int;
      
      private static var §6#t§:int;
      
      private static var cooldowns:Dictionary;
      
      private static const §9"Z§:uint = 8;
      
      private static const §6$`§:uint = 4;
      
      private static const §6%?§:uint = 32;
      
      private static const §7"g§:uint = 8;
      
      private static var §-$x§:§&$2§ = new §&$2§(0);
      
      private static const §"#q§:Array = [{
         "klass":§]#X§,
         "difference":§]#X§.§0&D§ * 1.4,
         "cooldown":§]#X§.§4%#§
      },{
         "klass":§2%X§,
         "difference":§2%X§.§0&D§ * 1.6,
         "cooldown":§2%X§.§4%#§
      },{
         "klass":§7!V§,
         "difference":§7!V§.§0&D§ * 1.8,
         "cooldown":§7!V§.§4%#§
      }];
      
      public function SupplyManager()
      {
         super();
      }
      
      public static function reset(param1:int = 4) : void
      {
         var _loc3_:Object = null;
         §^$6§ = §6%?§;
         §6#t§ = §7"g§ + param1;
         var _loc2_:§]$d§ = §8"%§.§?!W§.§^!U§();
         if(_loc2_.wager)
         {
            switch(_loc2_.wager.id)
            {
               case §-"P§.§"#p§:
                  §^$6§ = §9"Z§ * param1;
                  §6#t§ = §6$`§ + param1;
                  break;
               case §-"P§.§'$L§:
               case §-"P§.§,$^§:
               case §-"P§.§"!0§:
                  §^$6§ = §9"Z§ * 2;
                  §6#t§ = §6$`§ + 2;
                  break;
               case §-"P§.§>!x§:
                  §^$6§ = §9"Z§ * 4;
                  §6#t§ = §6$`§ + 4;
                  break;
               case §-"P§.§68§:
                  §^$6§ = §9"Z§;
                  §6#t§ = §6$`§;
            }
         }
         §-$x§.value = 0;
         cooldowns = new Dictionary();
         for each(_loc3_ in §"#q§)
         {
            cooldowns[_loc3_.klass] = 0;
         }
      }
      
      public static function §!#[§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §"#q§)
         {
            if(cooldowns[_loc1_.klass] > 0)
            {
               --cooldowns[_loc1_.klass];
            }
         }
      }
      
      public static function §&s§(param1:Class) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §"#q§)
         {
            if(_loc2_.klass == param1)
            {
               return _loc2_.cooldown;
            }
         }
         return 0;
      }
      
      public static function §`$[§(param1:§]$;§, param2:§0&$§) : void
      {
         var _loc4_:uint = 0;
         if(§-$x§.value >= §^$6§)
         {
            return;
         }
         var _loc3_:int = param1.activeUnit.record.getLevel();
         if(_loc3_ < 5)
         {
            _loc4_ = 100;
         }
         else if(_loc3_ < 19)
         {
            _loc4_ = 15 + 5 * (20 - _loc3_);
         }
         else
         {
            _loc4_ = 25;
         }
         if(§8"%§.randomSeed.§,!q§(1,100) < _loc4_)
         {
            if(§3$O§(param1,param2,§@#3§) != null)
            {
               ++§-$x§.value;
            }
         }
      }
      
      public static function §>#^§(param1:§]$;§, param2:§0&$§) : void
      {
         var _loc4_:§-#8§ = null;
         var _loc5_:int = 0;
         var _loc3_:uint = uint(param1.activeUnit.record.getLevel());
         if(§8"%§.§?!W§.§^!U§().reagentsForBattle.length > 0 && §8"%§.randomSeed.§,!q§(1,100) < _loc3_)
         {
            _loc4_ = §3$O§(param1,param2,§^"E§);
            if(_loc4_)
            {
               _loc5_ = §8"%§.§?!W§.§^!U§().reagentsForBattle.shift();
               §^"E§(_loc4_).setCraftItemId(_loc5_);
            }
         }
      }
      
      private static function §3$O§(param1:§]$;§, param2:§0&$§, param3:Class) : §-#8§
      {
         var _loc4_:SpawnResult = §=>§(param1,param2);
         var _loc5_:uint = 500;
         var _loc6_:§-#8§ = null;
         if(_loc4_)
         {
            _loc6_ = new param3(_loc4_.toPoint());
            if(_loc4_.fallDistance > _loc5_)
            {
               §1S§.§;!r§(_loc6_);
            }
         }
         return _loc4_ != null ? _loc6_ : null;
      }
      
      private static function §=>§(param1:§]$;§, param2:§0&$§) : SpawnResult
      {
         return param1.activeSquad.isAi() ? §6#r§(param1) : §<!&§(param1,param2);
      }
      
      public static function §##Q§(param1:§]$;§, param2:§0&$§) : Boolean
      {
         var _loc4_:SpawnResult = null;
         var _loc5_:Boolean = false;
         if(§-$x§.value >= §^$6§ || §>d§() >= §6#t§)
         {
            return false;
         }
         var _loc3_:Class = §>#4§(param1);
         if(_loc3_ != null)
         {
            _loc4_ = param1.activeSquad.isAi() ? §6#r§(param1) : §<!&§(param1,param2);
            _loc5_ = _loc4_ != null;
            if(_loc5_)
            {
               new _loc3_(_loc4_.toPoint());
            }
            ++§-$x§.value;
            return _loc5_;
         }
         return false;
      }
      
      public static function §^!&§(param1:§]$;§, param2:§0&$§) : Boolean
      {
         var _loc4_:SpawnResult = null;
         var _loc5_:Boolean = false;
         if(§-$x§.value >= §^$6§ || §>d§() >= §6#t§)
         {
            return false;
         }
         var _loc3_:Class = §,"Q§(param1);
         if(_loc3_ != null)
         {
            _loc4_ = §<!&§(param1,param2);
            _loc5_ = _loc4_ != null;
            if(_loc5_)
            {
               new _loc3_(_loc4_.toPoint());
               ++§-$x§.value;
            }
            return _loc5_;
         }
         return false;
      }
      
      private static function §>d§() : uint
      {
         return Application.scene.§@$I§.§;%a§.§"L§([§#"s§]).length;
      }
      
      private static function §'%c§() : uint
      {
         var _loc3_:§#"s§ = null;
         var _loc1_:uint = 0;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§#"s§]);
         for each(_loc3_ in _loc2_)
         {
            _loc1_ += _loc3_.§2$§();
         }
         return _loc1_;
      }
      
      private static function §>#4§(param1:§]$;§) : Class
      {
         var Medkit:Class;
         var ourHP:int = 0;
         var enemyHP:int = 0;
         var hpOnMap:uint = 0;
         var diff:int = 0;
         var seed:int = 0;
         var level:int = 0;
         var threshold:int = 0;
         var gm:§]$;§ = param1;
         ourHP = gm.activeUnit.hp;
         gm.§="T§().forEach(function(param1:§+%]§, ... rest):void
         {
            ourHP += param1.hp;
         });
         enemyHP = 0;
         gm.§6"M§().forEach(function(param1:§+%]§, ... rest):void
         {
            enemyHP += param1.hp;
         });
         hpOnMap = §'%c§() * 0.8;
         diff = Math.min(enemyHP - ourHP - hpOnMap,gm.activeUnit.attributes.hp.§8!R§() - gm.activeUnit.hp - hpOnMap);
         Medkit = null;
         §"#q§.every(function(param1:Object, ... rest):Boolean
         {
            if(param1.difference < diff)
            {
               Medkit = param1.klass;
               return true;
            }
            return false;
         });
         if(Medkit != null)
         {
            seed = §8"%§.randomSeed.§,!q§(1,100);
            level = gm.activeUnit.record.getLevel();
            threshold = gm.activeSquad.isAi() ? int(Math.min(3 * level,70)) : int(Math.max(100 - 3 * level,30));
            if(seed < threshold)
            {
               if(cooldowns[Medkit] == 0)
               {
                  cooldowns[Medkit] = §&s§(Medkit);
                  return Medkit;
               }
               return §]#X§;
            }
            return null;
         }
         return §8"%§.randomSeed.§6#;§() ? §4%^§ : null;
      }
      
      private static function §,"Q§(param1:§]$;§) : Class
      {
         var Medkit:Class;
         var seed:int;
         var threshold:int;
         var miniThreshold:int;
         var ourHP:int = 0;
         var enemyHP:int = 0;
         var hpOnMap:uint = 0;
         var diff:int = 0;
         var gm:§]$;§ = param1;
         ourHP = gm.activeUnit.hp;
         gm.§="T§().forEach(function(param1:§+%]§, ... rest):void
         {
            ourHP += param1.hp;
         });
         enemyHP = 0;
         gm.§6"M§().forEach(function(param1:§+%]§, ... rest):void
         {
            enemyHP += param1.hp;
         });
         hpOnMap = §'%c§() * 0.9;
         diff = Math.min(enemyHP - ourHP - hpOnMap,gm.activeUnit.attributes.hp.§8!R§() - gm.activeUnit.hp - hpOnMap);
         Medkit = null;
         §"#q§.every(function(param1:Object, ... rest):Boolean
         {
            if(param1.difference < diff)
            {
               Medkit = param1.klass;
               return true;
            }
            return false;
         });
         seed = §8"%§.randomSeed.§,!q§(1,100);
         threshold = 8;
         miniThreshold = 35;
         if(Medkit != null && seed < threshold)
         {
            if(cooldowns[Medkit] == 0)
            {
               cooldowns[Medkit] = §&s§(Medkit);
               return Medkit;
            }
            return §]#X§;
         }
         return seed < miniThreshold ? §4%^§ : null;
      }
      
      private static function §6#r§(param1:§]$;§) : SpawnResult
      {
         var _loc2_:int = param1.activeUnit.x;
         var _loc3_:int = param1.activeUnit.y;
         while(!§>#9§.point(_loc2_,_loc3_ - 20))
         {
            _loc3_ -= 20;
            if(_loc3_ <= 30)
            {
               break;
            }
         }
         return new SpawnResult(_loc2_,_loc3_,0);
      }
      
      private static function §<!&§(param1:§]$;§, param2:§0&$§) : SpawnResult
      {
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:uint = 30;
         var _loc6_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§+%]§,§-#8§]);
         while(_loc4_++ < _loc5_ && !_loc3_)
         {
            _loc7_ = 20;
            _loc8_ = uint(param2.height >> 1);
            _loc9_ = param2.height - 100;
            _loc10_ = param1.activeUnit.x + §8"%§.randomSeed.§,!q§(-750,750);
            if(§<H§.§%$Q§(_loc10_ - 50,-30,_loc10_ + 50,param2.height + 30,_loc6_).length > 0)
            {
               break;
            }
            _loc11_ = -1;
            _loc12_ = 10;
            while(_loc12_ < _loc8_)
            {
               if(!§>#9§.point(_loc10_,_loc12_))
               {
                  _loc11_ = _loc12_;
                  break;
               }
               _loc12_ += _loc7_;
            }
            if(_loc11_ == -1)
            {
               break;
            }
            _loc12_ = _loc11_ + _loc7_;
            while(_loc12_ < _loc9_)
            {
               if(§>#9§.point(_loc10_,_loc12_) && §>#9§.§3m§(_loc10_,_loc12_,true,20))
               {
                  _loc3_ = true;
                  break;
               }
               _loc12_ += _loc7_;
            }
         }
         return _loc3_ ? new SpawnResult(_loc10_,_loc12_ - _loc7_,_loc7_) : null;
      }
   }
}

import flash.geom.Point;

class SpawnResult
{
   
   internal var x:int;
   
   internal var y:int;
   
   internal var fallDistance:int;
   
   public function SpawnResult(param1:int, param2:int, param3:int)
   {
      super();
      this.x = param1;
      this.y = param2;
      this.fallDistance = param3;
   }
   
   internal function toPoint() : Point
   {
      return new Point(this.x,this.y);
   }
}
