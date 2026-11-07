package §^!"§
{
   import § &5§.§=#P§;
   import §#",§.§+!h§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0%[§.§0%§;
   import §1"r§.§ ! §;
   import §3"_§.*;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §]$v§.§]%_§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.geom.Matrix;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^$F§
   {
      
      public static const §`"G§:§^$F§ = new §^$F§();
      
      public static const §'$1§:§^$F§ = new §^$F§();
      
      public static const BALANCE:§^$F§ = new §^$F§();
      
      public static const §6! §:§^$F§ = new §^$F§();
      
      public function §^$F§()
      {
         super();
      }
      
      public static function §@$p§(param1:§^$F§, param2:uint) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         switch(param1)
         {
            case §^$F§.§`"G§:
               _loc3_ = param2 * 1.6;
               break;
            case §^$F§.§'$1§:
               _loc3_ = param2 * 0.4;
               break;
            case §^$F§.BALANCE:
               _loc3_ = int(param2);
               break;
            case §^$F§.§6! §:
               _loc3_ = int(§-q§.random(param2 * 0.4,param2 * 1.6));
               break;
            default:
               _loc3_ = int(param2);
         }
         _loc4_ = param2 * 2 - _loc3_;
         return [_loc3_,_loc4_];
      }
   }
}

