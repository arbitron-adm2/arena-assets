package ru.pragmatix.wormix.serialization.pvp.ex
{
   import §!$d§.§<$c§;
   import §"% §.LevelUpDialog;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-8§.*;
   import §-@§.§8"k§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §6$z§.BonusBuff;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §>%S§.§^!V§;
   import §@!N§.§'+§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import com.greensock.loading.*;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.WidenSearch;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class WidenSearchBinarySerializer implements §&"a§
   {
      
      public function WidenSearchBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return WidenSearch.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:WidenSearch = WidenSearch(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

