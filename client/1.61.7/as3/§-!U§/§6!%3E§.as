package §-!U§
{
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §-@§.§5h§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §4!!§.§%$$§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   
   public class §6!>§ extends §>$>§
   {
      
      private var structure:HeroicMissionStructure;
      
      public function §6!>§(param1:DisplayObject)
      {
         super(param1);
      }
      
      override protected function §4$m§() : void
      {
         §5h§.§2!5§(this.structure,§8"%§.§%w§.§["x§);
      }
      
      public function §5#3§(param1:uint) : void
      {
         this.structure = §6J§.getInstance().§,$e§(param1);
         var _loc2_:§5" § = §3$f§.§<$K§(this.structure.bossId1);
         var _loc3_:§5" § = §3$f§.§<$K§(this.structure.bossId2);
         §'%s§("bossName").text = _loc3_.§7%z§() + " & " + _loc2_.§7%z§();
         §'%s§("description").text = §0$N§.AVAILABLE_PANEL_DESCRIPTION;
         var _loc4_:§1%z§ = §8"e§.§["V§(param1).§&%s§();
         §8!g§(_loc4_);
      }
   }
}

