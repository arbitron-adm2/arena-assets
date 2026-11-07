package §0%[§
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §"%H§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §%L§.§%%w§;
   import §'$4§.*;
   import §+%S§.§"$7§;
   import §0"L§.§+# §;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §%"'§
   {
      
      private var §-!V§:String = "";
      
      private var §6%"§:String = "";
      
      private var §'D§:Object;
      
      private var referrerId:String = "";
      
      private var preloaderParams:Object;
      
      private var §3#i§:LoaderContext;
      
      private var appMode:§9"z§;
      
      public function §%"'§()
      {
         super();
      }
      
      public function §]"&§() : §9"z§
      {
         return this.appMode;
      }
      
      public function §=% §(param1:§9"z§) : void
      {
         this.appMode = param1;
      }
      
      public function §]!f§() : String
      {
         return this.§-!V§;
      }
      
      public function §^#E§(param1:String) : void
      {
         this.§-!V§ = param1;
      }
      
      public function §?"3§() : String
      {
         return this.§6%"§;
      }
      
      public function §7#@§(param1:String) : void
      {
         this.§6%"§ = param1;
      }
      
      public function §?%m§() : String
      {
         return this.referrerId;
      }
      
      public function §9-§(param1:String) : void
      {
         this.referrerId = param1;
      }
      
      public function §2!k§() : Object
      {
         return this.preloaderParams;
      }
      
      public function §]$n§(param1:Object) : void
      {
         this.preloaderParams = param1;
         this.appMode = §9"z§.valueOf(param1.appMode);
      }
      
      public function getFlashVars() : Object
      {
         return this.§'D§;
      }
      
      public function §6%^§(param1:Object) : void
      {
         this.§'D§ = param1;
      }
      
      public function §?w§() : LoaderContext
      {
         if(!this.§3#i§)
         {
            if(this.§-!V§.toLowerCase().indexOf("http") >= 0)
            {
               this.§3#i§ = new LoaderContext(true,new ApplicationDomain(ApplicationDomain.currentDomain),SecurityDomain.currentDomain);
            }
            else
            {
               this.§3#i§ = new LoaderContext(true,new ApplicationDomain(ApplicationDomain.currentDomain));
            }
         }
         return this.§3#i§;
      }
   }
}

