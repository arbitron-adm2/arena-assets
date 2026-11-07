package §@!N§
{
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'$j§.§'-§;
   import §+%S§.§2&>§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4u§.ReagentHint;
   import §7!-§.MD5;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.net.registerClassAlias;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §,"J§
   {
      
      public function §,"J§()
      {
         super();
      }
      
      private static function §0"R§(param1:Class) : void
      {
         registerClassAlias("cloning." + String(param1),param1);
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
      
      public static function §##A§(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Object = {};
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      public static function §0$ §(param1:Object, param2:Object) : Object
      {
         var _loc3_:String = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
         return param1;
      }
   }
}

