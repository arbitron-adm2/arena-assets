package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.*;
   import §"!C§.§3#n§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §&#W§.§4#T§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.SetBackpackConf;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class SetBackpackConfBinarySerializer implements §&"a§
   {
      
      public function SetBackpackConfBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 129;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc8_:ByteArray = null;
         var _loc3_:SetBackpackConf = SetBackpackConf(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = _loc3_.configs.length;
         _loc5_.writeShort(_loc6_);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc8_ = new ByteArray();
            §<!h§.§@%$§(BackpackConfStructure).serializeStructure(_loc3_.configs[_loc7_],_loc8_,null);
            _loc5_.writeShort(_loc8_.length);
            _loc5_.writeBytes(_loc8_);
            _loc7_++;
         }
         _loc5_.writeByte(_loc3_.activeConfig);
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

