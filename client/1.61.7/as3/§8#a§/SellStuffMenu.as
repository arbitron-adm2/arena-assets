package §8#a§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§+#h§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §+$=§.*;
   import §+%S§.§2&>§;
   import §+%S§.§[0§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §3#T§.Helicopter;
   import §3%J§.BuyBattleTokensDialog;
   import §4!!§.*;
   import §4f§.§-&§;
   import §5!9§.§6$,§;
   import §6"'§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §9%W§.§!7§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class SellStuffMenu extends §0-§
   {
      
      private var countField:TextField;
      
      private var rewardText:TextField;
      
      private var fuzyIcon:DisplayObject;
      
      public function SellStuffMenu(param1:Array)
      {
         super(§6#A§.§!&6§(§+"'§.§=&7§));
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("SELL_EQUIPS"));
         §>!-§.setText(§0$N§.§%! §("SELL"),§"-§.§+$m§);
         §>!-§.§00§(§`!v§.§=#2§);
         this.countField = §'%s§("count");
         this.rewardText = §'%s§("rewardText");
         this.rewardText.text = §0$N§.§%! §("YOU_WILL_GET");
         this.rewardText.autoSize = TextFieldAutoSize.LEFT;
         this.fuzyIcon = getChildByName("fuzyIcon");
         setData(param1);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §]!I§ = true;
         §=%1§ = §5!r§.§<![§;
         §%%R§ = §`!v§.SHOP;
         §7%c§ = false;
         §,!n§ = false;
      }
      
      override protected function §"#[§(param1:MouseEvent) : void
      {
         super.§"#[§(param1);
         §1&5§().length = 0;
         this.§+%9§();
      }
      
      override protected function §0"f§(param1:MouseEvent) : void
      {
         super.§0"f§(param1);
         §1&5§().length = 0;
         this.§+%9§();
      }
      
      override public function update() : void
      {
         super.update();
         this.§+%9§();
      }
      
      private function §+%9§() : void
      {
         var _loc3_:§=?§ = null;
         var _loc1_:Array = §1&5§();
         var _loc2_:int = 0;
         for each(_loc3_ in _loc1_)
         {
            _loc2_ += §5&4§.§!%x§(_loc3_.§%"]§());
         }
         this.countField.text = _loc2_.toString();
         §>!-§.setDisabled(_loc2_ == 0);
         this.fuzyIcon.x = this.rewardText.x + this.rewardText.width + 5;
         this.countField.x = this.fuzyIcon.x + this.fuzyIcon.width + 5;
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §&$&§(param1 as MovieClip);
      }
      
      override protected function §<#X§() : void
      {
         var _loc3_:DisplayObject = null;
         if(!§4#B§)
         {
            §4#B§ = §&%p§();
         }
         cells = [];
         var _loc1_:int = §4#B§.numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §4#B§.getChildByName("cell" + _loc2_);
            §"%F§(_loc3_,_loc2_);
            _loc2_++;
         }
      }
      
      override protected function §2%_§(param1:Event) : void
      {
         super.§2%_§(param1);
         this.§+%9§();
      }
      
      override protected function §,B§(param1:Event) : void
      {
         super.§,B§(param1);
         this.§+%9§();
      }
      
      override protected function okAction() : void
      {
         var selectedList:Array;
         var ids:Vector.<int>;
         var item:§&!e§ = null;
         §>!-§.setDisabled(true);
         selectedList = §1&5§();
         ids = new Vector.<int>(0);
         for each(item in selectedList)
         {
            ids.push(item.getId());
         }
         §8"%§.§0$1§.§,!E§(ids,function():void
         {
            var _loc1_:Array = §4! §.§?!U§();
            if(_loc1_.length > 0)
            {
               new SellStuffMenu(_loc1_).show();
            }
         });
         super.okAction();
      }
   }
}

