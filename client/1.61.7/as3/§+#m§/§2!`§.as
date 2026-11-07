package §+#m§
{
   import § $q§.§-%f§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §,#c§.ChooseFriendForCoopMenu;
   import §0%[§.§0%§;
   import §2"L§.*;
   import §7"Q§.§0$L§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §2!`§ extends ChooseFriendForCoopMenu
   {
      
      public function §2!`§(param1:Function, param2:Function)
      {
         super(param1,param2);
         this.store = new §?#8§(§4#B§.numChildren);
         refreshBtn.setVisible(false);
      }
      
      override protected function §]%k§(param1:Event) : void
      {
         §,>§();
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc4_:UserProfile = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(param2)
         {
            _loc4_ = UserProfile(param2);
            _loc5_ = _loc4_.§7$F§().length;
            _loc6_ = §<#&§.valueOf(§-"P§.§'$L§).minLevel;
            _loc7_ = _loc5_ >= 2;
            _loc8_ = _loc4_.getLevel() >= _loc6_;
            param1.setQtip("");
            if(_loc8_ && _loc7_)
            {
               §`!c§ = true;
               param1.setDisabled(false);
            }
            else
            {
               §-%f§(param1).removeHint();
               param1.setDisabled(true);
               if(!_loc8_)
               {
                  param1.setQtip(§0%§.format(§0$N§.ABILITY_LEVEL_REQUIREMENT,{"level":_loc6_}));
               }
               else if(!_loc7_)
               {
                  param1.setQtip(§0$N§.BATTLE_REQUEST_CALLEE_TEAM_IS_SMALL + " (" + _loc5_ + ")");
               }
            }
         }
         super.§3u§(param1,param2,param3);
      }
   }
}

