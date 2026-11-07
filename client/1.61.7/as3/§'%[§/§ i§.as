package §'%[§
{
   import § !P§.§1!8§;
   import § !P§.§]z§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §"$+§.§^$`§;
   import §"% §.LevelUpDialog;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'$Z§.ClanDescriptionPopup;
   import §'%!§.§>%k§;
   import §'%!§.§@!Z§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0%[§.§""n§;
   import §0%[§.§^"5§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.*;
   import §2#x§.§]s§;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3#T§.§+&F§;
   import §4#2§.§,%g§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §8!Y§.§`#Q§;
   import §8#a§.§>!o§;
   import §8#a§.ShopMenu;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%E§.§6#`§;
   import §<%E§.§6$=§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §@!N§.§&#Z§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §]$v§.§]%_§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import config.achievements.§"!&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § i§ implements §]$5§
   {
      
      private const §^o§:uint = 300;
      
      private var album:§8#x§;
      
      private var uploadServer:String;
      
      protected var photos:Array = [];
      
      protected var description:String;
      
      protected var callback:Function;
      
      protected var §[f§:§]s§;
      
      private var stage:DisplayObject;
      
      private var §[A§:Array = [];
      
      private var §'j§:uint = 1;
      
      public function § i§(param1:String, param2:String, param3:DisplayObject, param4:§]s§)
      {
         super();
         this.stage = param3;
         this.§[f§ = param4;
         this.album = new §8#x§();
         this.album.§#7§(param1);
         this.album.§&!U§(param2);
      }
      
      public function savePhoto(param1:BitmapData, param2:String, param3:Function) : void
      {
         §?$6§.§1%&§(this + ".savePhoto... ");
         this.photos.push(param1);
         this.description = param2;
         this.callback = param3;
         if(!this.album.§'$U§())
         {
            this.§[f§.getAlbums(this.§5#f§);
         }
         else
         {
            this.uploadPhotos();
         }
      }
      
      private function §5#f§(param1:§=$u§) : void
      {
         var _loc2_:§8#x§ = null;
         §?$6§.§1%&§(this + ".onLoadAlbums: " + param1.success);
         if(param1.success)
         {
            this.§[A§ = param1.getAlbums();
            for each(_loc2_ in param1.getAlbums())
            {
               if(_loc2_.§@$+§() == this.album.§@$+§())
               {
                  this.album = _loc2_;
                  break;
               }
            }
            if(this.album.§'$U§() != null)
            {
               this.uploadPhotos();
            }
            else
            {
               this.§[f§.createAlbum(this.album.§@$+§(),this.album.§]G§(),this.§?$m§);
            }
         }
         else
         {
            this.callback(param1);
         }
      }
      
      private function §?$m§(param1:§6$=§) : void
      {
         §?$6§.§1%&§(this + ".onCreateAlbum: " + param1.success);
         if(param1.success)
         {
            this.album = param1.album;
            this.§[A§.push(this.album);
            this.uploadPhotos();
         }
         else
         {
            this.callback(param1);
         }
      }
      
      private function uploadPhotos() : void
      {
         §?$6§.§1%&§(this + ".uploadPhotos: " + this.album.§'$U§());
         this.§[f§.§#%p§(this.album.§'$U§(),this.§4!P§);
      }
      
      private function §4!P§(param1:§6#`§) : void
      {
         §?$6§.§1%&§(this + ".onGetUploadServer: " + param1.success + " " + param1.uploadServer);
         if(param1.success)
         {
            this.uploadServer = param1.uploadServer;
            this.§6#=§();
         }
         else if(param1.errorCode.code == this.§^o§)
         {
            this.§5$g§();
         }
         else
         {
            this.callback(param1);
         }
      }
      
      private function §5$g§() : void
      {
         var _loc1_:String = String(this.album.§@$+§() + this.§'j§);
         while(this.§=!§(_loc1_))
         {
            var _loc2_:§ i§ = this;
            var _loc3_:Number = _loc2_.§'j§ + 1;
            _loc2_.§'j§ = _loc3_;
            _loc1_ = String(this.album.§@$+§() + this.§'j§);
         }
         this.§[f§.createAlbum(_loc1_,this.album.§]G§(),this.§?$m§);
      }
      
      private function §=!§(param1:String) : Boolean
      {
         var _loc2_:§8#x§ = null;
         for each(_loc2_ in this.§[A§)
         {
            if(_loc2_.§@$+§() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §6#=§() : void
      {
         §?$6§.§1%&§(this + ".uploadPhotoOnServer: " + this.photos.length);
         if(this.photos.length)
         {
            §""n§.single(this.stage,MouseEvent.CLICK,this.§2%M§);
         }
         var _loc1_:§4T§ = new §4T§(true);
         this.callback(_loc1_);
      }
      
      protected function §9"R§(param1:§,$2§) : void
      {
         var _loc3_:Array = null;
         var _loc4_:§>%k§ = null;
         var _loc2_:Array = [];
         if(param1 is §@!Z§)
         {
            _loc3_ = §@!Z§(param1).photos;
            for each(_loc4_ in _loc3_)
            {
               _loc2_.push(_loc4_.id);
            }
            this.§[f§.§1$S§(this.album.§9J§(),_loc2_,this.description,null);
         }
         else
         {
            this.callback(param1);
         }
      }
      
      protected function §2%M§(param1:Event) : void
      {
         §?$6§.§1%&§(this + ".hiddenPhotoSave: " + this.photos.length);
         var _loc2_:Array = this.photos.slice(0,Math.min(5,this.photos.length));
         if(this.photos.length > 5)
         {
            this.photos = this.photos.slice(5);
         }
         else
         {
            this.photos = [];
         }
         this.§[f§.§-"E§(_loc2_,this.uploadServer,this.§9"R§);
         if(this.photos.length)
         {
            this.§6#=§();
         }
      }
   }
}

