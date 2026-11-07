package §3#T§
{
   import §+$=§.§6#A§;
   import §7!B§.§6#I§;
   import §9%W§.§!7§;
   import §<%E§.§6$=§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.messages.clans.request.ExpelFromClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.ExpelFromClanResponse;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §]!6§ extends §6#I§
   {
      
      private static const § %W§:String = "AmGun";
      
      private static const §5`§:Number = 0.5;
      
      public function §]!6§(param1:int, param2:int, param3:String = "AmGun", param4:Number = 0.5)
      {
         super(null,param1,param2,false);
         §-"e§ = false;
         var _loc5_:MovieClip = §6#A§.§!&6§(param3);
         _loc5_.scaleX = _loc5_.scaleY = param4;
         this.x = param1;
         this.y = param2;
         this.clip = _loc5_;
         §`4§ = §5$=§;
         Application.scene.§@$I§.§1$+§(this,true);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physParams.addForce(§]%G§.§5$r§);
         physicModel = new §;$S§(physParams);
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         disposed = true;
      }
   }
}

