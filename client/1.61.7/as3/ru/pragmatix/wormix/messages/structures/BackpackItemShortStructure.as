package ru.pragmatix.wormix.messages.structures
{
   import § !8§.§`!d§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.display.ContentDisplay;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class BackpackItemShortStructure
   {
      
      public var weaponId:int;
      
      public var count:int;
      
      public function BackpackItemShortStructure(param1:uint = 0, param2:int = 0)
      {
         super();
         this.weaponId = param1;
         this.count = param2;
      }
      
      public function toString() : String
      {
         return "BackpackItemShortStructure{id=" + String(this.weaponId) + ",count=" + String(this.count) + "}";
      }
   }
}

