package §2o§
{
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §2!-§.HpChangeEvent;
   import §4u§.§#"d§;
   import §7$t§.§&!e§;
   import §@!N§.§2"e§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §]$&§.§2&2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.motionPaths.PathFollower;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §]#;§ extends Event
   {
      
      public static const BUY_EVENT:String = "BUY_EVENT";
      
      public var moneyType:§+$A§;
      
      public var price:§'$2§;
      
      public var count:uint;
      
      public function §]#;§(param1:§'$2§, param2:§+$A§, param3:uint = 1, param4:Boolean = false)
      {
         super(BUY_EVENT,param4);
         this.moneyType = param2;
         this.price = param1;
         this.count = param3;
      }
      
      override public function clone() : Event
      {
         return new §]#;§(this.price,this.moneyType,this.count);
      }
   }
}

