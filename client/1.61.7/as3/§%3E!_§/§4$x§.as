package §>!_§
{
   import § #9§.§"$t§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § %f§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §,#_§.FrameTimer;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.*;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §<$q§.*;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §?$7§.§6%k§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §4$x§ extends §`&-§ implements §?A§
   {
      
      private static const §#"P§:Number = 30;
      
      private static const §["+§:Number = 30;
      
      private var loading:MovieClip;
      
      private var userProfile:UserProfile;
      
      private var loader:Loader;
      
      private var photo:Bitmap;
      
      private var defaultPhoto:DisplayObject;
      
      private var hint:MovieClip = null;
      
      private var §<"o§:§6!G§ = null;
      
      private var §;$4§:§[&H§;
      
      public function §4$x§(param1:DisplayObject = null)
      {
         super(param1);
         this.§;$4§ = new §[&H§(param1);
         this.§;$4§.§@!y§(this);
         this.loading = §'$a§("loading");
         this.§&#F§(true);
      }
      
      private function §5#]§(param1:Event) : void
      {
         this.§"$s§(true,param1);
      }
      
      private function §]$0§(param1:Event) : void
      {
         this.§"$s§(false,param1);
      }
      
      private function §"$s§(param1:Boolean, param2:Event) : void
      {
         var img:Bitmap = null;
         var success:Boolean = param1;
         var e:Event = param2;
         this.§&#F§(false);
         if(success)
         {
            try
            {
               img = e.currentTarget.content;
               this.photo = img.width == img.height ? img : this.§>!d§(img.bitmapData);
               this.§]&&§();
               this.userProfile.getSocialData().§1%Z§(this.photo.bitmapData.clone());
            }
            catch(e:Error)
            {
               §@#G§();
            }
         }
         else
         {
            this.§@#G§();
         }
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5#]§);
         this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]$0§);
         this.loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]$0§);
      }
      
      private function §@#G§() : void
      {
         if(!this.defaultPhoto)
         {
            this.defaultPhoto = §6#A§.§!&6§(§+"'§.§1$G§);
            §&"U§(this.defaultPhoto,§0%0§(this.loading));
            §`o§.§7!S§(this.defaultPhoto,§#"P§,§["+§);
            this.defaultPhoto.x = this.loading.x;
            this.defaultPhoto.y = this.loading.y;
         }
         this.defaultPhoto.visible = true;
         this.§&#F§(false);
      }
      
      private function §&#F§(param1:Boolean) : void
      {
         this.loading.visible = param1;
         if(param1)
         {
            this.loading.play();
         }
         else
         {
            this.loading.stop();
         }
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         var _loc3_:String = null;
         this.userProfile = param1;
         var _loc2_:§'%#§ = param1.getSocialData();
         if(!_loc2_)
         {
            this.§@#G§();
            return;
         }
         if(_loc2_.§3!M§())
         {
            this.photo = new Bitmap(_loc2_.§3!M§().clone());
            this.§&#F§(false);
            this.§]&&§();
         }
         else
         {
            this.loader = new Loader();
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5#]§);
            this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]$0§);
            this.loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]$0§);
            _loc3_ = _loc2_.§9%F§() ? _loc2_.§9%F§() : "";
            this.loader.load(new URLRequest(_loc3_),new LoaderContext(true));
         }
      }
      
      private function §]&&§() : void
      {
         §?!C§(this.photo);
         §]%N§(this.photo,this.loading);
         §`o§.§<"^§(this.photo,§#"P§,§["+§);
         this.photo.x = this.loading.x;
         this.photo.y = this.loading.y;
      }
      
      private function §>!d§(param1:BitmapData) : Bitmap
      {
         var _loc2_:Boolean = false;
         _loc2_ = param1.width > param1.height;
         var _loc3_:uint = _loc2_ ? uint(param1.height) : uint(param1.width);
         var _loc4_:uint = _loc2_ ? uint((param1.width - param1.height) * 0.5) : 0;
         var _loc5_:uint = _loc2_ ? 0 : uint((param1.height - param1.width) * 0.5);
         var _loc6_:BitmapData = new BitmapData(_loc3_,_loc3_);
         _loc6_.copyPixels(param1,new Rectangle(_loc4_,_loc5_,_loc3_,_loc3_),new Point(0,0));
         return new Bitmap(_loc6_);
      }
      
      public function §&k§() : DisplayObject
      {
         if(this.hint == null)
         {
            this.hint = §6#A§.§!&6§(§+"'§.§<"$§);
            this.§%%S§(this.userProfile);
         }
         return this.hint;
      }
      
      private function §%%S§(param1:UserProfile, param2:§+%]§ = null) : void
      {
         var _loc3_:§^$E§ = null;
         var _loc4_:§^%%§ = null;
         var _loc5_:MovieClip = null;
         if(param1)
         {
            §"$t§.§<$W§(param1,this.hint,param2);
            _loc3_ = param1.§2u§();
            if(param2)
            {
               _loc3_ = param2.§2u§();
            }
            _loc4_ = param1.§+!b§();
            if(param2)
            {
               _loc4_ = param2.§+!b§();
            }
            _loc5_ = MovieClip(§`o§.getChildByName(this.hint,"worm"));
            this.§<"o§ = §"$t§.§!!1§(this.§<"o§,param1,_loc5_,param1.getRace(),_loc3_,_loc4_);
            this.§<"o§.§4%F§();
         }
         else
         {
            this.hint.visible = false;
         }
      }
      
      override public function destroy() : void
      {
         §3!3§.§>!j§(§3!3§.§#"R§(this.loading));
         this.loading = null;
         this.userProfile = null;
         if(this.loader)
         {
            this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5#]§);
            this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]$0§);
            this.loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]$0§);
            this.loader = null;
         }
         this.defaultPhoto = null;
         if(this.photo)
         {
            this.photo.bitmapData.dispose();
         }
         this.photo = null;
         super.destroy();
      }
   }
}

