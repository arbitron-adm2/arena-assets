package ru.pragmatix.wormix.pvp.messages.ex
{
   public class PvpLogin
   {
      
      public var profileId:uint;
      
      public var profileSocialId:String;
      
      public var socialNetworkId:int;
      
      public var authKey:String;
      
      public var playerNames:String;
      
      public var mainServerId:int;
      
      public function PvpLogin()
      {
         super();
      }
      
      public function toString() : String
      {
         return "PvpLogin{profileId=" + this.socialNetworkId + ":" + this.profileId + ",stringId=" + this.profileSocialId + ",profileName=" + this.playerNames + ",mainServerId=" + this.mainServerId + ",authKey=" + this.authKey + "}";
      }
   }
}

