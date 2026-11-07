package §[#q§
{
   import § !8§.§9%+§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.*;
   import §'%!§.§>%k§;
   import §'%!§.§@!Z§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§73§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §0&F§.§[!F§;
   import §1&-§.§4!s§;
   import §2"v§.*;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#H§.§3$p§;
   import §2#x§.§]s§;
   import §2B§.§#&E§;
   import §4$b§.§6!G§;
   import §5!9§.§6$,§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<!W§.§!"+§;
   import §<!^§.§]#u§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%E§.§4T§;
   import §<%E§.§6#`§;
   import §<%E§.§6$=§;
   import §<%E§.§=$u§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=#g§.§!"X§;
   import §=&!§.§<$Z§;
   import §=7§.§?%4§;
   import §?#g§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§4#o§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6&-§ implements §]$5§
   {
      
      public static const LOG:§&`§ = new §&`§(§6&-§);
      
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
      
      private var §"#j§:Function;
      
      public function §6&-§(param1:§]s§, param2:Function)
      {
         super();
         this.stage = Application.instance.stage;
         this.§[f§ = param1;
         this.§"#j§ = param2;
         this.album = new §8#x§();
         this.album.§#7§(§0$N§.ALBUM_TITLE);
         this.album.§&!U§(this.§3#I§());
         LOG.info(" created");
      }
      
      public function §3#I§() : String
      {
         return §0%§.format(§0$N§.ALBUM_DESCRIPTION,{"app_link":§8"%§.§[f§.getAppLink(Application.userProfile.getId().toString())});
      }
      
      public function savePhoto(param1:BitmapData, param2:String, param3:Function) : void
      {
         LOG.info(" savePhoto: " + param2);
         this.§2# §([param1],param2,param3);
      }
      
      public function §2# §(param1:Array, param2:String, param3:Function) : void
      {
         this.callback = param3;
         this.photos = this.photos.concat(param1);
         this.description = param2;
         if(!this.album.§'$U§())
         {
            LOG.info(" savePhotos: !album.getAid()=" + !this.album.§'$U§());
            this.§[f§.getAlbums(this.§5#f§);
         }
         else if(!this.§=!§(§0$N§.ALBUM_TITLE))
         {
            LOG.info(" savePhotos: !isAlbumExist(Messages.ALBUM_TITLE)=" + !this.§=!§(§0$N§.ALBUM_TITLE) + ", Messages.ALBUM_TITLE=" + §0$N§.ALBUM_TITLE);
            this.uploadPhotos();
         }
      }
      
      private function §5#f§(param1:§=$u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§8#x§ = null;
         if(param1.success)
         {
            this.§[A§ = param1.getAlbums();
            LOG.info(" onLoadAlbums: " + this.§[A§);
            for each(_loc3_ in param1.getAlbums())
            {
               if(_loc3_.§@$+§() == this.album.§@$+§())
               {
                  this.album = _loc3_;
                  _loc2_ = true;
                  LOG.info(" onLoadAlbums: hasAlbum=" + _loc2_);
                  this.§"#j§(false);
                  break;
               }
            }
            if(!_loc2_)
            {
               LOG.info(" onLoadAlbums: hasAlbum=" + _loc2_);
               if(this.album.§'$U§() != null)
               {
                  this.uploadPhotos();
               }
               else
               {
                  this.§[f§.createAlbum(this.album.§@$+§(),this.album.§]G§(),this.§?$m§);
               }
            }
         }
         else
         {
            this.callback(param1);
         }
      }
      
      private function §?$m§(param1:§6$=§) : void
      {
         if(param1.success)
         {
            this.album = param1.album;
            this.§[A§.push(this.album);
            LOG.info(" onCreateAlbum: album=" + this.album);
            this.uploadPhotos();
         }
         else
         {
            this.callback(param1);
         }
      }
      
      private function uploadPhotos() : void
      {
         LOG.info(" uploadPhotos");
         this.§[f§.§#%p§(this.album.§'$U§(),this.§4!P§);
      }
      
      private function §4!P§(param1:§6#`§) : void
      {
         if(param1.success)
         {
            this.uploadServer = param1.uploadServer;
            LOG.info(" onGetUploadServer: uploadServer=" + this.uploadServer);
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
            var _loc2_:§6&-§ = this;
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
         if(this.photos.length)
         {
            §""n§.single(this.stage,MouseEvent.CLICK,this.§2%M§);
         }
         LOG.info(" uploadPhotoOnServer");
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
            LOG.info(" onPhotoSave");
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
      
      public function §%&>§(param1:§,$2§) : void
      {
         if(param1.success)
         {
            LOG.info(" onPhotoSaved: finish");
            if(§[&G§.§3$5§.isShown())
            {
               §[&G§.§3$5§.hide();
            }
            this.§"#j§(true,param1);
         }
         else
         {
            this.onError(param1);
         }
      }
      
      private function onError(param1:§,$2§) : void
      {
         if(§[&G§.§3$5§.isShown())
         {
            §[&G§.§3$5§.hide();
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§>!n§.§'!X§(param1));
      }
   }
}

