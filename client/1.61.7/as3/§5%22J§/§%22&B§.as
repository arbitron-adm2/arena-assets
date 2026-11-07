package §5"J§
{
   import § !P§.§<#q§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<"L§.*;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §`%&§.§,%§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §"&B§ extends §7@§
   {
      
      private static const §[!v§:uint = 7;
      
      private static const §8!W§:Array = [];
      
      private static const §3"v§:Array = [§+%z§.BAZOOKA,§+%z§.GRENADE,§+%z§.RIFLE,§+%z§.BLOW_TORCH,§+%z§.ANTITOXIN,§+%z§.BANDAGE,§+%z§.ANVIL,§+%z§.§5-§,§+%z§.SUPER_DRILL_MISSILE,§+%z§.§^%l§,§+%z§.REINFORCEMENT_CALL,§+%z§.ZOMBIE_MARCH,§+%z§.FROST_STASIS,§+%z§.MESSY_BOMBARDMENT,§+%z§.FIREARM_TURRET,§+%z§.§!#b§,§+%z§.§]h§];
      
      private static const §0w§:Vector.<WeaponStructure> = new <WeaponStructure>[new WeaponStructure(§+%z§.SWITCH_TURN,1),new WeaponStructure(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,-1)];
      
      public function §"&B§()
      {
         var _loc1_:§;#_§ = null;
         super();
         if(§8!W§.length == 0)
         {
            for each(_loc1_ in §<$c§.getWeapons())
            {
               if(_loc1_.getId() > 300 && _loc1_.getId() < §9##§.§;9§ && !_loc1_.bossWeapon && §3"v§.indexOf(§1!S§.§[!r§(_loc1_.getId())) == -1)
               {
                  §8!W§.push(_loc1_.getId());
               }
            }
         }
      }
      
      private static function §["[§() : void
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:§;#X§ = null;
         var _loc4_:WeaponStructure = null;
         var _loc5_:§+%]§ = null;
         var _loc1_:Array = §8"%§.§?!W§.§4"m§.§+!0§();
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = _loc2_.§&!G§().getBattleBackpack();
            for each(_loc4_ in §0w§)
            {
               _loc3_.§0%8§(§<$c§.§ !=§(_loc4_.getId()),_loc4_.getCount());
            }
            for each(_loc5_ in _loc2_)
            {
               _loc5_.lastWeapon = §'%_§.getWeapon(§+%z§.BAZOOKA_UPG_2_CUMULATIVE);
            }
         }
      }
      
      override public function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            §["[§();
         }
         if(param1 >= §[!v§)
         {
            super.§ "a§(param1);
         }
      }
      
      override protected function §9&8§(param1:§;#X§, param2:uint, param3:uint) : Vector.<WeaponStructure>
      {
         var _loc4_:WeaponStructure = new WeaponStructure(§""L§.§=!W§(§8!W§,§8"%§.randomSeed),1);
         return new <WeaponStructure>[_loc4_];
      }
   }
}

