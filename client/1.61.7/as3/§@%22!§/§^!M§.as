package §@"!§
{
   import §!$d§.§<$c§;
   import §"% §.LevelUpDialog;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §1#p§.Team;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §=&!§.§<$Z§;
   import §?$7§.§6J§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   
   public class §^!M§ implements §7$x§
   {
      
      public static const §7F§:§7$x§ = new §^!M§();
      
      public function §^!M§()
      {
         super();
      }
      
      public function §@!'§(param1:Vector.<Team>) : §<$Z§
      {
         if(param1.length <= 1)
         {
            return §<$Z§.UNDEFINED;
         }
         return null;
      }
   }
}

