package §2#W§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§5f§;
   import §+%S§.§?3§;
   import §0%[§.§""n§;
   import §2"L§.§^$y§;
   import §3%J§.BuyBattleTokensDialog;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6"'§.§>"V§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §;!Z§.§5"d§;
   import §;$8§.§6"E§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class § #,§ extends §`&-§
   {
      
      private var chests:Vector.<§8-§> = new Vector.<§8-§>(0);
      
      public function § #,§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§8-§ = null;
         super.§@"o§(param1);
         var _loc2_:TextField = §'%s§("text");
         _loc2_.htmlText = §0$N§.§%! §("PVP_CHESTS_DESCR");
         var _loc3_:int = 0;
         while(_loc3_ < 4)
         {
            _loc4_ = §'$a§("chest" + _loc3_);
            _loc5_ = new §8-§(_loc4_,this.§&!4§);
            this.chests.push(_loc5_);
            _loc3_++;
         }
      }
      
      public function update() : void
      {
         var _loc1_:Array = §8"%§.§2!d§.§-$F§;
         var _loc2_:int = 0;
         while(_loc2_ < this.chests.length)
         {
            this.chests[_loc2_].§!]§(_loc1_[_loc2_]);
            _loc2_++;
         }
      }
      
      private function §&!4§(param1:int, param2:int) : void
      {
         var battlesCount:uint;
         var index:int = param1;
         var type:int = param2;
         if(type == §>"V§.EMPTY)
         {
            return;
         }
         battlesCount = §8"%§.§[%h§.§`t§();
         if(battlesCount < §>"V§.§9!J§(type))
         {
            new BuyBattleTokensDialog(§8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount).show();
            return;
         }
         §8"%§.§2!d§.§5$F§(type,function(param1:Array):void
         {
            var pack:§1%z§ = null;
            var rewards:Array = param1;
            pack = §1%z§.§!!Z§(rewards);
            var pvpChestBox:PvpChestBox = new PvpChestBox(pack,type);
            pvpChestBox.show();
            §""n§.single(pvpChestBox,§[%w§.WINDOW_CLOSE,function onSinglePvpChestBoxClose():void
            {
               chests[index].§!]§(§>"V§.EMPTY);
               §8"%§.§?!W§.§8%-§().§?!I§(pack);
               §5f§.§8#&§(§8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount);
               §8"%§.§@1§.increase([§!$L§.§;#Y§],[1]);
            });
         });
      }
   }
}

