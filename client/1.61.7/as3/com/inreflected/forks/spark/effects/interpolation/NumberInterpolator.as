package com.inreflected.forks.spark.effects.interpolation
{
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"%H§.§`"w§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.§3%9§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §2#s§.§7"N§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$K§.§!"t§;
   import §?$K§.§,$[§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class NumberInterpolator
   {
      
      private static var theInstance:NumberInterpolator;
      
      public function NumberInterpolator()
      {
         super();
      }
      
      public static function getInstance() : NumberInterpolator
      {
         if(!theInstance)
         {
            theInstance = new NumberInterpolator();
         }
         return theInstance;
      }
      
      public function interpolate(param1:Number, param2:Number, param3:Number) : Number
      {
         if(param1 == 0)
         {
            return param2;
         }
         if(param1 == 1)
         {
            return param3;
         }
         if(param2 != param2 || param3 != param3)
         {
            throw new Error("NumberInterpolator cannotCalculateValue with values: [" + param2 + ", " + param3 + "]");
         }
         return param2 + param1 * (param3 - param2);
      }
      
      public function increment(param1:Number, param2:Number) : Number
      {
         return param1 + param2;
      }
      
      public function decrement(param1:Number, param2:Number) : Number
      {
         return param1 - param2;
      }
   }
}

