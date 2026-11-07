package §[!`§
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0"L§.§+# §;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanBase;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class ArcticTorch extends §-#8§
   {
      
      private static const §9"Q§:String = "ArcticTorchAm";
      
      public function ArcticTorch(param1:Point)
      {
         super(param1.x,param1.y - 25,§9"Q§,§0$N§.§%! §("ARCTIC_TORCH.DESCR"));
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         var _loc2_:UserProfile = param1.squad.§?"#§();
         var _loc3_:§;#_§ = §<$c§.§ !=§(§+%z§.§0!m§);
         §1"-§.§3#=§(§;#_§(_loc3_).getMenuIcon(),x,y,40);
         _loc2_.getBattleBackpack().§=!U§(_loc3_,1);
         if(Boolean(§8"%§.§?!W§) && Boolean(§8"%§.§?!W§.§4"m§) && Boolean(§8"%§.§?!W§.§4"m§.§!%W§))
         {
            §8"%§.§?!W§.§4"m§.§!%W§.§2"j§(param1,_loc3_.getId(),1);
         }
      }
      
      override protected function §-%+§(param1:§+%]§) : Boolean
      {
         return !param1.squad.isAi();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§7q§,x,y,24);
         super.§[$u§(param1);
      }
   }
}

