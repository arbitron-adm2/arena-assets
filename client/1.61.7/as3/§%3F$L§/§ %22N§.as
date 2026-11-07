package §?$L§
{
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §%"1§.§=#?§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0%[§.§%#w§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9![§.§^§;
   import §9%W§.§!"G§;
   import §<!W§.§1N§;
   import §@$§.§+%>§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import config.§`!a§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class § "N§
   {
      
      public static var §!% §:§=#?§;
      
      public static var §,M§:§=#?§;
      
      public static var §=%b§:§=#?§;
      
      public static var §&$q§:§=#?§;
      
      public static var §["K§:§=#?§;
      
      public static var §[!k§:§=#?§;
      
      public static var §'?§:§=#?§;
      
      public static var §^"Q§:§=#?§;
      
      public static var §3$x§:§=#?§;
      
      private static var §3#C§:§%#w§;
      
      private static var §@$a§:Rectangle;
      
      public static var §39§:String = "Qtip";
      
      public static var §+$t§:String = "MsgBox";
      
      public static var §9!l§:uint = 10066329;
      
      public static var § %j§:Number = 0.5;
      
      public static var §"%R§:Boolean = false;
      
      public static var §]p§:Boolean = true;
      
      public function § "N§()
      {
         super();
      }
      
      public static function get stageWidth() : Number
      {
         return §@$a§.width;
      }
      
      public static function get stageHeight() : Number
      {
         return §@$a§.height;
      }
      
      public static function §!$!§(param1:Rectangle) : void
      {
         §@$a§ = new Rectangle(0,0,param1.width,param1.height);
      }
      
      public static function §?$t§() : Rectangle
      {
         return §@$a§;
      }
      
      public static function §;$E§(param1:Number, param2:Number) : void
      {
         §@$a§ = new Rectangle(0,0,param1,param2);
      }
      
      public static function get scene() : DisplayObjectContainer
      {
         return §3#C§.getInstance();
      }
      
      public static function §]S§(param1:§%#w§) : void
      {
         §3#C§ = param1;
      }
   }
}

