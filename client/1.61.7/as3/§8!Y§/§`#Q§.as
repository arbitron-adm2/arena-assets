package §8!Y§
{
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&&6§.§7$§;
   import §&&6§.§8"O§;
   import §+"m§.*;
   import §+$=§.§6#A§;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §2"L§.§,'§;
   import §4$b§.§2m§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §=1§.*;
   import §@!N§.§""L§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.*;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   
   public class §`#Q§
   {
      
      private var §3%A§:int;
      
      private var §6#y§:int;
      
      private var §%#i§:int;
      
      public function §`#Q§(param1:int, param2:uint, param3:uint = 0)
      {
         super();
         this.§3%A§ = param1;
         this.§6#y§ = param2;
         this.§%#i§ = param3;
      }
      
      public function get itemId() : int
      {
         return this.§3%A§;
      }
      
      public function get §;&#§() : int
      {
         return this.§6#y§;
      }
      
      public function get §[%v§() : int
      {
         return this.§%#i§;
      }
      
      public function toString() : String
      {
         return "TopAwardConfig{" + " itemId=" + this.§3%A§ + " startPos=" + this.§6#y§ + " endPos=" + this.§%#i§ + " }";
      }
   }
}

