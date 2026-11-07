package §&#h§
{
   import §"!C§.§2v§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §3#T§.§5!M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   
   public class §5f§
   {
      
      private static var §;$#§:Function;
      
      private var §[%V§:Array = [];
      
      private var §-%j§:int;
      
      private var §!!7§:Object;
      
      private var §];§:Object;
      
      private var §6%<§:Function;
      
      public function §5f§()
      {
         super();
         §%%w§.§##$§(GetQuestProgressResult,this.§ %3§);
         §%%w§.§##$§(GetQuestRewardResponse,this.§<&;§);
         Application.instance.addEventListener(Event.INIT,onInit);
      }
      
      private static function onInit(param1:Event) : void
      {
         Application.instance.removeEventListener(Event.INIT,onInit);
         §9!8§();
      }
      
      public static function §9!8§(param1:Function = null) : void
      {
         §;$#§ = param1;
         §%%w§.§,U§(new GetArena());
         §%%w§.§,U§(new GetQuestProgress());
      }
      
      public static function §8#&§(param1:Function = null) : void
      {
         §;$#§ = param1;
         §%%w§.§,U§(new GetQuestProgress());
      }
      
      private function § %3§(param1:§9$v§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:QuestProgressStructure = null;
         var _loc5_:String = null;
         var _loc2_:GetQuestProgressResult = GetQuestProgressResult(param1.message);
         for each(_loc4_ in _loc2_.questStructures)
         {
            switch(_loc4_.questId)
            {
               case §2v§.§4$6§:
                  _loc5_ = _loc4_.progress.slice(1,_loc4_.progress.length - 1);
                  this.§[%V§ = _loc5_ ? _loc5_.split(", ") : [];
                  break;
               case §2v§.ROPE_RACE:
                  §8"%§.§?$5§.§ %3§(_loc4_);
                  break;
               case §2v§.§;"H§:
                  _loc3_ = JSON.parse(_loc4_.progress);
                  this.§-%j§ = int(_loc3_.buySkinForReagent);
                  this.§!!7§ = _loc3_.unluckyCraftCounts;
                  break;
               case §2v§.§"!1§:
                  this.§];§ = JSON.parse(_loc4_.progress);
                  break;
               case §2v§.DAILY_TASKS:
                  §8"%§.§8!E§.progressParse(_loc4_.progress);
                  Application.§5!>§.§1$i§.mainInterface.update();
            }
         }
         if(§;$#§ != null)
         {
            §;$#§();
            §;$#§ = null;
         }
         else if(§[&G§.§8"&§.isShown())
         {
            §[&G§.§8"&§.hide();
         }
      }
      
      public function §5$F§(param1:int, param2:Function) : void
      {
         this.§6%<§ = param2;
         §[&G§.§8"&§.show();
         §%%w§.§,U§(new GetQuestReward(§2v§.§4$6§,param1));
      }
      
      public function §#!l§(param1:int, param2:Function) : void
      {
         this.§6%<§ = param2;
         §[&G§.§8"&§.show();
         §%%w§.§,U§(new GetQuestReward(§2v§.DAILY_TASKS,param1));
      }
      
      private function §<&;§(param1:§9$v§) : void
      {
         var _loc3_:String = null;
         §[&G§.§8"&§.hide();
         var _loc2_:GetQuestRewardResponse = GetQuestRewardResponse(param1.message);
         if(_loc2_.questId == §2v§.DAILY_TASKS && _loc2_.rewardId < 0)
         {
            _loc3_ = "DTrw=" + _loc2_.rewardId;
            if(Application.instance.§#&7§() && !Application.instance.§;"7§())
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,_loc3_,§,#W§.§6!m§,§8#&§);
            }
            else
            {
               §8#&§();
            }
            return;
         }
         if(_loc2_.resultEnum != ShopResult.SUCCESS)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ERROR,§0$N§.QUEST_REWARD_ERROR,§,#W§.§6!m§);
            return;
         }
         if(_loc2_.questId == §2v§.§4$6§)
         {
            this.§6%<§(_loc2_.reward);
            this.§6%<§ = null;
         }
         else if(_loc2_.questId == §2v§.ROPE_RACE)
         {
            §8"%§.§?$5§.§<&;§(param1);
         }
         else if(_loc2_.questId == §2v§.DAILY_TASKS)
         {
            if(this.§6%<§ != null)
            {
               this.§6%<§(_loc2_.reward);
               this.§6%<§ = null;
            }
         }
         if(_loc2_.questId != §2v§.DAILY_TASKS)
         {
            §8#&§();
         }
      }
      
      public function get §-$F§() : Array
      {
         return this.§[%V§;
      }
      
      public function get §=!X§() : int
      {
         return this.§-%j§;
      }
      
      public function get §9#M§() : Object
      {
         return this.§!!7§;
      }
      
      public function get §>%6§() : Object
      {
         return this.§];§;
      }
   }
}

