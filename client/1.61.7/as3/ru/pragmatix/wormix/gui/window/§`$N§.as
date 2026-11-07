package ru.pragmatix.wormix.gui.window
{
   import § &5§.§=#P§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§4,§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §2!-§.NewUnitEvent;
   import §2!-§.NextTurnEvent;
   import §2"L§.§,'§;
   import §2#i§.§!$A§;
   import §3#a§.§-#M§;
   import §3%?§.*;
   import §4!!§.§!%n§;
   import §4!!§.§%$$§;
   import §4!x§.§@& §;
   import §4%_§.§%%D§;
   import §4%_§.§3§;
   import §4%_§.§6#W§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5#`§.*;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<$q§.*;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=#g§.§&%5§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderStatus;
   import config.achievements.§!$L§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   use namespace gestouch_internal;
   
   public class §`$N§ extends §@& §
   {
      
      public const §1"9§:uint = 237;
      
      public var §%!7§:uint = 300;
      
      private var § $x§:DisplayObjectContainer;
      
      private var §5!a§:§0%9§;
      
      private var uploadToAlbum:§?%>§;
      
      private var iconandtitle:MovieClip;
      
      private var backPanel:MovieClip;
      
      private var border:MovieClip;
      
      private var photo:MovieClip;
      
      private var screenshot:BitmapData;
      
      private var §4# §:Bitmap;
      
      private var §;m§:§]$5§;
      
      public function §`$N§(param1:DisplayObject)
      {
         super(§6#A§.§!&6§(§+"'§.§6%&§));
         var _loc2_:DisplayObject = §4"0§.§##W§(§#!`§(),"uploadToAlbum");
         this.uploadToAlbum = §!&5§.§7#[§(_loc2_);
         this.uploadToAlbum.setText(§0$N§.BUTTON_PUBLISH,§"-§.§+$m§);
         this.uploadToAlbum.§[!u§(this.§]$H§);
         this.§ $x§ = this.uploadToAlbum.getContainer().parent;
         this.§5!a§ = new §0%9§(SimpleButton(getChildByName("close")));
         this.§5!a§.setText(§0$N§.BUTTON_CLOSE);
         this.iconandtitle = MovieClip(getChildByName("iconandtitle"));
         this.backPanel = MovieClip(getChildByName("backPanel"));
         this.border = MovieClip(getChildByName("border"));
         this.photo = MovieClip(getChildByName("photo"));
         var _loc3_:TextField = this.iconandtitle.getChildByName("title") as TextField;
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         §&$9§.§>&F§(_loc3_,§"-§.§+$m§,§0$N§.PHOTO_MENU_TITLE);
         §`o§.§%&%§(this.iconandtitle);
         this.iconandtitle.x -= this.iconandtitle.getChildByName("icon").width * 0.5;
         this.§;m§ = §4,§.§[#L§(§0$N§.ALBUM_TITLE,this.§3#I§(),param1,§8"%§.context.§]%X§(),§8"%§.§[f§);
         this.§]"+§();
      }
      
      public function §]"+§() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = this.§>#!§() * this.§1"9§;
         var _loc2_:Number = (_loc1_ - this.§%!7§) / 2;
         var _loc3_:uint = this.backPanel.width - this.§%!7§;
         var _loc4_:uint = this.border.width - this.§%!7§;
         this.§ $x§.x += _loc2_;
         this.iconandtitle.x += _loc2_;
         this.§5!a§.x += _loc2_;
         this.§%!7§ = _loc1_;
         this.border.width = _loc1_ + _loc4_;
         this.backPanel.width = _loc1_ + _loc3_;
      }
      
      public function §&%Q§() : Number
      {
         return this.§>#!§() * this.§1"9§;
      }
      
      public function §>#!§() : Number
      {
         var _loc1_:§&%5§ = null;
         _loc1_ = §8"%§.§^%W§.§"$=§();
         var _loc2_:uint = uint(_loc1_.§'$#§());
         var _loc3_:uint = uint(_loc1_.§@%<§());
         return _loc3_ / _loc2_;
      }
      
      public function §!<§(param1:BitmapData, param2:BitmapData) : void
      {
         this.§]"+§();
         this.§4# § = new Bitmap(param1);
         this.screenshot = param2;
         this.photo.addChild(this.§4# §);
         show();
      }
      
      private function §]$H§(param1:Event) : void
      {
         if(!(this.§;m§ is §@"4§ || this.§;m§ is § i§ || this.§;m§ is §3%5§ || this.§;m§ is §4!C§))
         {
            §8"%§.§^%W§.§[#l§();
         }
         this.§;m§.savePhoto(this.screenshot.clone(),this.§3#I§(),this.§%&>§);
         hide();
         this.screenshot.dispose();
         this.screenshot = null;
      }
      
      private function §3#I§() : String
      {
         return §0%§.format(§0$N§.ALBUM_DESCRIPTION,{"app_link":§8"%§.§[f§.getAppLink(Application.userProfile.getId().toString())});
      }
      
      private function §%&>§(param1:§,$2§) : void
      {
         §?$6§.§1%&§(this + ".onPhotoSaved: " + param1.success);
         if(param1.success)
         {
            this.§""K§();
            Social.§!g§.§1"S§(param1 is §4T§ ? §4T§(param1).photoUrl : "");
            §8"%§.§@1§.increase([§!$L§.§0$&§],[1]);
         }
         else
         {
            this.onError(param1);
         }
      }
      
      private function §""K§() : void
      {
         if(this.§4# § != null)
         {
            this.photo.removeChild(this.§4# §);
            this.§4# § = null;
         }
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         super.§0!j§(param1);
         this.§""K§();
      }
      
      private function onError(param1:§,$2§) : void
      {
         §[&G§.§3$5§.hide();
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§>!n§.§'!X§(param1));
         this.§""K§();
      }
      
      override public function destroy() : void
      {
         this.uploadToAlbum.destroy();
         this.§;m§ = null;
         super.destroy();
      }
   }
}

