package §%L§
{
   import § "L§.§`#r§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&"R§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0%z§.§+y§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §1&-§.*;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §4f§.§-&§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §8$V§.§`"c§;
   import §8$Z§.§9!&§;
   import §9![§.§^§;
   import §9&+§.§6&=§;
   import §;#O§.§+%7§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§'%#§;
   import §?"j§.*;
   import §?>§.§0!7§;
   import §@!N§.§4"0§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.AchieveLogin;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#&%§
   {
      
      private static const §7!Q§:§#&%§ = new §#&%§("my.rmart.ru",[6020]);
      
      private static const §'S§:§#&%§ = new §#&%§("my.rmart.ru",[6002]);
      
      private static const §99§:§#&%§ = new §#&%§("my.rmart.ru",[80]);
      
      private static const §`%5§:§#&%§ = new §#&%§("my.rmart.ru",[6017]);
      
      public static var PVP:§#&%§ = §'S§;
      
      public static var §6%G§:§#&%§ = §7!Q§;
      
      public static var §0#e§:§#&%§ = §99§;
      
      public static var §"#g§:§#&%§ = §`%5§;
      
      private var §=&E§:String;
      
      private var §["=§:String;
      
      private var §'!g§:String;
      
      private var §7#D§:Array;
      
      public function §#&%§(param1:String, param2:Array, param3:String = "", param4:String = "")
      {
         super();
         this.§=&E§ = param1;
         this.§7#D§ = param2;
         this.§["=§ = param3;
         this.§'!g§ = param4;
      }
      
      public static function init(param1:§#&%§, param2:§#&%§, param3:§#&%§, param4:§#&%§) : void
      {
         §#&%§.§6%G§ = param1;
         §#&%§.PVP = param2;
         §#&%§.§0#e§ = param3;
         §#&%§.§"#g§ = param4;
      }
      
      public static function §''§() : void
      {
      }
      
      public function §&![§() : String
      {
         return this.§=&E§;
      }
      
      public function §0!+§() : Array
      {
         return this.§7#D§;
      }
      
      public function §%$>§() : String
      {
         return this.§["=§;
      }
      
      public function §-#H§() : String
      {
         return this.§'!g§;
      }
      
      public function toString() : String
      {
         return "Server{" + "host=" + String(this.§=&E§) + ",availablePorts=" + String(this.§7#D§) + ",url=\'" + this.§>#?§() + "\'" + "}";
      }
      
      public function §>#?§() : String
      {
         return "";
      }
   }
}

