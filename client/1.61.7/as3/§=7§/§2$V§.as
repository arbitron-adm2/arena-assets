package §=7§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §,#_§.FrameTimer;
   import §-@§.§3%9§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   
   public class §2$V§ extends §1#g§
   {
      
      private var §=%Z§:Vector.<§`&-§> = new Vector.<§`&-§>(0);
      
      public function §2$V§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:uint = §8"%§.§%$r§.winCount;
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.WIN_LABEL + " " + _loc1_);
         var _loc2_:uint = §8"%§.§%$r§.defeatCount;
         var _loc3_:int = 0;
         var _loc4_:int = int(§3%9§.§5$A§);
         while(_loc3_ < _loc4_)
         {
            this.§=%Z§[_loc3_].getChildByName("active").visible = _loc3_ < _loc2_;
            _loc3_++;
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §&$9§.§>&F§(§'%s§("description"),§"-§.§+$m§,§0$N§.GLADIATOR_CHEST_DESCRIPTION);
         §&$9§.§>&F§(§'%s§("defeatLabel"),§"-§.§+$m§,§0$N§.DEFEAT_LABEL);
         var _loc2_:int = 0;
         var _loc3_:int = int(§3%9§.§5$A§);
         while(_loc2_ < _loc3_)
         {
            this.§=%Z§[this.§=%Z§.length] = new §`&-§(getChildByName("defeat" + (_loc2_ + 1)));
            this.§=%Z§[this.§=%Z§.length - 1].getChildByName("active").visible = false;
            _loc2_++;
         }
      }
   }
}

