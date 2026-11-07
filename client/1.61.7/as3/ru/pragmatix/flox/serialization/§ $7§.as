package ru.pragmatix.flox.serialization
{
   import §!L§.§+"'§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §+$=§.§1§;
   import §+$=§.§6#A§;
   import §+$=§.AbstractConfigLoader;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §1#p§.§2=§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §=!p§.§%#'§;
   import §@!N§.§3!3§;
   import §[" §.*;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § $7§ extends AbstractConfigLoader
   {
      
      protected var § &@§:Object = new Object();
      
      protected var §9!+§:Object = new Object();
      
      protected var §9Y§:Object = new Object();
      
      public function § $7§(param1:String, param2:String, param3:Vector.<String>)
      {
         super(param1,param2,param3,§1§.XML);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:§&"a§ = this.§ &@§[param2.getCommandId()];
         if(_loc3_ != null)
         {
            return _loc3_.deserializeCommand(param1,param2);
         }
         throw new ArgumentError("Can\'t find serializer for command: " + param2.getCommandId());
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:§&"a§ = this.§9!+§[getQualifiedClassName(param1)];
         if(_loc3_ != null)
         {
            _loc3_.serializeCommand(param1,param2);
            return;
         }
         throw new ArgumentError("Can\'t find serializer for class: " + getQualifiedClassName(param1));
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _temp_1:* = this.§9Y§.get(getQualifiedClassName(param1));
         var _loc4_:§@#&§ = this.§9Y§.get(getQualifiedClassName(param1));
         if(_loc4_ != null)
         {
            _loc4_.serializeStructure(param1,param2,param3);
            return;
         }
         throw new ArgumentError("Can\'t find serializer for class: " + getQualifiedClassName(param1));
      }
      
      override protected function §>!s§(param1:XML, param2:String) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:§&"a§ = null;
         for each(_loc4_ in param1..command)
         {
            _loc5_ = _loc4_.@serializer.toString();
            _loc6_ = new (getDefinitionByName(_loc5_) as Class)();
            _loc3_ = _loc6_.getCommandId();
            this.§ &@§[_loc3_] = _loc6_;
            this.§9!+§[_loc4_.@forClass.toString()] = this.§ &@§[_loc3_];
            log.§[x§("init serializer [" + _loc5_ + "] for class [" + _loc4_.@forClass.toString() + "] with commandId =" + _loc3_);
         }
         for each(_loc4_ in param1..structure)
         {
            _loc5_ = _loc4_.@serializer.toString();
            this.§9Y§[_loc4_.@forClass.toString()] = new (getDefinitionByName(_loc5_) as Class)();
         }
      }
   }
}

