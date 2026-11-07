package §+#U§
{
   import § !8§.§9%+§;
   import §%Q§.§;$,§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&&6§.*;
   import §+%S§.§2&>§;
   import §-%B§.*;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §7$1§.§;$n§;
   import §9%W§.§&!P§;
   import §?#g§.*;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.errors.IllegalOperationError;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'#w§ implements §;$,§
   {
      
      private static const §6%c§:Array = [§,"R§.§5!d§,§2&>§.NAME];
      
      public function §'#w§()
      {
         super();
      }
      
      public function check(param1:§+%]§, param2:§,%r§) : Boolean
      {
         var _loc5_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = param1.squad.§1!n§();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(!param1.isRevived() && !_loc5_.buffs.§%%b§(§6%c§))
            {
               _loc4_++;
            }
         }
         return _loc4_ > 0;
      }
   }
}

