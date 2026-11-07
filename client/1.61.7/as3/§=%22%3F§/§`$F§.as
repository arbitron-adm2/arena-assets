package §="?§
{
   import §&"c§.§5$n§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §=&!§.§<$Z§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^4§.§4&4§;
   import §`%&§.§`§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §`$F§ extends § %#§
   {
      
      private var §2"'§:§5$n§;
      
      private var target:§+%]§;
      
      public function §`$F§(param1:§+%]§, param2:§+%]§, param3:§5$n§)
      {
         super(param1,param2.x,200,null,"AmFlightYellow");
         this.target = param2;
         this.§2"'§ = param3;
      }
      
      override protected function onEnterUpdate() : void
      {
         var _loc1_:Number = NaN;
         if(Boolean(this.target) && !disposed)
         {
            _loc1_ = §-q§.distance(x,0,this.target.x,0);
            if(_loc1_ > §<H§.§@% §)
            {
               §^"F§(0,_loc1_ * 0.2 * (x < this.target.x ? 1 : -1));
            }
         }
      }
      
      override protected function onEntered() : void
      {
         if(!disposed)
         {
            if(speedX != 0)
            {
               §^"F§(0,0);
            }
            this.§1"n§(this.target);
            §8$a§.§%!E§(60,function():void
            {
               ufoOut();
            });
         }
      }
      
      private function §1"n§(param1:§+%]§) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(!disposed) && Boolean(owner) && Boolean(param1))
         {
            _loc2_ = Math.atan2(param1.y - y,param1.x - x);
            new §4&4§(owner,this,this.§2"'§,_loc2_,75,20,30,false);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.target = null;
         this.§2"'§ = null;
      }
   }
}

