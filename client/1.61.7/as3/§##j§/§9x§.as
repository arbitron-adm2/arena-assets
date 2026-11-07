package §##j§
{
   import §0!§.*;
   import §7$1§.§;$n§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$§.*;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9x§ implements §7,§
   {
      
      protected var count:int;
      
      protected var name:String;
      
      private var awardKind:int;
      
      public function §9x§(param1:int, param2:String = null)
      {
         super();
         this.count = param1;
         this.name = param2;
      }
      
      public function getId() : uint
      {
         return 0;
      }
      
      public function getCount() : int
      {
         return this.count;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function toString() : String
      {
         return "{" + this.name + ",count=" + this.count + ",kind=" + this.awardKind + "}";
      }
      
      public function setKind(param1:int) : void
      {
         this.awardKind = param1;
      }
      
      public function getKind() : int
      {
         return this.awardKind;
      }
   }
}

