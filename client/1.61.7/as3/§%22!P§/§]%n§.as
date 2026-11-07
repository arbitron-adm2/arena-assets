package §"!P§
{
   import § !8§.§`!d§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8#`§.§#%r§;
   import §8#`§.§2!_§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]%n§ extends §2!_§ implements §#%r§
   {
      
      private static const § %k§:String = §4$K§ + "bosses_vk/";
      
      private static const §>%<§:String = §4$K§ + "bonus_vk/";
      
      private static const §6&E§:String = §4$K§ + "clan_vk/";
      
      private static const §0&!§:String = §4$K§ + "battle_vk/";
      
      private static const § %H§:String = §4$K§ + "rank_vk/";
      
      private static const §9$w§:String = §4$K§ + "races_vk/";
      
      public function §]%n§()
      {
         super();
         §[!=§ = §"#'§ + §@"V§("wormixLogo");
      }
      
      override public function §9#A§(param1:int) : String
      {
         var _loc2_:String = § %k§;
         if(§6&'§.getInstance().contains(param1))
         {
            return _loc2_ + § !`§[param1 - 1];
         }
         if(§!#3§.getInstance().contains(param1))
         {
            param1 -= §!#3§.getInstance().§+#q§();
            return _loc2_ + §@$$§[param1 - 1];
         }
         return "";
      }
      
      override public function get looseSuperboss() : String
      {
         return §'#4§(§[%b§,"looseSuperboss");
      }
      
      override public function get winSuperboss() : String
      {
         return §'#4§(§[%b§,"winSuperboss");
      }
      
      override public function get looseSuperbossWithFriend() : String
      {
         return §'#4§(§[%b§,"looseSuperbossWithFriend");
      }
      
      override public function get winSuperbossWithFriend() : String
      {
         return §'#4§(§[%b§,"winSuperbossWithFriend");
      }
      
      override public function get winInPvp() : String
      {
         return §0&!§ + "victory" + §"$x§;
      }
      
      override public function get looseInPvp() : String
      {
         return §0&!§ + "loose" + §"$x§;
      }
      
      override public function get gladiatorComplete() : String
      {
         return §0&!§ + "gladiator" + §"$x§;
      }
      
      override public function §@%t§(param1:Boolean) : String
      {
         return §>%<§ + (param1 ? "returnFriend" : "comeback") + "Bonus" + §"$x§;
      }
      
      override protected function §[%9§(param1:String) : String
      {
         return §'#4§(§0&!§,param1);
      }
      
      override protected function §4%=§(param1:String) : String
      {
         return §'#4§(§6&E§,param1);
      }
      
      override public function get newRank() : String
      {
         return § %H§ + "newRank" + §"$x§;
      }
      
      override public function get rubyLeague() : String
      {
         return § %H§ + "rubyLeague" + §"$x§;
      }
      
      override public function §8$=§(param1:§`!d§) : String
      {
         return §9$w§ + param1.configName + §"$x§;
      }
      
      override public function §]!r§(param1:§`!d§, param2:§&"P§) : String
      {
         return §9$w§ + param1.configName + "_" + param2.§^#;§().toLocaleLowerCase() + §"$x§;
      }
      
      override public function get winInRopeRace() : String
      {
         return §0&!§ + "victoryRopeRace" + §"$x§;
      }
      
      override public function get looseInRopeRace() : String
      {
         return §0&!§ + "looseRopeRace" + §"$x§;
      }
      
      override public function get winInRopeRaceCoop() : String
      {
         return §0&!§ + "victoryRopeRaceCoop" + §"$x§;
      }
   }
}

