package §"&?§
{
   import § &5§.§@N§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<!^§.§<b§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §@!i§.§8%6§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §-$b§ extends § "F§
   {
      
      public function §-$b§()
      {
         var _loc1_:MovieClip = new MovieClip();
         _loc1_.graphics.beginFill(12961221,0.7);
         _loc1_.graphics.drawCircle(0,0,7 + Math.random() * 4);
         _loc1_.graphics.endFill();
         var _loc2_:int = Application.scene.width;
         super(_loc1_,Math.random() * 2 * _loc2_ - _loc2_ / 2,-10,true,§@N§.§@$8§);
         physParams.§"%<§(§]%G§.§="u§);
         _loc1_.scaleX = _loc1_.scaleY = 0.5;
         setSpeedXY(speedX,12);
      }
   }
}

