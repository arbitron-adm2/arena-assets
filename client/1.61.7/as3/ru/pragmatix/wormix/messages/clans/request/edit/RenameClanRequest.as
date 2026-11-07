package ru.pragmatix.wormix.messages.clans.request.edit
{
   import §#k§.*;
   import §1#p§.§"Z§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   
   public class RenameClanRequest
   {
      
      public var name:String;
      
      public var fromTreas:Boolean;
      
      public function RenameClanRequest(param1:String, param2:Boolean)
      {
         super();
         this.name = param1;
         this.fromTreas = param2;
      }
   }
}

