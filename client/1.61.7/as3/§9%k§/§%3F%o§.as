package §9%k§
{
   import §!$d§.§<$c§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"Z§.§'$2§;
   import §&#h§.§-"F§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7$t§.§&!e§;
   import §8$V§.TeamController;
   import §;#O§.§+%7§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import config.§^"2§;
   import config.achievements.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   
   public class §?%o§
   {
      
      private static var rewards:Array = [new §,&F§(1,[]),new §,&F§(2,[new §7%R§(50),new §>"M§(5,§#&E§.§-!l§),new §`%g§(§+%z§.UZI,-1),new §`%g§(§+%z§.DYNAMITE,-1),new §`%g§(§+%z§.ROPE,-1)]),new §,&F§(3,[new §7%R§(75),new §>"M§(5,§#&E§.§-!l§),new §`%g§(§+%z§.MINE,-1),new §`%g§(§+%z§.§]!]§,-1),new §`%g§(§+%z§.MORTAR,-1),new §!%&§(§#"B§.MUTAGEN,5)]),new §,&F§(4,[new §7%R§(100),new §>"M§(5,§#&E§.§-!l§),new §>"M§(1,§#&E§.§^5§),new §`%g§(§+%z§.SHURIKEN,-1),new §`%g§(§+%z§.DRILL,-1),new §`%g§(§+%z§.§4"k§,-1),new §!%&§(§#"B§.§;#%§,5),new §!%&§(§#"B§.MUTAGEN,5),new §!%&§(§#"B§.BADGE,5)]),new §,&F§(5,[new §7%R§(250),new §<!P§(2),new §>"M§(5,§#&E§.§-!l§),new §>"M§(1,§#&E§.§^5§),new §0%=§(§+%7§.§-%W§(§^"2§.§'![§(-1)).§>#q§()),new §`%g§(§+%z§.SHOTGUN,-1),new §`%g§(§+%z§.STICKY_GRENADE,-1),new §`%g§(§+%z§.SWITCH_TURN,-1),new §`%g§(§+%z§.ANTITOXIN,5),new §`%g§(§+%z§.BANDAGE,5),new §!%&§(§#"B§.§;#%§,5),new §!%&§(§#"B§.MUTAGEN,5),new §!%&§(§#"B§.BADGE,5)]),new §,&F§(6,[new §7%R§(150),new §>"M§(5,§#&E§.§-!l§),new §>"M§(1
      ,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.SHOCKER,-1),new §`%g§(§+%z§.MINIGUN,-1),new §`%g§(§+%z§.ANTITOXIN,5),new §`%g§(§+%z§.BANDAGE,5),new §!%&§(§#"B§.§;#%§,5),new §!%&§(§#"B§.MUTAGEN,5),new §!%&§(§#"B§.BADGE,5)]),new §,&F§(7,[new §7%R§(175),new §>"M§(5,§#&E§.§-!l§),new §>"M§(1,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.GIRDER,-1),new §`%g§(§+%z§.CARPET_BAZOOKA,-1),new §`%g§(§+%z§.ANTITOXIN,5),new §`%g§(§+%z§.BANDAGE,5),new §!%&§(§#"B§.§;#%§,5),new §!%&§(§#"B§.MUTAGEN,5),new §!%&§(§#"B§.BADGE,5)]),new §,&F§(8,[new §7%R§(200),new §>"M§(5,§#&E§.§-!l§),new §>"M§(1,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.§8#d§,-1),new §`%g§(§+%z§.§5&,§,-1),new §`%g§(§+%z§.ANTITOXIN,5),new §`%g§(§+%z§.BANDAGE,5),new §!%&§(§#"B§.§;#%§,5),new §!%&§(§#"B§.MUTAGEN,5),new §!%&§(§#"B§.BADGE,5)]),new §,&F§(9,[new §7%R§(225),new §>"M§(5,§#&E§.§-!l§),new §>"M§(1,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.HARPOON,-1),new §`%g§(§+%z§.SHEEP,-1),new §`%g§(§+%z§.ANTITOXIN,5),new §`%g§(§+%z§
      .BANDAGE,5),new §!%&§(§#"B§.§;#%§,5),new §!%&§(§#"B§.MUTAGEN,5),new §!%&§(§#"B§.BADGE,5)]),new §,&F§(10,[new §7%R§(1000),new §<!P§(10),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.JETPACK,-1),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(11,[new §7%R§(275),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.CROSSBOW,-1),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(12,[new §7%R§(300),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.§!`§,-1),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(13,[new §7%R§(325),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1
      ,§#&E§.§#E§),new §`%g§(§+%z§.CANNON,-1),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(14,[new §7%R§(350),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.SNIPER_RIFLE,-1),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(15,[new §7%R§(750),new §<!P§(7),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.BOOMERANG,-1),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(16,[new §7%R§(400),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(17,[new §7%R§(425)
      ,new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(18,[new §7%R§(450),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(19,[new §7%R§(475),new §>"M§(10,§#&E§.§-!l§),new §>"M§(2,§#&E§.§^5§),new §>"M§(1,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,10),new §`%g§(§+%z§.BANDAGE,10),new §!%&§(§#"B§.§;#%§,10),new §!%&§(§#"B§.MUTAGEN,10),new §!%&§(§#"B§.BADGE,10)]),new §,&F§(20,[new §7%R§(2000),new §<!P§(20),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.§"!S§,-1),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(21,[new §7%R§(525)
      ,new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(22,[new §7%R§(550),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(23,[new §7%R§(575),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(24,[new §7%R§(600),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(25,[new §7%R§(1250),new §<!P§(12),new §>"M§(15,§#&E§
      .§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.PARASITE,-1),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(26,[new §7%R§(650),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(27,[new §7%R§(675),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(28,[new §7%R§(700),new §>"M§(15,§#&E§.§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(29,[new §7%R§(725),new §>"M§(15,§#&E§
      .§-!l§),new §>"M§(3,§#&E§.§^5§),new §>"M§(2,§#&E§.§#E§),new §`%g§(§+%z§.ANTITOXIN,15),new §`%g§(§+%z§.BANDAGE,15),new §!%&§(§#"B§.§;#%§,15),new §!%&§(§#"B§.MUTAGEN,15),new §!%&§(§#"B§.BADGE,15)]),new §,&F§(30,[new §7%R§(3000),new §<!P§(30),new §>"M§(20,§#&E§.§-!l§),new §>"M§(4,§#&E§.§^5§),new §>"M§(3,§#&E§.§#E§),new §`%g§(§+%z§.SPIDER,-1),new §`%g§(§+%z§.ANTITOXIN,5),new §`%g§(§+%z§.BANDAGE,5),new §!%&§(§#"B§.§;#%§,20),new §!%&§(§#"B§.MUTAGEN,20),new §!%&§(§#"B§.BADGE,20)])];
      
      public function §?%o§()
      {
         super();
      }
      
      public static function §+$Q§(param1:uint) : §,&F§
      {
         var _loc2_:§,&F§ = null;
         for each(_loc2_ in rewards)
         {
            if(param1 == _loc2_.getLevel())
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7#q§(param1:uint) : §,&F§
      {
         var _loc2_:§,&F§ = null;
         var _loc3_:§`%g§ = null;
         loop0:
         for each(_loc2_ in rewards)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.getWeapons(true);
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(!(_loc3_.getId() == param1 && (_loc3_.getCount() == -1 || §<$c§.§ !=§(param1).isComplex())));
            return _loc2_;
         }
         return null;
      }
      
      public static function §0%L§(param1:uint) : §,&F§
      {
         var _loc2_:§,&F§ = null;
         var _loc3_:§]$X§ = null;
         loop0:
         for each(_loc2_ in rewards)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.§2!O§();
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_.getId() != param1);
            return _loc2_;
         }
         return null;
      }
   }
}

