package §9m§
{
   import § !P§.*;
   import § &5§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §4#`§.BattleInterface;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6$z§.BonusBuff;
   import §=#g§.§&%5§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §?$K§.§>K§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §^#M§ extends BonusBuff
   {
      
      private var §8,§:Boolean = §8"%§.§?!W§.§^!U§().§6"3§();
      
      public function §^#M§()
      {
         super();
      }
      
      override public function add(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         var _loc2_:§>K§ = owner.buffs.getBuff(§>K§.NAME) as §>K§;
         if(!_loc2_ && param1 != -1)
         {
            _loc2_ = new §>K§();
            owner.buffs.place(_loc2_);
         }
         var _loc3_:int = param1;
         if(count.value == 0)
         {
            _loc3_ -= _loc2_ ? _loc2_.used : 0;
         }
         super.add(_loc3_);
         if(Boolean(buff) && buff.§8#z§() <= 0)
         {
            this.deactivate(0);
         }
      }
      
      override protected function activate(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         buff = new §=z§(§=z§.NAME,param1 + 1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         super.deactivate(param1);
      }
   }
}

