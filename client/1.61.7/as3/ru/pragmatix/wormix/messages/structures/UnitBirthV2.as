package ru.pragmatix.wormix.messages.structures
{
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §<%k§.§`!v§;
   import §@!i§.*;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class UnitBirthV2
   {
      
      public static const SOURCE_INITIAL:int = 1;
      
      public static const SOURCE_BOSS_SCRIPT:int = 2;
      
      public static const SOURCE_ABILITY:int = 3;
      
      public static const ROLE_UNKNOWN:int = 0;
      
      public static const ROLE_BOSS:int = 1;
      
      public static const ROLE_SERVANT:int = 2;
      
      public static const ROLE_CLONE:int = 3;
      
      public var unitId:int;
      
      public var isPlayerTeam:Boolean;
      
      public var hp:int;
      
      public var source:int;
      
      public var role:int;
      
      public var hatId:int;
      
      public var kitId:int;
      
      public function UnitBirthV2(param1:int = 0, param2:Boolean = true, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.unitId = param1;
         this.isPlayerTeam = param2;
         this.hp = param3;
         this.source = param4;
         this.role = param5;
      }
      
      public function toString() : String
      {
         return "{#" + this.unitId + (this.isPlayerTeam ? " P" : " B") + " hp=" + this.hp + " src=" + this.source + (this.role > 0 ? " role=" + this.role : "") + "}";
      }
   }
}

