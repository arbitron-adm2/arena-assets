package ru.pragmatix.wormix.social
{
   import § !P§.§'!v§;
   import § "%§.§0$[§;
   import § "%§.§7"6§;
   import § &5§.§!$#§;
   import § K§.§#H§;
   import § K§.§+2§;
   import § K§.§2!!§;
   import § K§.§="c§;
   import § K§.§@$b§;
   import § K§.§^#V§;
   import § K§.§`!5§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§&!R§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!0§.;
   import §2!0§.§%$t§;
   import §2!0§.§'$x§;
   import §2!0§.§-"Y§;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2!0§.§=&%§;
   import §3#T§.§;#Q§;
   import §4!!§.§'$V§;
   import §4%_§.ZombieGrave;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=&6§.§&"K§;
   import §?"j§.§]!<§;
   import §?#g§.*;
   import §@<§.§+%]§;
   import §[$P§.§>%a§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import config.achievements.§%#c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Social
   {
      
      public static var §-%c§:§7"6§;
      
      public static var settings:§+2§;
      
      public static var §^"U§:§@$b§;
      
      public static var §-%=§:§#H§;
      
      public static var §!g§:§^#V§;
      
      public static var §9Q§:§`!5§;
      
      public static var §?%u§:§="c§;
      
      public static var §@#m§:§2!!§;
      
      public static var §>#w§:§&!R§;
      
      public static var §6v§:§5%C§;
      
      public static var §,#7§:Boolean;
      
      private static const §=w§:String = "Wormix";
      
      public function Social()
      {
         super();
      }
      
      public static function init(param1:§1#+§) : void
      {
         settings = §#4§.create(param1);
         §-%c§ = §0$[§.create(settings.§@"G§());
         §^"U§ = §="A§.create(param1);
         §>#w§ = new §&!R§();
         §9Q§ = §5"m§.create(param1);
         §6v§ = §5%C§.getInstance();
      }
      
      public static function §^Y§(param1:§1#+§) : void
      {
         §!g§ = §=&%§.create(§8"%§.context,param1);
         §?%u§ = §'$x§.create(param1);
         §@#m§ = §%$t§.create(param1);
         §-%=§ = §-"Y§.create(param1);
         §%#c§.init(param1);
      }
      
      public static function §0I§() : void
      {
         §&"K§.getInstance().§]!w§();
      }
      
      public static function §'G§() : void
      {
         var isVk:Boolean;
         var social:§1#+§ = null;
         var achieves:§'!v§ = null;
         var isAddInMenu:Boolean = false;
         var isHasInMenu:Boolean = false;
         var isInVkMenu:Boolean = false;
      }
      
      public static function §%#-§() : Boolean
      {
         return §9Q§ != null;
      }
      
      public static function §`$A§() : Boolean
      {
         return §?%u§ != null;
      }
      
      public static function §`#u§() : String
      {
         return §=w§;
      }
      
      public static function §8%K§(param1:Event) : void
      {
         navigateToURL(new URLRequest(§8"%§.§[f§.§<#d§()),"_blank");
      }
   }
}

