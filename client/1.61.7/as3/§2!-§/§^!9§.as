package §2!-§
{
   import §!$D§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.Cookie;
   import §1#p§.§2=§;
   import §3"@§.§##L§;
   import §7$t§.§2"y§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.display.StageQuality;
   import flash.events.Event;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §^!9§ extends Event
   {
      
      public static const NAME:String = "PICK_UP";
      
      public var picker:§+%]§;
      
      public function §^!9§(param1:§+%]§, param2:String = "PICK_UP", param3:Boolean = false, param4:Boolean = false)
      {
         super(param2,param3,param4);
         this.picker = param1;
      }
      
      override public function clone() : Event
      {
         return new §^!9§(this.picker,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("SelectObjectEvent","type","bubbles","cancelable","eventPhase","raisedWorm");
      }
   }
}

