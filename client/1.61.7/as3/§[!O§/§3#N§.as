package §[!O§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§"!q§;
   import §+%S§.§+m§;
   import §-%B§.*;
   import §0!Y§.§ !k§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §3#N§
   {
      
      private static const §1&+§:Array = [§#!Z§.§+!X§,§#!Z§.§@%%§,§#!Z§.§]$E§,§#!Z§.§@R§,§#!Z§.§2^§,§#!Z§.§5$5§,§#!Z§.§4t§,§#!Z§.§`!O§,§#!Z§.§!c§,§#!Z§.§%H§,§#!Z§.§0"i§,§#!Z§.§=&A§,§#!Z§.§]$P§,§#!Z§.§3"E§,§#!Z§.§^!x§,§#!Z§.§8#"§,§#!Z§.§'$u§,§#!Z§.§"#c§];
      
      private static const §,#j§:Array = [§#!Z§.§!c§,§#!Z§.§%H§];
      
      private static const §9`§:Array = [§#!Z§.§#B§,§#!Z§.§=$l§,§#!Z§.§[!E§,§#!Z§.§!&,§,§#!Z§.§'#§];
      
      private static const §<%z§:Array = [§#!Z§.§`"a§,§#!Z§.§]&7§,§#!Z§.§@#I§,§#!Z§.§>#<§];
      
      public function §3#N§()
      {
         super();
      }
      
      public static function apply(param1:Array) : Array
      {
         var _loc6_:§ !k§ = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc2_:Array = [];
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         for each(_loc6_ in param1)
         {
            if(_loc6_.commandId == §#!Z§.§8%S§)
            {
               _loc3_ = true;
               _loc2_.push(_loc6_);
               break;
            }
            if(§,#j§.indexOf(_loc6_.commandId) != -1)
            {
               _loc4_ = true;
            }
            if(§<%z§.indexOf(_loc6_.commandId) != -1)
            {
               _loc5_ = true;
            }
         }
         if(!_loc3_)
         {
            _loc7_ = 0;
            while(_loc7_ < param1.length)
            {
               _loc6_ = param1[_loc7_];
               _loc8_ = §9`§.indexOf(_loc6_.commandId) != -1;
               if(!((_loc8_) && (_loc5_ || _loc4_)))
               {
                  _loc2_.push(_loc6_);
                  _loc9_ = §1&+§.indexOf(_loc6_.commandId) != -1;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc7_++;
            }
         }
         return _loc2_;
      }
   }
}

