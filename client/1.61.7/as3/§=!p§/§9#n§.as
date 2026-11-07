package §=!p§
{
   import §!L§.§+"'§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §@!i§.§;#L§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §9#n§
   {
      
      public var code:uint;
      
      public var msg:String;
      
      public function §9#n§(param1:uint, param2:String)
      {
         super();
         this.code = param1;
         this.msg = param2;
      }
      
      public static function §]%x§(param1:ErrorEvent) : §9#n§
      {
         return new §9#n§(0,param1.type + ": " + param1.text);
      }
      
      public function toString() : String
      {
         return "SocialErrorCode{code=" + String(this.code) + ",msg=" + String(this.msg) + "}";
      }
   }
}

