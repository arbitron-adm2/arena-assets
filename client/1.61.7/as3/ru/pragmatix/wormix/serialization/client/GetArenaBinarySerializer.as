package ru.pragmatix.wormix.serialization.client
{
   import § !P§.*;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §"%H§.§1! §;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,#_§.§%!_§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §7$t§.§^%%§;
   import §8$Z§.§9!&§;
   import §<!W§.§=!6§;
   import §<!^§.§]#u§;
   import §<V§.§!&-§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class GetArenaBinarySerializer implements §&"a§
   {
      
      public function GetArenaBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 708;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetArena = GetArena(param1);
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
         return new GetArena();
      }
   }
}

