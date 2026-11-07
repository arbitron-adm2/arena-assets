package §-@§
{
   import §"$+§.§^$`§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §+%S§.§?3§;
   import §0%[§.§^"5§;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSONEncoder;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§["h§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5h§
   {
      
      private static var §!!2§:HeroicMissionStructure;
      
      private static var §2$w§:UserProfile;
      
      public function §5h§()
      {
         super();
      }
      
      public static function §?!g§() : void
      {
         §2!5§(§!!2§,§2$w§);
      }
      
      public static function §2!5§(param1:HeroicMissionStructure, param2:UserProfile = null) : void
      {
         var _loc3_:§["h§ = null;
         §!!2§ = param1;
         §2$w§ = param2;
         if(param2 == null)
         {
            _loc3_ = new §["h§(param1.bossIds,§#!7§,§,>§);
            _loc3_.show();
         }
         else
         {
            §#!7§(param2);
         }
      }
      
      private static function §#!7§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§-"T§(param1,§!!2§);
      }
      
      private static function §,>§(param1:Vector.<int>) : void
      {
         §8"%§.§?!W§.§@!A§(§!!2§);
      }
   }
}

