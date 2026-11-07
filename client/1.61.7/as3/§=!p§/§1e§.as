package §=!p§
{
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §,"v§.§9%d§;
   import §-@§.§3%9§;
   import §=&!§.§ "^§;
   import §@!i§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.*;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.BuyRenameCharResult;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   
   public class §1e§
   {
      
      public var code:uint;
      
      public var count:uint;
      
      public var bonus:uint;
      
      public var price:Number;
      
      public var name:String;
      
      public var descr:String;
      
      public var moneyType:§+$A§;
      
      public var icon:String;
      
      public function §1e§(param1:uint, param2:uint, param3:Number, param4:§+$A§, param5:String = null)
      {
         super();
         this.count = param2;
         this.price = param3;
         this.code = param1;
         this.moneyType = param4;
         this.name = param5;
      }
      
      public static function §3#]§(param1:uint, param2:uint, param3:uint, param4:Number, param5:§+$A§, param6:String = null, param7:String = null) : §1e§
      {
         var _loc8_:§1e§ = new §1e§(param1,param2,param4,param5,param6);
         _loc8_.bonus = param3;
         _loc8_.icon = param7;
         return _loc8_;
      }
      
      public function toString() : String
      {
         return "PaymentOption:{" + " count=" + this.count + " price=" + this.price + " code=" + this.code + " moneyType=" + this.moneyType + " name=" + this.name + " bonus=" + this.bonus + " icon=" + this.icon + " descr=" + this.descr + " }";
      }
   }
}

