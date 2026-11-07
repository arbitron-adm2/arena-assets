package §4u§
{
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §'"N§.*;
   import §-@§.§5"4§;
   import §0%[§.§0%§;
   import §0&F§.§0$_§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §@!i§.§<!9§;
   import §[!O§.§1#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §#"d§ extends §8#]§
   {
      
      public function §#"d§(param1:DisplayObjectContainer = null)
      {
         super(param1);
      }
      
      override public function initHint(param1:§&!e§) : void
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         super.initHint(param1);
         var _loc2_:§;#_§ = param1 as §;#_§;
         var _loc3_:§#$s§ = §1!S§.§?!4§(_loc2_.getId());
         if(_loc3_)
         {
            §`b§(_loc3_.§]G§() != "",_loc3_.§]G§(),"description");
            if(Application.userProfile.getLevel() < _loc3_.§,X§())
            {
               _loc4_ = {"level":_loc3_.§,X§()};
               if(_loc3_.§,X§() > §<!9§.getMaxLevel())
               {
                  §`b§(false,"-","note");
               }
               else
               {
                  _loc5_ = §0%§.format(§0$N§.REQUIRED_LEVEL_HINT,_loc4_);
                  §`b§(true,_loc5_,"note");
               }
            }
            else
            {
               §`b§(_loc2_.§#6§() != "",_loc2_.§#6§(),"note");
            }
            §`b§(false,"","damage");
         }
         else
         {
            §`b§(_loc2_.§]G§() != "",_loc2_.§]G§(),"description");
            §`b§(_loc2_.§#6§() != "",_loc2_.§#6§(),"note");
            §`b§(_loc2_.§-$O§() != null && _loc2_.§-$O§() != "",§0$N§.DAMAGE + ": " + _loc2_.§-$O§(),"damage");
         }
         §8$Q§();
      }
   }
}

