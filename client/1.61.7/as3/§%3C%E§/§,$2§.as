package §<%E§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§2$#§;
   import §+%S§.§@#s§;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §[$<§.§>"9§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §,$2§
   {
      
      public var success:Boolean;
      
      public var errorCode:§9#n§;
      
      public var §""h§:String;
      
      public var §3%h§:String;
      
      public function §,$2§(param1:String = null, param2:String = null, param3:Boolean = false)
      {
         super();
         this.§""h§ = param1;
         this.success = param3;
         this.§3%h§ = param2;
      }
      
      public function toString() : String
      {
         return "SocialResponse{apiMethod=" + this.§""h§ + ",success=" + String(this.success) + ",errorCode=" + String(this.errorCode) + "}";
      }
   }
}

