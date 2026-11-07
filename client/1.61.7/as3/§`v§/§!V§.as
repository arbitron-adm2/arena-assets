package §`v§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §#",§.*;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%&3§.§'C§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%[§.§#&B§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§##l§;
   import §2#s§.*;
   import §3#a§.§-!`§;
   import §4!!§.§#Z§;
   import §7!B§.§8%%§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#`§.§'!r§;
   import §8$V§.*;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§6a§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.events.LoaderEvent;
   import config.§9+§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!V§ extends §'!r§ implements §2&H§
   {
      
      private static const §?&A§:String = §4$K§ + "weapons/";
      
      private static const §,l§:String = §4$K§ + "hats/";
      
      private static const §"%m§:String = §4$K§ + "achievs/";
      
      private static const §<#T§:String = §4$K§ + "artifacts/";
      
      private static const §["'§:String = §4$K§ + "bosses/";
      
      public function §!V§()
      {
         super();
      }
      
      public function getAchieveIcon(param1:§`"w§) : String
      {
         return §"%m§ + param1.icon + §"$x§;
      }
      
      override public function §9#A§(param1:int) : String
      {
         var _loc2_:String = §["'§;
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
         return §,l§ + param1.getClipClassName() + §"$x§;
      }
      
      override public function §]#M§(param1:§;#_§) : String
      {
         return §?&A§ + param1.getMenuIcon() + §"$x§;
      }
      
      override public function §3k§(param1:§^%%§) : String
      {
         return §<#T§ + param1.getClipClassName() + §"$x§;
      }
      
      override public function get newTeamMate() : String
      {
         return §"#'§ + "newTeammate" + §"$x§;
      }
      
      override public function get newTeamMateYou() : String
      {
         return §"#'§ + "newTeammateYou" + §"$x§;
      }
      
      override public function get callOnReturnFriendButton() : String
      {
         return §"#'§ + "requestToReturn" + §"$x§;
      }
   }
}

