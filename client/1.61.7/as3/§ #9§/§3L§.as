package § #9§
{
   import § !8§.§`!d§;
   import § !P§.*;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § %f§.§;$y§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#$e§.§!a§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.KamikazeBuff;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §4"j§.§[&C§;
   import §4$b§.§6!G§;
   import §4&F§.*;
   import §4^§.§'!u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7$t§.*;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §;$8§.§6"E§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §="z§.*;
   import §=&!§.§4$z§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^§.*;
   import §`#x§.§"$r§;
   import com.greensock.TweenMax;
   import config.§28§;
   import config.achievements.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3L§ extends §`&-§ implements §?A§, §^c§
   {
      
      private var userProfile:UserProfile;
      
      private var loading:MovieClip;
      
      private var maskClip:DisplayObject;
      
      private var photoContainer:MovieClip;
      
      private var hint:MovieClip = null;
      
      private var §<"o§:§6!G§ = null;
      
      private var loader:Loader;
      
      private var photo:Bitmap;
      
      private var §%!7§:Number;
      
      private var §+$>§:Number;
      
      private var defaultPhoto:Sprite;
      
      private var §;$4§:§[&H§;
      
      private var §=!T§:TextField;
      
      private var §,v§:String = "FullUserHint";
      
      private var onlineStatus:MovieClip;
      
      private var §+!m§:Boolean = false;
      
      private var §5$w§:Boolean = false;
      
      public function §3L§(param1:MovieClip, param2:Boolean = true)
      {
         super(param1);
         if(param2)
         {
            this.§;$4§ = new §[&H§(param1);
            this.§;$4§.§@!y§(this);
         }
         if(getChildByName("onlineStatus") as MovieClip)
         {
            this.onlineStatus = getChildByName("onlineStatus") as MovieClip;
            this.onlineStatus.visible = false;
            this.onlineStatus.mouseChildren = false;
            this.onlineStatus.mouseEnabled = false;
         }
         this.photoContainer = §'$a§("photoContainer") || new MovieClip();
         this.photoContainer.removeChildren();
         this.photoContainer.name = "photoContainer";
         this.loading = getChildByName("loading") as MovieClip;
         if(this.loading)
         {
            §&"U§(this.photoContainer,§0%0§(this.loading));
         }
         var _loc3_:DisplayObject = getChildByName("defaultPhoto");
         if(_loc3_)
         {
            _removeChild(_loc3_);
         }
         this.§&#F§(false);
         this.§=!T§ = §'%s§("level");
         if(this.§=!T§)
         {
            §&$9§.§>&F§(this.§=!T§,§"-§.§6"j§," ");
            this.§=!T§.mouseEnabled = false;
         }
         this.maskClip = getChildByName("maskClip");
         if(this.maskClip)
         {
            this.§%!7§ = this.maskClip.width;
            this.§+$>§ = this.maskClip.height;
         }
         else
         {
            this.§%!7§ = width;
            this.§+$>§ = height;
         }
      }
      
      public function §4!H§() : void
      {
         this.§,v§ = §+"'§.§?-§;
      }
      
      private function §&#F§(param1:Boolean) : void
      {
         if(this.loading)
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
         if(this.photo)
         {
            this.photo.visible = !param1;
         }
      }
      
      public function §3%,§(param1:UserProfile, param2:§+%]§ = null) : void
      {
         var _loc5_:BitmapData = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Boolean = false;
         var _loc3_:§]$;§ = §8"%§.§?!W§.§4"m§;
         this.userProfile = param1;
         this.§5$w§ = _loc3_ && !_loc3_.§=$S§().§-%-§ && Boolean(param2) && param2.squad.getTeamId() != _loc3_.§2#-§();
         this.§&#F§(false);
         this.§;!-§();
         this.§5%Q§();
         this.§=#Z§();
         var _loc4_:§'%#§ = param1 ? param1.getSocialData() : null;
         if((Boolean(_loc4_)) && _loc4_.§3!M§() != null)
         {
            _loc5_ = _loc4_.§3!M§().clone();
         }
         if(_loc5_)
         {
            this.§]&&§(new Bitmap(_loc5_));
         }
         else
         {
            _loc6_ = Social.settings.§>Y§();
            _loc7_ = _loc4_ ? _loc4_.§9%F§() : "";
            if((Boolean(_loc7_)) && Boolean(_loc6_) && _loc7_.indexOf(_loc6_) > -1)
            {
               this.§8$C§();
            }
            else if(_loc7_)
            {
               this.§&#F§(true);
               this.loader = new Loader();
               this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5#]§);
               this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]$0§);
               this.loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]$0§);
               this.loader.load(new URLRequest(_loc7_),new LoaderContext(true));
            }
            else if(Boolean(param1) && Boolean(param1.getRace()))
            {
               this.§8$C§();
            }
            else
            {
               this.§@#G§();
            }
         }
         if(param1)
         {
            if(this.hint)
            {
               this.§%%S§(param1,param2);
            }
            if(this.§=!T§)
            {
               _loc8_ = param1.getId() < 0 && !§4&A§.§'![§(param1.getId()).§[$j§;
               §&$9§.§>&F§(this.§=!T§,§"-§.§6"j§,param1.getLevel().toString() + (_loc8_ ? "!" : ""));
            }
            if(Boolean(this.onlineStatus) && this.§+!m§)
            {
               this.onlineStatus.visible = param1.§#%-§();
            }
         }
         else
         {
            this.§^#r§();
            if(this.§=!T§)
            {
               this.§=!T§.text = "";
            }
         }
      }
      
      private function §%%S§(param1:UserProfile, param2:§+%]§ = null) : void
      {
         §"$t§.§<$W§(param1,this.hint);
         if(this.§5$w§ && Boolean(this.hint.userName))
         {
            TextField(this.hint.userName).text = param1.getCharName();
         }
         var _loc3_:§^$E§ = param1.§2u§();
         if(param2)
         {
            _loc3_ = param2.§2u§();
         }
         var _loc4_:§^%%§ = param1.§+!b§();
         if(param2)
         {
            _loc4_ = param2.§+!b§();
         }
         var _loc5_:MovieClip = MovieClip(§`o§.getChildByName(this.hint,"worm"));
         this.§<"o§ = §"$t§.§!!1§(this.§<"o§,param1,_loc5_,param1.getRace(),_loc3_,_loc4_);
         this.§<"o§.§4%F§();
      }
      
      public function §&k§() : DisplayObject
      {
         var _loc1_:String = this.§["C§();
         if(!this.hint || _loc1_ != this.§,v§)
         {
            this.§,v§ = _loc1_;
            this.hint = §6#A§.§!&6§(this.§,v§);
         }
         if(this.userProfile)
         {
            this.§%%S§(this.userProfile);
         }
         return this.hint;
      }
      
      private function §["C§() : String
      {
         if(§4! §.isMe(this.userProfile))
         {
            return §+"'§.§<"$§;
         }
         if(this.§,v§ == §+"'§.§?-§)
         {
            return §+"'§.§?-§;
         }
         if(Boolean(this.userProfile) && Boolean(this.userProfile.§!#E§()) && (this.§,v§ == §+"'§.§<"$§ || this.§,v§ == §+"'§.§<w§))
         {
            return §+"'§.§<"$§;
         }
         return §+"'§.§<w§;
      }
      
      public function §!=§(param1:String) : void
      {
         if(this.§,v§ != param1 && Boolean(this.hint))
         {
            this.hint = null;
            this.§<"o§ = null;
         }
         this.§,v§ = param1;
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
         var success:Boolean = param1;
         var event:Event = param2;
         this.§;!-§();
         this.§&#F§(false);
         if(success && (§4! §.isMe(this.userProfile) || §8"%§.§&S§.§?"7§()))
         {
            try
            {
               this.§]&&§(event.currentTarget.content);
               this.userProfile.getSocialData().§1%Z§(this.photo.bitmapData.clone());
            }
            catch(error:Error)
            {
               §8$C§();
            }
         }
         else
         {
            this.§8$C§();
         }
      }
      
      private function §;!-§() : void
      {
         if(this.loader)
         {
            this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5#]§);
            this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]$0§);
            this.loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]$0§);
            this.loader = null;
         }
      }
      
      private function §=#Z§() : void
      {
         if(this.photo)
         {
            this.photoContainer.removeChild(this.photo);
            this.photo.bitmapData.dispose();
            this.photo = null;
         }
      }
      
      private function §]&&§(param1:Bitmap) : void
      {
         if(Boolean(this.photo) && this.photoContainer.contains(this.photo))
         {
            this.photoContainer.removeChild(this.photo);
         }
         this.photo = param1;
         this.photoContainer.addChild(this.photo);
         §`o§.§<"^§(this.photo,this.§%!7§,this.§+$>§);
         if(this.loading)
         {
            this.photo.x = this.maskClip ? this.maskClip.x : this.loading.x;
            this.photo.y = this.maskClip ? this.maskClip.y : this.loading.y;
         }
         else
         {
            this.photo.x = (this.photoContainer.width - this.photo.width) * 0.5;
            this.photo.y = (this.photoContainer.height - this.photo.height) * 0.5;
         }
         this.photo.visible = true;
      }
      
      public function §!%'§() : void
      {
         this.§+!m§ = true;
      }
      
      private function §@#G§() : void
      {
         this.§&#F§(false);
         this.defaultPhoto = §6#A§.§!&6§(§+"'§.§1$G§);
         this.photoContainer.addChild(this.defaultPhoto);
         if(this.maskClip)
         {
            §`o§.§7!S§(this.defaultPhoto,this.maskClip.width,this.maskClip.height);
         }
         else
         {
            §`o§.§7!S§(this.defaultPhoto,container.width - 5,container.height - 5);
         }
         if(this.loading)
         {
            this.defaultPhoto.x = this.maskClip ? this.maskClip.x : this.loading.x - 5;
            this.defaultPhoto.y = this.maskClip ? this.maskClip.y : this.loading.y - 5;
         }
         else
         {
            this.defaultPhoto.x = (this.photoContainer.width - this.defaultPhoto.width) * 0.5;
            this.defaultPhoto.y = (this.photoContainer.height - this.defaultPhoto.height) * 0.5;
         }
      }
      
      public function §8$C§() : void
      {
         var _loc1_:§6!G§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:BitmapData = null;
         this.§&#F§(false);
         this.§;!-§();
         this.§5%Q§();
         this.defaultPhoto = new Sprite();
         this.defaultPhoto.graphics.beginFill(0,0);
         this.defaultPhoto.graphics.drawRect(0,0,this.§%!7§,this.§+$>§);
         this.photoContainer.addChild(this.defaultPhoto);
         if(this.userProfile.getRace())
         {
            _loc1_ = §"$t§.§!!1§(null,this.userProfile,this.defaultPhoto);
            _loc1_.§'&@§();
            _loc2_ = _loc1_.§#%c§();
            _loc1_.§[#P§();
            §`o§.§<"^§(this.defaultPhoto,100,100);
            _loc3_ = _loc1_.§"?§();
         }
         if(this.loading)
         {
            this.defaultPhoto.x = this.loading.x - 10;
         }
         else
         {
            this.defaultPhoto.x = (this.photoContainer.width - this.defaultPhoto.width) * 0.5;
         }
         this.defaultPhoto.y = -this.defaultPhoto.getBounds(this.defaultPhoto).top - 10;
         if(this.userProfile.getRace())
         {
            _loc3_.addChild(_loc2_);
            if(this.userProfile.getRace().equals(Race.§ "w§.§]!D§()))
            {
               _loc4_ = _loc3_.getChildByName("ears");
               this.defaultPhoto.y -= _loc4_.height / 2;
            }
         }
         if(this.userProfile.getSocialData())
         {
            _loc5_ = null;
         }
         if(this.photo)
         {
            this.photo.visible = false;
         }
      }
      
      private function §5%Q§() : void
      {
         if(Boolean(this.defaultPhoto) && this.photoContainer.contains(this.defaultPhoto))
         {
            this.photoContainer.removeChild(this.defaultPhoto);
         }
      }
      
      public function §&%4§() : void
      {
         if(this.§;$4§)
         {
            this.§;$4§.§@!y§(this);
         }
      }
      
      public function §^#r§() : void
      {
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
         }
      }
      
      override public function destroy() : void
      {
         if(this.photoContainer)
         {
            this.photoContainer.removeChildren();
         }
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
         }
         if(this.photo)
         {
            this.photo.bitmapData.dispose();
         }
         this.stopAnimations();
         super.destroy();
      }
      
      public function §?&1§() : UserProfile
      {
         return this.userProfile;
      }
      
      public function §;%y§() : MovieClip
      {
         return this.photoContainer;
      }
      
      public function stopAnimations() : void
      {
         if(this.loading)
         {
            this.loading.stop();
         }
      }
      
      public function playAnimations() : void
      {
         if(Boolean(this.loading) && this.loading.visible)
         {
            this.loading.play();
         }
      }
   }
}

