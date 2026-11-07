package §'%[§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#x§.§]s§;
   import §5!9§.§6$,§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §?$7§.§6%k§;
   import §]^§.§-$T§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §="e§
   {
      
      protected var uploadServer:String;
      
      protected var §[f§:§]s§;
      
      protected var callback:Function;
      
      protected var photo:BitmapData;
      
      public function §="e§(param1:§]s§)
      {
         super();
         this.§[f§ = param1;
      }
      
      protected function savePhoto(param1:BitmapData, param2:Function = null) : void
      {
         this.photo = param1;
         this.callback = param2;
         this.getUploadServer();
      }
      
      protected function getUploadServer() : void
      {
         throw IllegalOperationError("method should be overrided");
      }
      
      protected function §4!P§(param1:§6#`§) : void
      {
         §?$6§.§1%&§(this + ".onGetUploadServer: " + param1.success + " " + (param1.success ? param1.uploadServer : ""));
         if(param1.success)
         {
            this.uploadServer = param1.uploadServer;
            this.uploadPhoto();
         }
         else if(this.callback != null)
         {
            this.callback(param1);
         }
      }
      
      protected function uploadPhoto() : void
      {
         throw IllegalOperationError("method should be overriden");
      }
      
      protected function §9"R§(param1:§,$2§) : void
      {
         if(this.callback != null)
         {
            this.callback(param1);
         }
      }
   }
}

