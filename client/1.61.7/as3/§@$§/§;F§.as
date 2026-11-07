package §@$§
{
   import §1#p§.§2=§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §?X§.§36§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §;F§
   {
      
      private static var §^%p§:§+%>§;
      
      public function §;F§()
      {
         super();
      }
      
      public static function create(param1:UserProfile, param2:Boolean = true, param3:Boolean = true, param4:Boolean = false) : §+%>§
      {
         var _loc5_:§+%>§ = null;
         if(§8"%§.§?!W§.inBattle)
         {
            return new §'%`§(param1);
         }
         if(§2=§.§9$M§(param1))
         {
            _loc5_ = new §36§(param1,§=%_§.§<!5§(param1.getId()));
            return §"$w§(_loc5_);
         }
         if(param4 || §`"c§.§#$-§(param1.§"%D§()))
         {
            return §"$w§(new §&%z§(param1,null,param2,param3));
         }
         return new §6$[§(param1);
      }
      
      public static function §"$w§(param1:§+%>§) : §+%>§
      {
         if(Boolean(§^%p§) && Boolean(§^%p§.getContainer()) && §^%p§.isShown())
         {
            §^%p§.hide();
         }
         §^%p§ = param1;
         return param1;
      }
   }
}

