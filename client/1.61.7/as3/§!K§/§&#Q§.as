package §!K§
{
   import § #9§.§"$t§;
   import § m§.§9!^§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §6%2§.§'"Y§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §=7§.*;
   import §@<§.§+%]§;
   import §]$v§.§0"[§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.net.*;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&#Q§ extends Event
   {
      
      public static const NAME:String = "BAG_BUTTON_TOGGLE";
      
      public var enabled:Boolean;
      
      public function §&#Q§(param1:Boolean, param2:String = "BAG_BUTTON_TOGGLE", param3:Boolean = false, param4:Boolean = true)
      {
         super(param2,param3,param4);
         this.enabled = param1;
      }
      
      override public function clone() : Event
      {
         return new §&#Q§(this.enabled,type,bubbles,cancelable);
      }
   }
}

