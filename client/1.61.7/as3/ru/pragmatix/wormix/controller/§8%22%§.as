package ru.pragmatix.wormix.controller
{
   import § !P§.§%%[§;
   import § !P§.§'!v§;
   import § !P§.§]z§;
   import § "I§.§,!D§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&"R§.§3B§;
   import §&#h§.§!"b§;
   import §&#h§.§"#e§;
   import §&#h§.§,#;§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §&%X§.§47§;
   import §&%X§.§^#=§;
   import §'"N§.§ !l§;
   import §'"N§.§4&5§;
   import §'"N§.§5&#§;
   import §+$=§.§9"%§;
   import §,&8§.§@r§;
   import §-@§.§,G§;
   import §-@§.§-#m§;
   import §-@§.§2"U§;
   import §-@§.§3#G§;
   import §-@§.§3%9§;
   import §-@§.§5"4§;
   import §-@§.§7$S§;
   import §-@§.§8"k§;
   import §-@§.§>$_§;
   import §-@§.§^8§;
   import §0"L§.§%$i§;
   import §0%[§.§""n§;
   import §0%[§.Cookie;
   import §0&F§.§0$_§;
   import §1%H§.§9&§;
   import §2"L§.§,'§;
   import §8$V§.§&&<§;
   import §8$V§.§1!q§;
   import §8$V§.§4$d§;
   import §8$V§.§@%R§;
   import §8$V§.§@%a§;
   import §8$V§.TeamController;
   import §8$V§.§[#_§;
   import §8$V§.§]!i§;
   import §8$V§.§^#§;
   import §8$V§.§`"k§;
   import §<"L§.§##-§;
   import §<%E§.§,$2§;
   import §=#g§.§!"X§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@!i§.§'#E§;
   import §@!i§.§,! §;
   import §@!i§.§5%8§;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"x§.§[a§;
   import §`#x§.PvpController;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§@#p§;
   import ru.pragmatix.wormix.serialization.Serializers;
   import ru.pragmatix.wormix.social.Social;
   
   public class §8"%§ extends EventDispatcher
   {
      
      public static var context:§>C§;
      
      public static var §6%1§:§ !l§;
      
      public static var §[%W§:§2!7§;
      
      public static var §[f§:§1#+§;
      
      public static var §]$s§:§47§;
      
      public static var §0!K§:§2L§;
      
      public static var §8"!§:§4&5§;
      
      public static var §&"n§:§5&#§;
      
      public static var §9"<§:§`"k§;
      
      public static var §%!m§:TeamController;
      
      public static var §0$1§:§3B§;
      
      public static var §`$"§:§]!i§;
      
      public static var §<"Z§:§@%R§;
      
      public static var §%w§:§^8§;
      
      public static var §%$r§:§3%9§;
      
      public static var §?!W§:§5"4§;
      
      public static var §[#6§:PvpController;
      
      public static var §[%h§:§-#m§;
      
      public static var §-"p§:§2"U§;
      
      public static var §7#,§:§@%a§;
      
      public static var §["$§:§&&<§;
      
      public static var §@1§:§'!v§;
      
      public static var §"&"§:§7$S§;
      
      public static var §?#H§:§[#_§;
      
      public static var §^%W§:§+$w§;
      
      public static var § $,§:§1!q§;
      
      public static var § $C§:§>$_§;
      
      public static var §#m§:§!"X§;
      
      public static var §&$k§:§`d§;
      
      public static var key:§%$i§;
      
      public static var §2#<§:§@r§;
      
      public static var §0&4§:§,G§;
      
      public static var §!&I§:§##-§;
      
      public static var §&S§:§'#E§;
      
      public static var §&#m§:§5%8§;
      
      public static var §2!d§:§5f§;
      
      public static var §'%;§:§?B§;
      
      public static var §>`§:§,#;§;
      
      public static var §?$5§:§!"b§;
      
      public static var §8!E§:§"#e§;
      
      public static var §"#§:§`#4§;
      
      public static var §@&'§:§9&§;
      
      public static var restrictions:§^#§;
      
      public static var cookies:§!m§;
      
      public static var §!"F§:uint;
      
      private static var §1!s§:§[a§;
      
      private static var §?#D§:§4$d§;
      
      public static const §^"A§:Number = 1.6;
      
      public static const VERSION:Number = §^"A§;
      
      public static var descr:§&$2§ = new §&$2§(99);
      
      public static var §4$R§:Serializers = new Serializers();
      
      public static var §"!§:§8"k§ = new §8"k§();
      
      public static var mapPreview:§3#G§ = new §3#G§();
      
      private static var §,"!§:§,'§ = new §,'§(0);
      
      private var log:§&`§ = new §&`§(§8"%§);
      
      public function §8"%§(param1:§>C§)
      {
         super();
         §8"%§.context = param1;
      }
      
      private static function §0N§(param1:§0$_§) : void
      {
         Application.§5!>§.§&$J§(param1);
         Social.§'G§();
      }
      
      public static function §3v§() : void
      {
         var _loc1_:int = §,!T§.§ #l§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:§^!V§ = new §^!V§();
         _loc3_.§@&I§(70 + 17);
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeUTF(§%%w§.§7F§.§?$X§());
         _loc4_.writeShort(42 + 7);
         _loc4_.writeUTF("CFG " + §,!T§.descr() + " (" + _loc1_ + ")");
         §6&A§.§,&!§(_loc4_,§["u§.§'&I§);
         _loc3_.§<!§(_loc4_.length);
         _loc3_.§2$t§(_loc2_);
         _loc2_.writeBytes(_loc4_);
         _loc2_.position = 0;
         while(_loc2_.bytesAvailable > 0)
         {
            §%%w§.§7F§.§#S§().writeByte(_loc2_.readByte());
         }
         §%%w§.§7F§.§#S§().flush();
      }
      
      public static function get §^$H§() : §[a§
      {
         if(!§1!s§)
         {
            §1!s§ = new §[a§();
         }
         return §1!s§;
      }
      
      public static function get randomSeed() : §,'§
      {
         return §,"!§;
      }
      
      public static function get §1#e§() : §4$d§
      {
         return §?#D§;
      }
      
      public function init() : void
      {
         if(context.§]"&§().isLocal() && Boolean(§8"%§.context.getFlashVars()._secretKey))
         {
            §["u§.§'&I§ = §8"%§.context.getFlashVars()._secretKey;
         }
         else
         {
            §["u§.§'&I§ = "s0PaWHUokZZMlhtKVyj3S1n5BruorNmk";
         }
         §,!D§.publish(10);
         Application.§`l§("Initialization...",10,"(social)");
         §[f§ = §@#p§.create(context,Application.instance.stage);
         §[f§.init(this.§ ",§);
      }
      
      private function § ",§(param1:§,$2§) : void
      {
         this.log.info(this + ".onSocialControllerInit: " + param1);
         var _loc2_:Boolean = §[f§.getType().equals(§7"n§.VK);
         if(_loc2_ || param1.success)
         {
            §,!D§.publish(15);
            Application.§`l§("Initialization...",15);
            Social.init(§[f§);
            §0!K§ = new §2L§(context,§[f§);
            §0!K§.addEventListener(Event.COMPLETE,this.§5$k§);
            §0!K§.addEventListener(§9"%§.LOAD_ERROR,this.onError);
            §0!K§.init();
         }
         else
         {
            §,!D§.publish(-14);
            Application.§`l§("Authorization error");
         }
      }
      
      private function §5$k§(param1:Event) : void
      {
         §,!D§.publish(80);
         Application.§`l§("Connection...",80);
         §2L§.§ #<§();
         var _loc2_:§%%w§ = new §%%w§(§#&%§.§6%G§);
         §""n§.single(_loc2_,Event.CONNECT,this.onConnected);
         _loc2_.connect();
      }
      
      private function onConnected(param1:Event) : void
      {
         this.log.info(this + ".onConnected");
         §,!D§.publish(85);
         Application.§`l§("Prepare...",85);
         this.§5%@§();
      }
      
      private function §5%@§() : void
      {
         §0&4§ = new §,G§();
         §#m§ = new §!"X§();
         §[%W§ = new §2!7§();
         §6%1§ = new § !l§();
         Social.§^Y§(§[f§);
         §&"n§ = new §5&#§();
         §9"<§ = new §`"k§();
         §%!m§ = new TeamController();
         §0$1§ = new §3B§();
         §`$"§ = new §]!i§();
         §<"Z§ = new §@%R§();
         §[#6§ = new PvpController();
         §%w§ = new §^8§();
         §2!d§ = new §5f§();
         §'%;§ = new §?B§();
         §>`§ = new §,#;§();
         §?$5§ = new §!"b§();
         §8!E§ = new §"#e§();
         §%$r§ = new §3%9§();
         §?!W§ = new §5"4§();
         §[%h§ = new §-#m§();
         §-"p§ = new §2"U§();
         §8"!§ = new §4&5§();
         §&$k§ = new §`d§();
         Cookie.init(§[f§.getUserId());
         §&S§ = new §'#E§();
         §&#m§ = new §5%8§();
         §7#,§ = new §@%a§();
         §^%W§ = new §+$w§(Application.instance.stage);
         §["$§ = new §&&<§();
         §!&I§ = new §##-§(Application.instance);
         § $,§ = new §1!q§();
         § $C§ = new §>$_§();
         §"#§ = new §`#4§();
         restrictions = new §^#§();
         cookies = new §!m§();
         §?#D§ = new §4$d§();
         if(Social.settings.§1"@§())
         {
            §?#H§ = new §[#_§();
         }
         §]$s§ = new §^#=§(§[f§);
         key = new §%$i§(Application.instance.stage);
         §,!D§.publish(90);
         Application.§`l§("Enter...",90);
         §]$s§.addEventListener(Event.COMPLETE,this.§<%N§);
         §]$s§.addEventListener(ErrorEvent.ERROR,this.onError);
         setTimeout(§]$s§.login,context.§2!k§()["appMode"] == Application.§!!g§ ? 0 : 3000);
      }
      
      private function §<%N§(param1:Event) : void
      {
         param1.target.removeEventListener(Event.COMPLETE,this.§<%N§);
         §,!D§.publish(99);
         Application.§`l§("Finalization...",99);
         this.dispatchEvent(new Event(Event.COMPLETE,true));
         this.§,%=§();
      }
      
      private function §,%=§() : void
      {
         §@&'§ = §9&§.getInstance();
         Application.§5!>§.§=#8§();
         Application.§5!>§.§0"'§();
         §8"!§.§`3§();
         if(!§@1§)
         {
            if(§,! §.§]"X§())
            {
               §@1§ = new §]z§();
               §""n§.single(§@1§,§0$_§.NAME,§0N§,this,[],true);
            }
            else
            {
               §@1§ = new §%%[§();
            }
         }
         Social.§0I§();
      }
      
      private function onError(param1:Event) : void
      {
         this.dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,true));
      }
   }
}

