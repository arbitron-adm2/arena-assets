package §1#p§
{
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §2=§
   {
      
      public static const §0"=§:int = 0;
      
      public static const FRIEND:int = 1;
      
      public static const §"!$§:int = 2;
      
      public static const §2f§:int = 3;
      
      public static const MERCENARY:int = 4;
      
      public static const §^%&§:int = 5;
      
      public function §2=§()
      {
         super();
      }
      
      public static function §9$M§(param1:UserProfile) : Boolean
      {
         return §3$G§(param1.§4!^§());
      }
      
      public static function §3$G§(param1:int) : Boolean
      {
         return param1 == §"!$§ || param1 == §2f§ || param1 == §^%&§;
      }
      
      public static function §]!$§(param1:UserProfile) : Boolean
      {
         var _loc2_:int = param1.§4!^§();
         return _loc2_ == §2f§ || _loc2_ == §^%&§;
      }
      
      public static function §1#k§(param1:UserProfile) : Boolean
      {
         return param1.§4!^§() == MERCENARY;
      }
      
      public static function §#$-§(param1:UserProfile) : Boolean
      {
         return param1.§4!^§() == FRIEND;
      }
   }
}

