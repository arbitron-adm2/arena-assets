package §[#q§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § #m§.§;#^§;
   import § &5§.Water;
   import § K§.§+2§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§`"w§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&$Y§.§2$4§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.*;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4!!§.§'$V§;
   import §4#`§.*;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §6#Z§.§&!Z§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.*;
   import §9![§.§^§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%E§.§;!y§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#g§.§!"X§;
   import §=&!§.§4$z§;
   import §?#g§.§&"P§;
   import §?$7§.*;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.Boar;
   import §[%§.Rhino;
   import §]$&§.§2&2§;
   import §]$J§.§#"s§;
   import §]^§.§-$T§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import com.greensock.events.LoaderEvent;
   import config.§28§;
   import config.§9+§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0T§ extends §2$4§ implements §+2§
   {
      
      public function §0T§(param1:§1#+§)
      {
         super(param1);
      }
      
      override public function § $i§() : String
      {
         return §8"%§.context.§]!f§() + "data/social/{social}/photostatus/";
      }
      
      override public function §!"?§() : String
      {
         return §8"%§.§[f§.§0#C§() + "/settings";
      }
      
      override public function §-"U§() : String
      {
         return §8"%§.§[f§.§0#C§() + "/feed#/album-13842325_111888926";
      }
      
      override public function §2!8§() : String
      {
         return §8"%§.§[f§.§0#C§() + "/activation.php?app_id={" + §8"%§.§[f§.getAppLink(Application.userProfile.§"%D§()) + "}";
      }
      
      override public function §5$a§() : Boolean
      {
         return true;
      }
      
      override public function §1"@§() : Boolean
      {
         return true;
      }
      
      override public function §"!5§() : Boolean
      {
         return true;
      }
      
      override public function §8!?§() : Boolean
      {
         return true;
      }
      
      override public function §9!@§() : Date
      {
         return new Date(2015,1,1,0,0);
      }
      
      override public function §0$3§() : String
      {
         return "#";
      }
      
      override public function §@%"§(param1:String) : String
      {
         return §8"%§.§[f§.§0#C§() + "/id" + param1;
      }
      
      override public function §%#7§() : Boolean
      {
         return false;
      }
      
      override public function §"#k§() : Boolean
      {
         return true;
      }
   }
}

