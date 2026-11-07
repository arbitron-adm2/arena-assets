package §5#`§
{
   import § &5§.§0&$§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §2!-§.DamageEvent;
   import §3"@§.§#$O§;
   import §6"'§.§=$@§;
   import §7!B§.§&"T§;
   import §7$t§.*;
   import §9&+§.§>&5§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import config.achievements.BossAchieves;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%&5§
   {
      
      private static const §"n§:int = 30;
      
      private static const §;Q§:int = int(Math.round(§"n§ * 0.7071));
      
      private static const § "$§:int = 20;
      
      public function §%&5§()
      {
         super();
      }
      
      public static function §]!g§(param1:§+%]§, param2:Vector.<§+%]§>, param3:§5$n§) : void
      {
         var _loc7_:§+%]§ = null;
         var _loc8_:Vector.<Point> = null;
         var _loc9_:Boolean = false;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc4_:§%&5§ = new §%&5§();
         var _loc5_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         var _loc6_:int = 0;
         for each(_loc7_ in param2)
         {
            _loc8_ = §<;§(_loc7_);
            for each(_loc10_ in _loc8_)
            {
               if(§#"F§(_loc10_,_loc5_))
               {
                  _loc5_.push(§#=§(_loc10_,param3,_loc6_));
                  _loc9_ = true;
               }
            }
            if(_loc9_)
            {
               _loc6_++;
            }
         }
         if(_loc5_.length > 0)
         {
            _loc11_ = 1 / (_loc6_ + 1);
            §@%;§.play(§`!v§.§ !h§);
            §8$a§.§%!E§(30,§1%"§.§]$<§(§#!L§,_loc4_,[_loc5_,param1,param3,_loc11_]));
            Application.scene.weather = §0&$§.§`#@§;
         }
      }
      
      private static function §#"F§(param1:Point, param2:Vector.<§&"T§>) : Boolean
      {
         return §<H§.§=$F§(param1.x,param1.y,§""L§.§,"=§(param2),§ "$§) == null;
      }
      
      public static function §<;§(param1:§+%]§) : Vector.<Point>
      {
         var pts:Vector.<Point>;
         var dist:int = 0;
         var diag:int = 0;
         var unit:§+%]§ = param1;
         dist = §"n§;
         diag = §;Q§;
         §§push(§§newactivation());
         var _temp_4:* = new <Point>[new Point(unit.x - dist,unit.y),new Point(unit.x + dist,unit.y),new Point(unit.x,unit.y - dist),new Point(unit.x,unit.y + dist),new Point(unit.x - diag,unit.y - diag),new Point(unit.x - diag,unit.y + diag),new Point(unit.x + diag,unit.y - diag),new Point(unit.x + diag,unit.y + diag)];
         var _temp_8:* = new <Point>[new Point(unit.x - dist,unit.y),new Point(unit.x + dist,unit.y),new Point(unit.x,unit.y - dist),new Point(unit.x,unit.y + dist),new Point(unit.x - diag,unit.y - diag),new Point(unit.x - diag,unit.y + diag),new Point(unit.x + diag,unit.y - diag),new Point(unit.x + diag,unit.y + diag)];
         §§pop().§§slot[4] = new <Point>[new Point(unit.x - dist,unit.y),new Point(unit.x + dist,unit.y),new Point(unit.x,unit.y - dist),new Point(unit.x,unit.y + dist),new Point(unit.x - diag,unit.y - diag),new Point(unit.x - diag,unit.y + diag),new Point(unit.x + diag,unit.y - diag),new Point(unit.x + diag,unit.y + diag)];
         return pts.filter(function(param1:Point, ... rest):Boolean
         {
            return §>#9§.point(param1.x,param1.y);
         });
      }
      
      private static function §#=§(param1:Point, param2:§5$n§, param3:int) : §&"T§
      {
         var _loc4_:§&"T§ = null;
         _loc4_ = new §&"T§();
         _loc4_.stable = false;
         _loc4_.physicModel.keepUnstable = true;
         _loc4_.x = param1.x;
         _loc4_.y = param1.y;
         _loc4_.clip = §6#A§.§!&6§(param2.ammoClassName);
         _loc4_.clip["targetNum"] = param3;
         Application.scene.§@$I§.§1$+§(_loc4_);
         return _loc4_;
      }
      
      private static function §#!L§(param1:Vector.<§&"T§>, param2:§+%]§, param3:§5$n§, param4:Number) : void
      {
         var _loc5_:§&"T§ = null;
         var _loc6_:Number = NaN;
         for each(_loc5_ in param1)
         {
            _loc6_ = param3.damage.value - param3.damage.value * _loc5_.clip["targetNum"] * param4;
            §'"$§.§]#I§(param2,_loc5_.x,_loc5_.y,null,param3.damage.value,param3.damageRadius.value,param3.explosionRadius.value,true,true,§&!E§.COLD);
            _loc5_.disposed = true;
         }
         Application.scene.weather = §0&$§.§]$7§;
         §@%;§.play(§`!v§.§`'§);
      }
   }
}

