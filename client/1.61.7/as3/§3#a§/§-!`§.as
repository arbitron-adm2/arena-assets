package §3#a§
{
   import §=!p§.§'%#§;
   import §>%S§.§^!V§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   
   public class §-!`§
   {
      
      public var name:String;
      
      public var units:Array;
      
      public var §]"P§:UserProfile;
      
      public function §-!`§(param1:String, param2:Array, param3:String = "")
      {
         var _loc4_:Vector.<UserProfile> = null;
         var _loc5_:UserProfile = null;
         var _loc6_:§'%#§ = null;
         super();
         this.name = param1;
         this.units = param2;
         if(param2.length > 0)
         {
            this.§]"P§ = UserProfile(param2[0]);
            _loc4_ = new Vector.<UserProfile>(0);
            for each(_loc5_ in param2)
            {
               _loc4_.push(_loc5_);
            }
            this.§]"P§.§;"!§(_loc4_);
            _loc6_ = new §'%#§();
            _loc6_.§7v§(this.§]"P§.getCharName());
            this.§]"P§.§8!J§(_loc6_);
            this.§]"P§.§2!§(param1);
            this.§]"P§.getSocialData().§!%`§(param3);
         }
      }
   }
}

