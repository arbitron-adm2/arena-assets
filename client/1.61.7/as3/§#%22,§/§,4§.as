package §#",§
{
   import § &5§.§=#P§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+%S§.§3$§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §6_§.§&$6§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.client.WipeProfile;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §,4§ extends §<#D§
   {
      
      private var page:int;
      
      private var callback:Function;
      
      public function §,4§(param1:Array, param2:int, param3:int)
      {
         super(param1,param2,param3);
         this.page = 2;
      }
      
      override public function §"%S§(param1:Function) : void
      {
         this.callback = param1;
         if(Boolean(data[§#<§()]) && Boolean(UserProfile(data[§#<§()]).getSocialData()))
         {
            super.§"%S§(param1);
         }
         else
         {
            §8"%§.§?#H§.§7"Y§(this.page,this.§^$T§);
         }
      }
      
      private function §^$T§(param1:Array) : void
      {
         if(param1.length > 0)
         {
            data = data.concat(param1);
            super.§"%S§(this.callback);
            ++this.page;
         }
      }
   }
}

