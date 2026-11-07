package §2!-§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § %f§.§;$y§;
   import § &5§.§=#P§;
   import §!$d§.*;
   import §,$J§.§0%G§;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §=&!§.§<$Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.wormix.weapons.*;
   
   public class HpChangeEvent extends Event
   {
      
      public var § %M§:§&"T§;
      
      public var amount:int;
      
      public var changeType:§6#z§;
      
      public var §=#r§:Object;
      
      public function HpChangeEvent(param1:§&"T§, param2:int, param3:§6#z§ = null, param4:Object = null, param5:Boolean = false, param6:Boolean = false)
      {
         super(§0%v§.GAME_OBJECT_HP_CHANGE,param5,param6);
         this.§ %M§ = param1;
         this.amount = param2;
         this.changeType = param3;
         this.§=#r§ = param4;
      }
      
      override public function clone() : Event
      {
         return new HpChangeEvent(this.§ %M§,this.amount,this.changeType,this.§=#r§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("HpChangeEvent","type","bubbles","cancelable","eventPhase","unit","amount","changeType","source");
      }
   }
}

