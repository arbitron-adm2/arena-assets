package §+%Q§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §"%H§.§`"w§;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%§;
   import §+%S§.§"$7§;
   import §0"L§.§+# §;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import §`%&§.§,%§;
   import §`v§.§!V§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.display.ContentDisplay;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §+$#§ extends §!V§
   {
      
      private static const §,!d§:String = §4$K§ + "weapons/";
      
      private static const §0$X§:String = §4$K§ + "hats/";
      
      private static const §1"I§:String = §4$K§ + "achievs/";
      
      private static const §[y§:String = §4$K§ + "artifacts/";
      
      private static const §7u§:String = §4$K§ + "bosses/";
      
      private static const §>#x§:String = §4$K§ + "friend_mm/";
      
      public function §+$#§()
      {
         super();
      }
      
      override public function §5&<§(param1:§`!d§) : String
      {
         return §"%L§ + param1.configName + §"$x§;
      }
      
      override public function getAchieveIcon(param1:§`"w§) : String
      {
         return §1"I§ + param1.icon + §"$x§;
      }
      
      override public function §9#A§(param1:int) : String
      {
         var _loc2_:String = §7u§;
         if(§6&'§.getInstance().contains(param1))
         {
            return _loc2_ + § !`§[param1 - 1];
         }
         if(§!#3§.getInstance().contains(param1))
         {
            param1 -= §!#3§.getInstance().§+#q§();
            return _loc2_ + §@$$§[param1 - 1];
         }
         return §[%b§ + "winSuperboss" + §"$x§;
      }
      
      override public function §@$W§(param1:§^$E§) : String
      {
         return §0$X§ + param1.getClipClassName() + §"$x§;
      }
      
      override public function §]#M§(param1:§;#_§) : String
      {
         return §,!d§ + param1.getMenuIcon() + §"$x§;
      }
      
      override public function §3k§(param1:§^%%§) : String
      {
         return §[y§ + param1.getClipClassName() + §"$x§;
      }
      
      override public function get requestPumpReaction() : String
      {
         return §>#x§ + "requestPumpReaction" + §"$x§;
      }
      
      override public function get newTeamMate() : String
      {
         return §"#'§ + "newTeammateYou" + §"$x§;
      }
      
      override public function get newTeamMateYou() : String
      {
         return §>#x§ + "newTeammateYou" + §"$x§;
      }
      
      override public function get callOnReturnFriendButton() : String
      {
         var _loc1_:Array = ["requestToReturnArena","requestToReturnArena0","requestToReturnBoss","requestToReturnHot"];
         return §>#x§ + _loc1_[int(Math.random() * _loc1_.length)] + §"$x§;
      }
      
      override public function get callToPvp() : Array
      {
         return [§>#x§ + "callToArms" + §"$x§,§>#x§ + "comeToBattle" + §"$x§];
      }
   }
}

