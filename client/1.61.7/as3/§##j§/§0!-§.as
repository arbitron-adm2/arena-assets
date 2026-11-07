package §##j§
{
   import § &5§.§@N§;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §="z§.*;
   import §?>§.§0!7§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[$<§.§>"9§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   
   public class §0!-§ extends §9x§
   {
      
      private static const NAME:String = "WEAPON_PACK";
      
      public static const §7q§:uint = 0;
      
      public static const MEDIUM:uint = 1;
      
      public static const §@%d§:uint = 2;
      
      private var §#$1§:uint;
      
      public function §0!-§(param1:uint, param2:uint)
      {
         super(param2,NAME);
         this.§#$1§ = param1;
      }
      
      public static function §?%r§(param1:int) : §0!-§
      {
         return new §0!-§(§7q§,param1);
      }
      
      public static function medium(param1:int) : §0!-§
      {
         return new §0!-§(MEDIUM,param1);
      }
      
      public static function §>$u§(param1:int) : §0!-§
      {
         return new §0!-§(§@%d§,param1);
      }
      
      public function getType() : uint
      {
         return this.§#$1§;
      }
      
      override public function toString() : String
      {
         return count + " " + name + " " + this.§#$1§;
      }
   }
}

