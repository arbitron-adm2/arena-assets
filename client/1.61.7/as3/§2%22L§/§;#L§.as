package §2"L§
{
   import §"%H§.*;
   import §%"1§.§@%;§;
   import §+#U§.§'#w§;
   import §0%[§.§0%§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §@<§.§+%]§;
   import §`%&§.§2z§;
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §;#L§
   {
      
      public function §;#L§()
      {
         super();
      }
      
      public static function §<h§(param1:int) : Object
      {
         var _loc2_:int = param1 >> 16;
         var _loc3_:int = param1 - (_loc2_ << 16);
         var _loc4_:int = _loc3_ >> 8;
         var _loc5_:int = _loc3_ - (_loc4_ << 8);
         return {
            "r":_loc2_,
            "g":_loc4_,
            "b":_loc5_
         };
      }
      
      public static function §&&§(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Object = §;#L§.§<h§(param2);
         param1.transform.colorTransform = new ColorTransform(0,0,0,1,_loc3_.r,_loc3_.g,_loc3_.b,0);
      }
      
      public static function setDisabled(param1:DisplayObject) : void
      {
         param1.transform.colorTransform = new ColorTransform(0.35,0.35,0.35,1,133,133,133,0);
      }
      
      public static function §=#H§(param1:DisplayObject) : void
      {
         param1.transform.colorTransform = new ColorTransform(1,1,1,1,0,0,0,0);
      }
   }
}

