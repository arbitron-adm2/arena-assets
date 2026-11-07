package ru.pragmatix.wormix.messages.server
{
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"1§.§@%;§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §0"L§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#s§.§7"N§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §=!p§.§7#E§;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import com.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class ColiseumError
   {
      
      public static const NONE:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const IS_CLOSED:int = 2;
      
      public static const TEAM_IS_FULL:int = 3;
      
      public static const INVALID_TEAM_MEMBER_INDEX:int = 4;
      
      public static const ALREADY_OPEN:int = 5;
      
      public static const NO_ENOUGH_MONEY:int = 6;
      
      public static const HAS_NO_TICKET:int = 7;
      
      public var code:int;
      
      public function ColiseumError()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ColiseumError{code=" + String(this.code) + "}";
      }
   }
}

