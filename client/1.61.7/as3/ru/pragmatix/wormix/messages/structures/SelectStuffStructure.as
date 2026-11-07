package ru.pragmatix.wormix.messages.structures
{
   import §%L§.§%%w§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §2!-§.HpChangeEvent;
   import §9%W§.§!7§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.serialization.server.*;
   
   public class SelectStuffStructure
   {
      
      public var profileId:int;
      
      public var hatId:int;
      
      public var artifactId:int;
      
      public function SelectStuffStructure(param1:int, param2:int, param3:int)
      {
         super();
         this.profileId = param1;
         this.hatId = param2;
         this.artifactId = param3;
      }
      
      public function toString() : String
      {
         return this.profileId + " " + this.hatId + " " + this.artifactId;
      }
   }
}

