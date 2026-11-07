package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §0&F§.§0%v§;
   import §3#T§.§5!M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$1§.§;$n§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class DefaultMineWeapon extends §,%r§ implements §-$2§
   {
      
      protected var §+%%§:Class = §;$n§;
      
      public function DefaultMineWeapon(param1:Class = null, param2:uint = 0, param3:Boolean = true)
      {
         if(param1)
         {
            this.§+%%§ = param1;
         }
         super(param2);
         §^&I§.value = false;
         if(param3)
         {
            §7&§(new §&!P§(this.§6#N§,true));
         }
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.§+%%§ = Class(param1["mineClass"]);
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         var _loc2_:String = null;
         if(§9$h§.§!%w§(owner) || (Boolean(getProperty("consumable") || getProperty("seasonal"))) && Boolean(§?!P§.§!%w§(owner)))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc2_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc2_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc2_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc2_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         if(this.§6#N§() && !§8"%§.§?!W§.§4"m§.§1"3§())
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§7#O§);
         this.§6%U§();
         §8"%§.§?!W§.§4"m§.§-"M§();
         §9$h§.update(owner);
         if(Boolean(getProperty("consumable")) || Boolean(getProperty("seasonal")))
         {
            §?!P§.update(owner);
         }
         this.§3t§();
      }
      
      protected function §3t§() : void
      {
         §?!K§();
      }
      
      protected function §6%U§() : §;$n§
      {
         var _loc1_:§;$n§ = new this.§+%%§(owner,owner.x,owner.y,paramSet);
         _loc1_.addEventListener(§0%v§.MINE_SET_UP,this.§%$Z§);
         return _loc1_;
      }
      
      protected function §%$Z§(param1:MineSetUpEvent) : void
      {
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(param1.triggered)
         {
            §=#P§.§6+§();
            return;
         }
         §8"%§.§?!W§.§4"m§.§-"M§(false);
         if(§8"%§.§?!W§.§4"m§.§#"G§())
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §8"%§.§?!W§.§4"m§.§%!J§(true);
            }
            param1.mine.owner.§#&5§();
         }
      }
   }
}

