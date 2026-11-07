package ru.pragmatix.wormix.controller
{
   import §!$d§.§<$c§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §0%[§.§0%§;
   import §7$t§.§&!e§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class §5"a§
   {
      
      public function §5"a§()
      {
         super();
      }
      
      public static function §!%a§(param1:ChatMessage) : String
      {
         var _loc3_:int = 0;
         var _loc4_:§&!e§ = null;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc2_:String = "";
         switch(param1.action)
         {
            case ChatMessage.CRAFT_LEGENDARY:
               _loc3_ = int(param1.params);
               _loc4_ = §<$c§.§8&E§(_loc3_,Race.§+#T§.§]!D§());
               _loc5_ = §<$&§.§1#a§(param1.profileName,§@C§.§+#d§);
               if(Boolean(_loc4_) && §#&>§.§^7§(_loc4_.getId()))
               {
                  _loc7_ = _loc4_.§7%z§();
                  _loc2_ = §0%§.format(§0$N§.MEMBER_CRAFT_LEGENDARY_MESSAGE,{
                     "name":_loc5_ + §2"e§.§#"I§(" (id " + param1.profileId + ")","#9A9A9A"),
                     "item":_loc7_
                  });
               }
               break;
            case ChatMessage.ADMIN:
            case ChatMessage.ADMIN_PINNED:
               _loc6_ = ChatMessage.ADMIN_PINNED == param1.action;
               if(param1.message.length > 0)
               {
                  return "<i>" + §2"e§.§#"I§(§0$N§.ADMIN_CHAT_MESSAGE,"#6A9A6A") + "</i>" + "<br>" + " <b>" + §2"e§.§#"I§(param1.message,"#AEFFAE") + "</b>";
               }
         }
         if(_loc2_.length > 0)
         {
            _loc2_ = "<b>" + §2"e§.§#"I§(_loc2_,"#64AEFF") + "</b>";
         }
         return _loc2_;
      }
   }
}

