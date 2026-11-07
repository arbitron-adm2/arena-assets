package ru.pragmatix.wormix.messages.client
{
   import §0&F§.§0$_§;
   import §1#p§.§"Z§;
   import §7!B§.§&"T§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.objects.mutators.*;
   
   public class ToggleTeamMember
   {
      
      public var teamMemberId:int;
      
      public var active:Boolean;
      
      public function ToggleTeamMember(param1:int, param2:Boolean)
      {
         super();
         this.teamMemberId = param1;
         this.active = param2;
      }
   }
}

