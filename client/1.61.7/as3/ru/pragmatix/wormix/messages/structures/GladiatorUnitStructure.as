package ru.pragmatix.wormix.messages.structures
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'T§.§!$C§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   
   public class GladiatorUnitStructure extends TeamMemberStructure
   {
      
      public function GladiatorUnitStructure()
      {
         super();
      }
      
      override public function toString() : String
      {
         return "GladiatorUnitStructure{race=" + String(raceId) + ",armor=" + String(armor) + ",attack=" + String(attack) + ",hat=" + String(hatId) + ",artifact=" + String(artifactId) + "}";
      }
   }
}

