package ru.pragmatix.wormix.messages.server
{
   import §#$e§.*;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-G§.*;
   import §1&-§.§-#B§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §8#o§.*;
   import §<%k§.§`!v§;
   import §?#g§.§-!k§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class AddToGroupResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const NOT_ENOUGH_MONEY:int = 3;
      
      public var result:int;
      
      public function AddToGroupResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "AddToGroupResult{result=" + this.result + "}";
      }
   }
}

