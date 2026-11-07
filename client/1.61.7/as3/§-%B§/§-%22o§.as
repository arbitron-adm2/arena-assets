package §-%B§
{
   import § &5§.§0&$§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §<"?§.§7!@§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?%J§.§7"h§;
   import §@"!§.§`<§;
   import §@<§.§+%]§;
   import config.§;"I§;
   import flash.events.EventDispatcher;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.objects.GameObjectProcessor;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §-"o§ extends EventDispatcher
   {
      
      protected static var §0y§:Vector.<§+%]§>;
      
      protected var resource:§@#%§;
      
      protected var currentUnit:§+%]§;
      
      protected var §^i§:Boolean;
      
      protected var §2a§:Boolean;
      
      protected var §^"8§:Boolean;
      
      protected var §5"i§:Boolean = true;
      
      public function §-"o§(param1:Boolean = false)
      {
         super();
         this.§^i§ = param1;
         this.§^"8§ = §8"%§.§%w§.§7#G§();
      }
      
      public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         return null;
      }
      
      public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.§1!n§();
            _loc3_[0].§1%f§();
            for each(_loc4_ in _loc3_)
            {
               _loc4_.aiMissFactor = 1;
               _loc4_.aiShotPower = 5;
               _loc4_.§0!e§ = false;
               this.§?%k§(_loc4_);
            }
         }
      }
      
      protected function §?%k§(param1:§+%]§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§^i§)
         {
            return;
         }
         if(!param1.aiArsenal)
         {
            param1.aiArsenal = new §,%8§(null,uint.MAX_VALUE,true,true,true,true,true,true);
         }
         param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.ANTITOXIN,0.3,10));
         if(this.§<#A§())
         {
            if(§0#2§.§0![§())
            {
               param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2));
               _loc2_ = param1.bonuses.getStatValue(Bonus.SHOCK_DAMAGE);
               _loc3_ = param1.bonuses.getStatValue(Bonus.FIRE_DAMAGE);
               if(_loc2_ > 0 && _loc2_ >= _loc3_)
               {
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.PUPPET_MECH,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.ION_CANNON,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.SHOCKER_UPG_1,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.SHOCKER_UPG_2,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.THUNDER_HAMMER,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.ELECTRIC_HARPOON_UPG_2A,0.1,1));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.ELECTRIC_HARPOON_UPG_2B,0.1,1));
               }
               if(_loc3_ > 0 && _loc3_ >= _loc2_)
               {
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.§"%P§,0.5));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.§ %L§,0.5));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3));
                  param1.aiArsenal.§>$&§(new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.4));
               }
            }
         }
         if(param1.buffs.hasBuff(§`""§.NAME))
         {
            param1.buffs.§6C§(§`""§.NAME);
         }
         if(!param1.buffs.hasBuff(§3#j§.NAME))
         {
            param1.buffs.place(new §3#j§());
         }
         if(!param1.buffs.hasBuff(§@$J§.NAME))
         {
            param1.buffs.place(new §@$J§());
         }
      }
      
      protected function §&;§(param1:§+%]§) : void
      {
         if(!this.§<#A§())
         {
            return;
         }
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.7),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.7),new §>%Q§(§+%z§.§'&<§,0.7),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.7,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.7,2),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.5)];
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.7),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.7),new §>%Q§(§+%z§.§'&<§,0.7),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.7,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.7,2),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.5)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.7),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.7),new §>%Q§(§+%z§.§'&<§,0.7),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.7,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.7,2),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.5)],uint.MAX_VALUE,false);
      }
      
      public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:* = 0;
         this.currentUnit = param2;
         if(this.§5"i§ && !param2.squad.isAi() && this.§<#A§())
         {
            §-#M§.§0"%§(200,true);
         }
         if(this.§<#A§())
         {
            if(param1 == 1)
            {
               if(!§0y§)
               {
                  §0y§ = new Vector.<§+%]§>(0);
               }
            }
            else
            {
               _loc3_ = int(§0y§.length - 1);
               while(_loc3_ > 0)
               {
                  if(§0y§[_loc3_].disposed)
                  {
                     §0y§.splice(_loc3_,1);
                  }
                  _loc3_--;
               }
            }
            this.§3$n§(param2);
         }
      }
      
      private function §3$n§(param1:§+%]§) : void
      {
         var _loc3_:Vector.<§-"o§> = null;
         var _loc4_:§-"o§ = null;
         if(!param1.squad.isAi())
         {
            return;
         }
         if(!param1.isRevived())
         {
            return;
         }
         if(param1.record.getRace().getId() != §;"I§.§"$H§)
         {
            return;
         }
         if(§0y§.indexOf(param1) > -1)
         {
            return;
         }
         var _loc2_:Boolean = true;
         if(this.info().missionIds.indexOf(§+#N§.§]!j§) > -1)
         {
            _loc3_ = §7!@§(this.info().scenario).getScripts();
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_ is §7"h§)
               {
                  if(§7"h§(_loc4_).isMinion(param1))
                  {
                     _loc2_ = false;
                  }
                  break;
               }
            }
         }
         if(_loc2_)
         {
            this.§&;§(param1);
            §0y§.push(param1);
         }
      }
      
      public function §6&§(param1:uint) : void
      {
      }
      
      public function clear() : void
      {
         if(§0y§)
         {
            §0y§.length = 0;
            §0y§ = null;
         }
      }
      
      protected function get §4"m§() : §]$;§
      {
         return §8"%§.§?!W§.§4"m§;
      }
      
      protected function get curScene() : §0&$§
      {
         return Application.scene;
      }
      
      protected function get §@$I§() : GameObjectProcessor
      {
         return Application.scene.§@$I§;
      }
      
      protected function get randomSeed() : §,'§
      {
         return §8"%§.randomSeed;
      }
      
      public function §4$t§() : §@#%§
      {
         return this.resource;
      }
      
      public function §,$j§() : §?!d§
      {
         return §?!d§.§1%3§();
      }
      
      public function info() : §]$d§
      {
         return §8"%§.§?!W§.§^!U§();
      }
      
      protected function §&%2§() : Boolean
      {
         return this.§^i§ && this.info().missionIds[0] == this.info().missionIds[1];
      }
      
      protected function §<#A§() : Boolean
      {
         return this.§^i§ && this.info().§'#t§();
      }
   }
}

