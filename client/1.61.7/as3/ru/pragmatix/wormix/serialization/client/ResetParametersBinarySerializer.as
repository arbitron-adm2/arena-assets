package ru.pragmatix.wormix.serialization.client
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<$q§.§?!d§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §]$&§.§2&2§;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.ResetParameters;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class ResetParametersBinarySerializer implements §&"a§
   {
      
      public function ResetParametersBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 15;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ResetParameters = ResetParameters(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.moneyType);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ResetParameters = new ResetParameters();
         _loc3_.moneyType = param1.readInt();
         return _loc3_;
      }
   }
}

