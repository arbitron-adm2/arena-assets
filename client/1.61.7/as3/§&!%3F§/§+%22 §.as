package §&!?§
{
   import §!L§.§7%0§;
   import §!L§.§`#p§;
   import §+%S§.§?3§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §+" § extends §5"^§
   {
      
      private static const §6$w§:int = 10;
      
      public function §+" §()
      {
         super();
      }
      
      override public function check(param1:§+%]§) : Boolean
      {
         return Boolean(super.check(param1)) && !param1.buffs.hasBuff(§?3§.NAME) && param1.attributes.hp.§4$M§() > §-q§.§8$G§(§6$w§,param1.hp);
      }
   }
}

