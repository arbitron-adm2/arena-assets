package §4#2§
{
   import § &5§.§=#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!§.§[k§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §4!!§.§!%n§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6$z§.§!"§;
   import §6$z§.BonusStat;
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §[%§.Dragon;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2&@§ extends §0-§
   {
      
      private var profile:UserProfile;
      
      private var isActive:Boolean = false;
      
      public function §2&@§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override protected function §<#X§() : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         if(!§4#B§)
         {
            §4#B§ = §&%p§();
         }
         cells = [];
         var _loc1_:Number = 72.85;
         var _loc2_:Number = 49.85;
         var _loc3_:uint = 9;
         var _loc4_:int = 0;
         var _loc5_:int = int(§4#B§.numChildren);
         while(_loc4_ < _loc5_)
         {
            _loc6_ = §4#B§.getChildAt(_loc4_);
            _loc7_ = Math.round(_loc6_.y / _loc2_);
            _loc8_ = Math.round(_loc6_.x / _loc1_);
            _loc9_ = _loc8_ + _loc7_ * _loc3_;
            §"%F§(_loc6_,_loc9_);
            _loc4_++;
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=!f§ = true;
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.profile = param1;
      }
      
      public function §,&@§() : void
      {
         var _loc1_:§,%g§ = null;
         if(!this.isActive)
         {
            for each(_loc1_ in cells)
            {
               _loc1_.addEventListener(SelectObjectEvent.NAME,this.§?z§);
               _loc1_.addEventListener(§6$,§.SWAP_ITEM,this.§2$s§);
               _loc1_.addEventListener(§6$,§.GET_ITEM,this.§%%O§);
               _loc1_.addEventListener(§6$,§.PUT_ITEM,this.§]"m§);
            }
         }
         this.isActive = true;
      }
      
      public function §7%D§() : void
      {
         var _loc1_:§,%g§ = null;
         for each(_loc1_ in cells)
         {
            _loc1_.removeEventListener(SelectObjectEvent.NAME,this.§?z§);
            _loc1_.removeEventListener(§6$,§.SWAP_ITEM,this.§2$s§);
            _loc1_.removeEventListener(§6$,§.GET_ITEM,this.§%%O§);
            _loc1_.removeEventListener(§6$,§.PUT_ITEM,this.§]"m§);
         }
         this.isActive = false;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §,%g§(DisplayObjectContainer(param1));
      }
      
      private function §%%O§(param1:§6$,§) : void
      {
         dispatchEvent(new §6$,§(§6$,§.GET_ITEM,param1.getItem()));
      }
      
      private function §]"m§(param1:§6$,§) : void
      {
         dispatchEvent(new §6$,§(§6$,§.PUT_ITEM,param1.getItem()));
         §^S§.§'"=§();
      }
      
      private function §2$s§(param1:§6$,§) : void
      {
         dispatchEvent(new §6$,§(§6$,§.SWAP_ITEM,param1.getItem()));
         §^S§.§'"=§();
      }
      
      private function §?z§(param1:SelectObjectEvent) : void
      {
         §9#e§();
         §1$'§(§,%g§(param1.target).getItem());
      }
      
      public function §<"X§() : void
      {
         var _loc1_:§'"-§ = null;
         var _loc4_:BackpackItem = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:§,%g§ = null;
         _loc1_ = this.profile.§3%^§();
         var _loc2_:§#$R§ = _loc1_.§ %7§();
         var _loc3_:Array = [];
         for each(_loc4_ in _loc1_.§,!V§())
         {
            if(!_loc2_.contains(_loc4_.getId()))
            {
               _loc3_.push(_loc4_);
            }
         }
         _loc5_ = int(store.§1"J§());
         setData(_loc3_);
         _loc6_ = int(store.§-J§());
         if(_loc6_ < _loc5_)
         {
            §%$S§(_loc6_);
         }
         else
         {
            §%$S§(_loc5_);
         }
         update();
         for each(_loc7_ in cells)
         {
            _loc7_.§4!d§().removeHint();
         }
      }
   }
}

