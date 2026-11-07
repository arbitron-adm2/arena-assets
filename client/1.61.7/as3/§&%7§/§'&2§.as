package §&%7§
{
   import § #9§.§3L§;
   import §-&5§.*;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@$§.§'%`§;
   import §@$§.§+%>§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §'&2§ extends §`&-§
   {
      
      private static const §'!W§:uint = 3;
      
      public function §'&2§(param1:DisplayObject, param2:Vector.<UserProfile>, param3:§<$Z§, param4:Boolean = false)
      {
         var _loc9_:MovieClip = null;
         var _loc10_:§3L§ = null;
         super(param1);
         var _loc5_:TextField = §'%s§("winTitle");
         var _loc6_:TextField = §'%s§("loseTitle");
         _loc5_.visible = !param3.equals(§<$Z§.§7!i§) && param3.equals(§<$Z§.§+%I§);
         _loc6_.visible = !param3.equals(§<$Z§.§7!i§) && param3.equals(§<$Z§.§!M§);
         if(_loc5_.visible)
         {
            §&$9§.§>&F§(_loc5_,§"-§.§+$m§,§0$N§.§<N§("WINNERS"));
         }
         if(_loc6_.visible)
         {
            §&$9§.§>&F§(_loc6_,§"-§.§+$m§,§0$N§.§<N§("LOSERS"));
         }
         var _loc7_:uint = param2.length;
         var _loc8_:int = 0;
         while(_loc8_ < §'!W§)
         {
            _loc9_ = MovieClip(getChildByName("team" + _loc8_));
            if(_loc7_ > _loc8_ && Boolean(param2[_loc8_]))
            {
               _loc10_ = new §3L§(_loc9_ as MovieClip,true);
               _loc9_.getChildByName("winnerBorder").visible = param3.equals(§<$Z§.§7!i§) || param3.equals(§<$Z§.§+%I§);
               _loc9_.getChildByName("loserBorder").visible = !param3.equals(§<$Z§.§7!i§) && param3.equals(§<$Z§.§!M§);
               if(param4)
               {
                  _loc10_.§4!H§();
               }
               _loc10_.§3%,§(param2[_loc8_]);
               if(!Application.userProfile.equals(param2[_loc8_]) && !param4)
               {
                  this.§?%_§(_loc10_.getContainer(),param2[_loc8_]);
               }
            }
            else
            {
               _loc9_.visible = false;
            }
            _loc8_++;
         }
      }
      
      private function §?%_§(param1:DisplayObject, param2:UserProfile) : void
      {
         var menu:§+%>§ = null;
         var container:DisplayObject = param1;
         var profile:UserProfile = param2;
         menu = new §'%`§(profile);
         container.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            menu.§<$8§(param1.stageX,param1.stageY);
         });
      }
   }
}

