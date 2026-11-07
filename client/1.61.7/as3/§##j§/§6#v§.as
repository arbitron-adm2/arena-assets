package §##j§
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §0"L§.§+# §;
   import §3#a§.*;
   import §7!B§.§&"T§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §6#v§ extends §9x§
   {
      
      private var skinId:uint;
      
      public function §6#v§(param1:uint)
      {
         super(1);
         name = "skin";
         this.skinId = param1;
      }
      
      override public function getId() : uint
      {
         return this.skinId;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",id=" + this.skinId + "}";
      }
   }
}

