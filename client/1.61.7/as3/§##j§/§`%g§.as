package §##j§
{
   import § "%§.*;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   
   public class §`%g§ extends §9x§
   {
      
      private var weaponId:uint;
      
      public function §`%g§(param1:uint, param2:int)
      {
         if(param1 <= 0 && param1 > 1000)
         {
            param1 = 0;
         }
         super(param2);
         name = "weapon";
         this.weaponId = param1;
      }
      
      override public function getId() : uint
      {
         return this.weaponId;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",id=" + this.weaponId + ",count=" + count + "}";
      }
   }
}

