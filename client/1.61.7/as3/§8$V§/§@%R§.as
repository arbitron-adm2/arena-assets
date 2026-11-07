package §8$V§
{
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §0%[§.§^"5§;
   import §1#p§.§+E§;
   import §4'§.§^"p§;
   import §7$t§.§&!e§;
   import §?$L§.§0"-§;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   
   public class §@%R§
   {
      
      private var armor:int;
      
      private var attack:int;
      
      public function §@%R§()
      {
         super();
      }
      
      private function §""o§(param1:§9$v§) : void
      {
         var _loc2_:String = null;
         switch(DistributePointsResult(param1.message).result)
         {
            case DistributePointsResult.SUCCESS:
               Application.userProfile.stats.§'$Q§.value += this.attack;
               Application.userProfile.stats.§+#+§.value += this.armor;
               Application.§5!>§.§8$w§();
               break;
            case DistributePointsResult.NOT_ENOUGH_POINTS:
               _loc2_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            default:
               _loc2_ = §0$N§.ERROR_SAVING;
         }
         §[&G§.§3$5§.hide();
         if(_loc2_)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,_loc2_);
         }
      }
      
      public function §;!D§(param1:uint, param2:uint) : void
      {
         this.armor = param2;
         this.attack = param1;
         §[&G§.§3$5§.show();
         §^"5§.single(§%%w§.§7F§,DistributePointsResult,this.§""o§);
         §%%w§.§,U§(new DistributePoints(param2,param1));
      }
   }
}

