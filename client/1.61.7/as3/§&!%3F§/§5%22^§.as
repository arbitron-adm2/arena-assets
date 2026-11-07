package §&!?§
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%Q§.§;$W§;
   import §+$=§.*;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §<%k§.§`!v§;
   import §@!N§.§'+§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5"^§ implements §;$W§
   {
      
      public function §5"^§()
      {
         super();
      }
      
      public function check(param1:§+%]§) : Boolean
      {
         var _loc3_:§2$v§ = null;
         if(param1.disposed)
         {
            return false;
         }
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§2$v§]);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.owner.squad.getTeamId() != param1.squad.getTeamId())
            {
               return false;
            }
         }
         return true;
      }
   }
}

