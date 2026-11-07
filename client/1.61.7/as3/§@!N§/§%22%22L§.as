package §@!N§
{
   import § #9§.*;
   import §"$+§.§^$`§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,!f§.*;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §2"L§.§,'§;
   import §2B§.§#&E§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §9%W§.§!7§;
   import §<%E§.§6#`§;
   import §?#g§.Race;
   import §?>§.§!q§;
   import §?>§.§^&<§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §""L§
   {
      
      public function §""L§()
      {
         super();
      }
      
      public static function §6$6§(param1:Array, param2:§,'§ = null) : Array
      {
         if(param2 == null)
         {
            param2 = §8"%§.randomSeed || new §,'§(Math.random() * 1000);
         }
         var _loc3_:Array = param1.concat();
         var _loc4_:Array = [];
         while(_loc3_.length > 0)
         {
            _loc4_.push(_loc3_.splice(param2.§,!q§(0,_loc3_.length - 1),1)[0]);
         }
         return _loc4_;
      }
      
      public static function §=!W§(param1:Array, param2:§,'§ = null) : *
      {
         if(param1.length > 0)
         {
            if(param2)
            {
               return param1[int(param2.§,!q§(0,param1.length - 1))];
            }
            return param1[int(Math.floor(Math.random() * param1.length))];
         }
         return null;
      }
      
      public static function §,"=§(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §9%;§(param1:Array) : Vector.<int>
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>(0);
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §'!8§(param1:Object, param2:Array) : Boolean
      {
         var _loc3_:Class = null;
         for each(_loc3_ in param2)
         {
            if(param1 is _loc3_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §4$B§(param1:int, param2:int) : int
      {
         if(param1 < param2)
         {
            return 1;
         }
         if(param1 > param2)
         {
            return -1;
         }
         return 0;
      }
   }
}

