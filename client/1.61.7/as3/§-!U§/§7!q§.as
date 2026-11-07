package §-!U§
{
   import § "d§.§,!c§;
   import §%"1§.§=#?§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §7!q§ extends §&%j§
   {
      
      public function §7!q§(param1:DisplayObject)
      {
         super(param1);
      }
      
      public function §5#3§(param1:uint) : void
      {
         var _loc3_:§5" § = null;
         §'%s§("title").text = §0$N§.UNAVAILABLE_PANEL_TITLE;
         §'%s§("description1").text = §0$N§.UNAVAILABLE_PANEL_DESCRIPTION_1;
         var _loc2_:String = "";
         var _loc4_:HeroicMissionStructure = §6J§.getInstance().§,$e§(param1);
         if(!§6%k§.§!k§(_loc4_.bossId1))
         {
            _loc3_ = §3$f§.§<$K§(_loc4_.bossId1);
            _loc2_ += _loc3_.§7%z§();
         }
         if(_loc4_.bossId1 != _loc4_.bossId2 && !§6%k§.§!k§(_loc4_.bossId2))
         {
            _loc3_ = §3$f§.§<$K§(_loc4_.bossId2);
            _loc2_ += (_loc2_ != "" ? ", " : "") + _loc3_.§7%z§();
         }
         §'%s§("description2").htmlText = §0$N§.UNAVAILABLE_PANEL_DESCRIPTION_2 + " " + _loc2_;
      }
   }
}

