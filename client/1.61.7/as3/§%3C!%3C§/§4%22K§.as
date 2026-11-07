package §<!<§
{
   import §!L§.§7%0§;
   import §4&F§.*;
   import §<%k§.*;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §4"K§ extends §<#D§
   {
      
      private var §3%T§:uint;
      
      private var callback:Function;
      
      public function §4"K§(param1:Array, param2:int, param3:int = 0)
      {
         super(param1,param2,param3);
         this.§3%T§ = §8"%§.§[f§.§7%p§() / param2 * param2;
      }
      
      override public function §"%S§(param1:Function) : void
      {
         var _loc2_:Array = null;
         if(§#<§() >= §>$6§())
         {
            param1([]);
         }
         else if(Boolean(data[§#<§()]) && Boolean(UserProfile(data[§#<§()]).getSocialData()))
         {
            super.§"%S§(param1);
         }
         else
         {
            this.callback = param1;
            _loc2_ = data.slice(§#<§(),Math.min(§#<§() + this.§3%T§,data.length));
            new §7%0§().§%$N§(_loc2_,this.§^$T§,true);
         }
      }
      
      private function §^$T§(param1:Array, param2:Boolean) : void
      {
         super.§"%S§(this.callback);
      }
   }
}

