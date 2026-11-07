package ru.pragmatix.wormix.messages.structures
{
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class SelectStuffResultStructure
   {
      
      public static const SUCCESS:uint = 0;
      
      public static const ERROR:uint = 1;
      
      public var profileId:int;
      
      public var resultHat:int;
      
      public var hatId:int;
      
      public var resultArtifact:int;
      
      public var artifactId:int;
      
      public function SelectStuffResultStructure(param1:int = 0, param2:int = 0)
      {
         super();
         this.hatId = param1;
         this.artifactId = param2;
      }
      
      public function toString() : String
      {
         return this.profileId + " " + this.hatId + " " + this.artifactId;
      }
   }
}

