package ru.pragmatix.wormix.messages.structures
{
   import §%L§.§%%w§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §2!-§.HpChangeEvent;
   import §<$q§.*;
   import §?$L§.§&$9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.serialization.server.*;
   
   public class BundleStructure
   {
      
      public var expireInSeconds:int;
      
      public var code:String;
      
      public var order:int;
      
      public var discount:int;
      
      public var votes:Number;
      
      public var items:Array;
      
      public function BundleStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "BundleStructure{" + "expireInSeconds=" + this.expireInSeconds + ",code=" + this.code + ",order=" + this.order + ",discount=" + this.discount + ",votes=" + this.votes + ",items=" + this.items + "}";
      }
   }
}

