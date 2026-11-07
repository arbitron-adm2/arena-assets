package ru.pragmatix.wormix.messages.structures
{
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§!!c§;
   import §3#a§.§-#M§;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class QuestProgressStructure
   {
      
      public var questId:int;
      
      public var canStartNew:Boolean;
      
      public var progress:String;
      
      public var rewarded:Boolean;
      
      public function QuestProgressStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "QuestProgressStructure {" + " questId=" + String(this.questId) + ", canStartNew=" + String(this.canStartNew) + ", progress=" + this.progress + ", rewarded=" + String(this.rewarded) + " }";
      }
   }
}

