package §'!Z§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&&6§.*;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §1"r§.§4!u§;
   import §1#p§.*;
   import §4!x§.§@& §;
   import §5"J§.*;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §>$q§.§4#;§;
   import §@$f§.PromoRaidWindow;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   
   public class §#N§
   {
      
      public static const §<$"§:ColorMatrixFilter = new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0]);
      
      public static const §"H§:ColorMatrixFilter = new ColorMatrixFilter([0.5334523320198059,0.29776835441589355,-0.031220674514770508,0,12.699999809265137,0.11480170488357544,0.63230377435684,0.052894510328769684,0,12.700000762939453,0.17939883470535278,0.19844159483909607,0.4221595823764801,0,12.700000762939453,0,0,0,1,0]);
      
      public function §#N§()
      {
         super();
      }
      
      public static function §^$>§(param1:Number = 20, param2:Number = 3) : GlowFilter
      {
         return new GlowFilter(16711680,1,param1,param1,param2,BitmapFilterQuality.HIGH);
      }
   }
}

