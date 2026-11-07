package §&x§
{
   import § $q§.§-%f§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §3"@§.§#$O§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §=$h§
   {
      
      public static const §6!`§:Array = [{
         "code":90,
         "duration":1,
         "boosterId":§#$O§.WEEK_VIP
      },{
         "code":91,
         "duration":3,
         "boosterId":§#$O§.WEEK_VIP
      },{
         "code":92,
         "duration":7,
         "boosterId":§#$O§.WEEK_VIP
      },{
         "code":93,
         "duration":30,
         "boosterId":§#$O§.MONTH_VIP
      },{
         "code":94,
         "duration":90,
         "boosterId":§#$O§.WEEK_VIP
      },{
         "code":95,
         "duration":180,
         "boosterId":§#$O§.WEEK_VIP
      },{
         "code":96,
         "duration":365,
         "boosterId":§#$O§.WEEK_VIP
      },{
         "code":1072,
         "duration":30,
         "boosterId":§#$O§.MONTH_VIP
      }];
      
      public function §=$h§()
      {
         super();
      }
      
      public static function §`"!§(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6!`§)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`"P§(param1:int) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6!`§)
         {
            if(_loc2_.code == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

