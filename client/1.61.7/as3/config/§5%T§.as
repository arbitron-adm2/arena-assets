package config
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §?"j§.§]!<§;
   import §?"j§.§`%+§;
   import §?#g§.§"&>§;
   import §@!N§.§""L§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §5%T§
   {
      
      public static const §`%o§:int = 21;
      
      public static const §["§:int = 22;
      
      public static const §'%j§:int = 23;
      
      public static const §`$K§:int = 51;
      
      public static const §3#Y§:int = 52;
      
      public static const §8%y§:int = 53;
      
      public static const §>%D§:int = 41;
      
      public static const §1#$§:int = 42;
      
      public static const §?"Y§:int = 43;
      
      public static const §=#b§:int = 31;
      
      public static const §4#=§:int = 32;
      
      public static const §?%@§:int = 33;
      
      public static const §<"0§:int = 61;
      
      public static const §5&&§:int = 62;
      
      public static const §?$P§:int = 63;
      
      public static const §6!$§:int = 71;
      
      public static const §!$H§:int = 72;
      
      public static const §6I§:int = 73;
      
      public static const §-%Z§:int = 81;
      
      public static const §?"E§:int = 82;
      
      public static const §>"m§:int = 83;
      
      public static const §,!6§:int = 91;
      
      public static const §2#l§:int = 92;
      
      public static const §!$ §:int = 93;
      
      public static const §]"?§:int = 1;
      
      public static const §<%M§:int = 2;
      
      public static const §"!x§:int = 3;
      
      public static const §##Y§:int = 101;
      
      public static const §]"2§:int = 102;
      
      public static const §-f§:int = 103;
      
      private static const list:Vector.<int> = new Vector.<int>(0);
      
      public function §5%T§()
      {
         super();
      }
      
      public static function §#&$§() : Vector.<int>
      {
         var _loc1_:Object = null;
         var _loc2_:§]!<§ = null;
         var _loc3_:§"&>§ = null;
         if(!list.length)
         {
            _loc1_ = §`%+§.§1$4§();
            for each(_loc2_ in _loc1_)
            {
               if(_loc2_.modify.length > 0)
               {
                  for each(_loc3_ in _loc2_.modify)
                  {
                     list.push(_loc3_.getId());
                  }
               }
            }
         }
         return list;
      }
   }
}

