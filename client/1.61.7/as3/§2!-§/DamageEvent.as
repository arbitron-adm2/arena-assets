package §2!-§
{
   import §&!m§.§;#[§;
   import §2#x§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.*;
   import §<"L§.§##-§;
   import §<%k§.§2§;
   import §@!i§.§,! §;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^!]§.WeaponShootEvent;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class DamageEvent extends Event
   {
      
      public var source:§6#I§;
      
      public var victim:§&"T§;
      
      public var power:Number;
      
      public var customSource:Object;
      
      public function DamageEvent(param1:§6#I§, param2:§&"T§, param3:Number, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param4,param5,param6);
         this.source = param1;
         this.victim = param2;
         this.power = param3;
      }
      
      public static function §!"2§(param1:§6#I§, param2:§&"T§, param3:Number, param4:String, param5:Object = null) : void
      {
         var _loc6_:DamageEvent = null;
         if(Application.scene)
         {
            _loc6_ = new DamageEvent(param1,param2,param3,param4);
            _loc6_.customSource = param5;
            Application.scene.dispatchEvent(_loc6_);
         }
      }
      
      override public function clone() : Event
      {
         var _loc1_:DamageEvent = new DamageEvent(this.source,this.victim,this.power,type,bubbles,cancelable);
         if(this.customSource)
         {
            _loc1_.customSource = this.customSource;
         }
         return _loc1_;
      }
      
      override public function toString() : String
      {
         return formatToString("DamageEvent","type","bubbles","cancelable","eventPhase","source","victim","power","customSource");
      }
   }
}

