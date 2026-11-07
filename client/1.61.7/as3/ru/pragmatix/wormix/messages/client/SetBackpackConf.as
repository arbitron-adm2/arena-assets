package ru.pragmatix.wormix.messages.client
{
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §&&6§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   
   public class SetBackpackConf
   {
      
      public var configs:Array = [];
      
      public var activeConfig:int;
      
      public function SetBackpackConf(param1:Array, param2:int)
      {
         var _loc3_:Array = null;
         super();
         for each(_loc3_ in param1)
         {
            this.configs.push(new BackpackConfStructure(_loc3_));
         }
         this.activeConfig = param2;
      }
   }
}

