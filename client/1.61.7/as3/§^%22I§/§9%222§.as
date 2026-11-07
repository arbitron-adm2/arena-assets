package §^"I§
{
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §<$q§.§?!d§;
   import §<%c§.*;
   import §?$K§.§]%1§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class §9"2§ extends §>!^§
   {
      
      private static const §5#n§:Boolean = true;
      
      private var §>&A§:uint;
      
      private var §-!M§:uint = 0;
      
      public function §9"2§(param1:uint, param2:Boolean = false)
      {
         super(param1,param2);
      }
      
      private static function §5$f§() : void
      {
         var _loc1_:§]$;§ = null;
         var _loc2_:§"Z§ = null;
         var _loc5_:Team = null;
         var _loc6_:§"Z§ = null;
         var _loc7_:§0%a§ = null;
         var _loc8_:String = null;
         _loc1_ = §8"%§.§?!W§.§4"m§;
         _loc2_ = _loc1_.§?%j§(Application.userProfile);
         var _loc3_:§0%a§ = §5%8§.§75§(_loc2_.getNumber());
         §8"%§.§?!W§.§!#S§(§0$N§.SYSPVP_BATTLE_ID.replace("%1",§8"%§.§?!W§.§^!U§().battleId) + ". " + §0$N§.SYSPVP_MAP_ID.replace("%1",§8"%§.§?!W§.§^!U§().mapId),0,null,false);
         §8"%§.§?!W§.§!#S§(§0$N§.SYSPVP_YOU_PLAY_FOR.replace("%1",§2"e§.§6#R§(_loc3_.§;!7§,_loc3_.textColor)),0,null,false);
         var _loc4_:Vector.<Team> = _loc1_.§6H§();
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.id == _loc2_.getTeamId())
            {
               if(_loc5_.squads.length > 1)
               {
                  for each(_loc6_ in _loc5_.squads)
                  {
                     if(_loc6_.getNumber() != _loc2_.getNumber())
                     {
                        _loc7_ = §5%8§.§75§(_loc6_.getNumber());
                        _loc8_ = §2"e§.§6#R§(_loc7_.§;!7§,_loc7_.textColor);
                        §8"%§.§?!W§.§!#S§(§0$N§.SYSPVP_ALLY_PLAYS_FOR.replace("%1",_loc8_),0,null,false);
                     }
                  }
               }
               break;
            }
         }
      }
      
      private static function §9!3§(param1:uint) : void
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:int = 0;
         var _loc4_:uint = 0;
         _loc2_ = §8"%§.§?!W§.§4"m§.activeSquad;
         _loc3_ = §8"%§.§?!W§.§8T§(_loc2_.§&!G§());
         _loc4_ = §5%8§.§75§(_loc3_).textColor;
         var _loc5_:String = §2"e§.§6#R§(_loc2_.§?"#§().getCharName(),_loc4_);
         §8"%§.§?!W§.§!#S§(§0$N§.SYSPVP_NEW_TURN.replace("%1",param1).replace("%2",_loc5_),0,null,false);
      }
      
      private static function §3#V§(param1:int = 1) : void
      {
         var _loc2_:§]$;§ = null;
         var _loc6_:§"Z§ = null;
         _loc2_ = §8"%§.§?!W§.§4"m§;
         var _loc3_:§"Z§ = _loc2_.§?%j§(Application.userProfile);
         var _loc4_:Array = _loc2_.§+!0§();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc5_ >= param1)
            {
               _loc6_ = §"Z§(_loc4_[_loc5_]);
               if(_loc6_.getNumber() == _loc3_.getNumber())
               {
                  §8"%§.§?!W§.§!#S§(§0$N§.SCRIPT_WEAPON_DELAY_REDUCED);
               }
               §<&D§(_loc6_);
            }
            _loc5_++;
         }
      }
      
      private static function §<&D§(param1:§"Z§) : void
      {
         var _loc3_:BackpackItem = null;
         var _loc2_:Vector.<BackpackItem> = param1.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc3_ in _loc2_)
         {
            if(Boolean(_loc3_) && Boolean(_loc3_.§1!9§) && !_loc3_.isEmpty())
            {
               _loc3_.§^"B§();
            }
         }
      }
      
      override protected function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            §5$f§();
            this.§-!M§ = §8"%§.§?!W§.§4"m§.§=$S§().§-!M§;
            if(this.§-!M§ > 0)
            {
               this.§]!Z§();
            }
            if(§5#n§)
            {
               §3#V§();
            }
         }
         if(this.§-!M§ > 0 && param1 == this.§-!M§ + 1)
         {
            this.§&Y§();
         }
      }
      
      public function §;#6§() : uint
      {
         return 0;
      }
      
      public function §1%C§(param1:§?!d§) : void
      {
      }
      
      private function §]!Z§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            _loc2_.buffs.place(new §]%1§());
         }
         this.§>&A§ = Application.scene.§7#o§.§1"§.§<#-§(§2%o§.§[%n§,§0$N§.SCRIPT_WATER_PROTECTION_INFO);
         §8"%§.§?!W§.§!#S§(§0$N§.SCRIPT_WATER_PROTECTION_INFO);
      }
      
      private function §&Y§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            _loc2_.buffs.§6C§(§]%1§.NAME);
         }
         Application.scene.§7#o§.§1"§.§]& §(this.§>&A§);
         §8"%§.§?!W§.§!#S§(§0$N§.SCRIPT_WATER_PROTECTION_OFF);
      }
   }
}

