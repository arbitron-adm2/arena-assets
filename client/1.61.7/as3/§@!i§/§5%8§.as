package §@!i§
{
   import §-"N§.§+#R§;
   import §1#p§.§"Z§;
   import §7$t§.§;#_§;
   import §=&!§.§&$a§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §5%8§
   {
      
      private static var §["z§:Boolean;
      
      private static const §,%_§:Vector.<§0%a§> = new <§0%a§>[new §0%a§(0,6736896,9095240,"ClanFlagColor5",§0$N§.COLOR_GREEN_ACCUS,§0$N§.COLOR_GREEN_GEN),new §0%a§(2,16712708,15153474,"ClanFlagColor7",§0$N§.COLOR_RED_ACCUS,§0$N§.COLOR_RED_GEN),new §0%a§(4,16756480,16771635,"ClanFlagColor8",§0$N§.COLOR_YELLOW_ACCUS,§0$N§.COLOR_YELLOW_GEN),new §0%a§(1,3699135,6287102,"ClanFlagColor12",§0$N§.COLOR_BLUE_ACCUS,§0$N§.COLOR_BLUE_GEN)];
      
      public static const UNKNOWN:§0%a§ = new §0%a§(0,16777215,16777215,"ClanFlagColor1",§0$N§.COLOR_UNKNOWN_ACCUS,§0$N§.COLOR_UNKNOWN_GEN);
      
      §§push(§§findproperty(§[!D§));
      var _temp_8:* = new <§0%a§>[new §0%a§(0,6736896,9095240,"ClanFlagColor5",§0$N§.COLOR_GREEN_ACCUS,§0$N§.COLOR_GREEN_GEN),new §0%a§(1,3699135,6287102,"ClanFlagColor12",§0$N§.COLOR_BLUE_ACCUS,§0$N§.COLOR_BLUE_GEN),new §0%a§(2,16712708,15153474,"ClanFlagColor7",§0$N§.COLOR_RED_ACCUS,§0$N§.COLOR_RED_GEN),new §0%a§(3,16737843,16738103,"ClanFlagColor13",§0$N§.COLOR_ORANGE_ACCUS,§0$N§.COLOR_ORANGE_GEN),new §0%a§(4,16756480,16771635,"ClanFlagColor8",§0$N§.COLOR_YELLOW_ACCUS,§0$N§.COLOR_YELLOW_GEN)];
      
      private static const §[!D§:Vector.<§0%a§> = new <§0%a§>[new §0%a§(0,6736896,9095240,"ClanFlagColor5",§0$N§.COLOR_GREEN_ACCUS,§0$N§.COLOR_GREEN_GEN),new §0%a§(1,3699135,6287102,"ClanFlagColor12",§0$N§.COLOR_BLUE_ACCUS,§0$N§.COLOR_BLUE_GEN),new §0%a§(2,16712708,15153474,"ClanFlagColor7",§0$N§.COLOR_RED_ACCUS,§0$N§.COLOR_RED_GEN),new §0%a§(3,16737843,16738103,"ClanFlagColor13",§0$N§.COLOR_ORANGE_ACCUS,§0$N§.COLOR_ORANGE_GEN),new §0%a§(4,16756480,16771635,"ClanFlagColor8",§0$N§.COLOR_YELLOW_ACCUS,§0$N§.COLOR_YELLOW_GEN)];
      
      public function §5%8§()
      {
         super();
         §8"%§.§?!W§.addEventListener(§+#R§.§7%^§,this.update);
         this.update();
      }
      
      public static function §75§(param1:int) : §0%a§
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§"Z§ = null;
         var _loc6_:int = 0;
         var _loc7_:§"Z§ = null;
         var _loc8_:Array = null;
         if(!§["z§)
         {
            return param1 < §,%_§.length && param1 >= 0 ? §,%_§[param1] : UNKNOWN;
         }
         var _loc2_:Array = §8"%§.§?!W§.§4"m§.§+!0§();
         if(§8"%§.§?!W§.§^!U§().battleType == §&$a§.§9&A§)
         {
            return §[!D§[param1 == 0 ? 0 : 2];
         }
         for each(_loc5_ in _loc2_)
         {
            if(!_loc4_ && _loc5_.isLocal() && !_loc5_.isAi())
            {
               _loc4_ = true;
            }
            if(_loc5_.getNumber() == param1)
            {
               _loc3_ = _loc5_;
               if(Boolean(_loc4_) && Boolean(_loc3_.§&!G§()) && _loc3_.§&!G§().equals(Application.userProfile))
               {
                  return §[!D§[0];
               }
               break;
            }
         }
         _loc6_ = §8"%§.§?!W§.§4"m§.§2#-§();
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.getTeamId() == _loc6_ && !_loc5_.§&!G§().equals(Application.userProfile))
            {
               _loc7_ = _loc5_;
               if(_loc3_.getNumber() == _loc7_.getNumber())
               {
                  return §[!D§[1];
               }
               break;
            }
         }
         _loc8_ = [];
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.getTeamId() != _loc6_)
            {
               _loc8_.push(_loc5_);
            }
         }
         for each(_loc5_ in _loc8_)
         {
            if(_loc5_.getNumber() == _loc3_.getNumber())
            {
               return §[!D§[int(_loc8_.indexOf(_loc5_) + 2)];
            }
         }
         return UNKNOWN;
      }
      
      public static function §+#_§(param1:int) : int
      {
         var _loc2_:uint = 0;
         if(§["z§)
         {
            _loc2_ = §75§(param1).§ !C§;
            switch(_loc2_)
            {
               case 0:
                  return 0;
               case 1:
                  return 3;
               case 2:
                  return 1;
               case 3:
                  return 2;
               case 4:
                  return 2;
            }
         }
         return param1;
      }
      
      public function update(param1:Event = null) : void
      {
         §["z§ = §8"%§.§&S§.§]&B§();
      }
   }
}

