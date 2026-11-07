package §1&-§
{
   import §##y§.BeforeHitEvent;
   import §'!Z§.§1"-§;
   import §+%S§.§%!%§;
   import §-&5§.*;
   import §0"p§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2"L§.§,'§;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §65§.§5#A§;
   import §65§.§`"C§;
   import §7!B§.§6#I§;
   import §8#a§.ShopMenu;
   import §;&2§.§!#W§;
   import §<%E§.§6$=§;
   import §=$#§.§`%u§;
   import §>!_§.§@"N§;
   import §?#g§.§-!k§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.Font;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§&m§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.social.Social;
   
   public class §-#B§ extends §5#A§
   {
      
      public static const NAME:String = "REPELL";
      
      private static const PI_ONE_180:Number = Math.PI / 180;
      
      public function §-#B§(param1:int)
      {
         super(NAME,-1,param1);
      }
      
      override protected function §5#F§() : void
      {
         unit.addEventListener(§0%v§.§`"S§,this.beforeHit);
      }
      
      override protected function §0&"§() : void
      {
         unit.removeEventListener(§0%v§.§`"S§,this.beforeHit);
      }
      
      protected function §+"L§() : Boolean
      {
         return !§5"O§.isSleep(unit);
      }
      
      private function beforeHit(param1:BeforeHitEvent) : void
      {
         if(!this.§+"L§())
         {
            return;
         }
         var _loc2_:§6#I§ = param1.§^w§ as §6#I§;
         var _loc3_:§,'§ = §8"%§.randomSeed;
         if(Boolean(_loc2_) && Boolean(_loc2_.§4M§) && _loc3_.§,!q§(0,100) <= value.value)
         {
            §1"-§.§8"l§(unit,§1"-§.§+@§);
            _loc2_.§^"F§(_loc2_.angle + Math.PI + PI_ONE_180 * _loc3_.§,!q§(-10,10),_loc2_.speed);
            _loc2_.x += _loc2_.speedX;
            _loc2_.y += _loc2_.speedY;
            param1.cancelCollision = true;
            _loc2_.repell();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §`%u§.§5$+§(Bonus.REPELL,unit);
            }
         }
      }
   }
}

