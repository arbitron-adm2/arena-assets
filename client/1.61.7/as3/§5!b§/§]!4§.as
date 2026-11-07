package §5!b§
{
   import § #g§.*;
   import § #m§.§;#^§;
   import § $q§.§-%f§;
   import § $q§.§3U§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§6$3§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.§7$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§;%q§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§="_§;
   import §+%S§.§[&;§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§##l§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#T§.§+&F§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4%_§.§3§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §4u§.ReagentHint;
   import §5!,§.§9$h§;
   import §5$]§.§3& §;
   import §6"'§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#o§.§#$s§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§'$g§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §?!E§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!N§.§[%Z§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §]$J§.§#"s§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.*;
   import org.gestouch.core.ITouchHitTester;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]!4§ extends §`&-§ implements §1!r§
   {
      
      protected static var log:§&`§ = new §&`§(§]!4§);
      
      private var size:TextField;
      
      protected var videoData:§[%Z§;
      
      private var lastFrame:BitmapData;
      
      private var §'#a§:uint = 0;
      
      private var §,#=§:MovieClip;
      
      public var §^%t§:§;%q§;
      
      private var §-#u§:§&$d§;
      
      private const §4P§:uint = 0;
      
      private const §2%x§:uint = 1;
      
      private const §#$o§:uint = 2;
      
      private const §[&,§:uint = 3;
      
      private const §8$4§:uint = 4;
      
      private const §+%B§:uint = 320;
      
      private const §4$y§:uint = 240;
      
      private var state:uint;
      
      private var sizeBlock:MovieClip;
      
      protected var opponent:UserProfile;
      
      private var §;$4§:§4#_§;
      
      protected var loader:URLLoader;
      
      protected var request:URLRequest;
      
      public function §]!4§(param1:MovieClip)
      {
         super(param1);
         this.sizeBlock = getChildByName("sizeBlock") as MovieClip;
         this.sizeBlock.visible = false;
         this.size = this.sizeBlock.getChildByName("size") as TextField;
         this.§,#=§ = getChildByName("videoCam") as MovieClip;
         this.§;$4§ = new §4#_§(this.§,#=§.getChildAt(0));
         this.state = this.§4P§;
         §0A§(MouseEvent.CLICK,this.§^#9§);
      }
      
      private function §^#9§(param1:MouseEvent) : void
      {
         this.§[$7§();
      }
      
      public function §1;§() : Boolean
      {
         return this.§-#u§ != null && this.§-#u§.isShown();
      }
      
      public function §[$7§() : void
      {
         switch(this.state)
         {
            case this.§4P§:
               this.§-#u§ = new §&$d§(function():void
               {
                  start();
               });
               this.§-#u§.show();
               break;
            case this.§2%x§:
               this.start();
               break;
            case this.§#$o§:
               this.stop();
               break;
            case this.§[&,§:
               this.record();
         }
      }
      
      private function start() : void
      {
         this.opponent = §8"%§.§?!W§.§]"o§();
         if(§8"%§.§[f§.§7&@§())
         {
            §8"%§.§[f§.changeSettingsIfNeeded(SocialApiSettings.§^!R§,function():void
            {
               startRecord();
            });
         }
         else
         {
            this.startRecord();
         }
      }
      
      private function startRecord() : void
      {
         §^"P§(Application.instance,Event.ENTER_FRAME,this.§>#C§);
         this.sizeBlock.visible = true;
         this.§,#=§.gotoAndStop("rec");
         this.videoData = §[%Z§.getInstance();
         this.videoData.create(300,230,7,5);
         this.state = this.§#$o§;
      }
      
      private function stop() : void
      {
         this.§,#=§.gotoAndStop("stop");
         this.state = this.§[&,§;
      }
      
      private function record() : void
      {
         this.§,#=§.gotoAndStop("rec");
         this.state = this.§#$o§;
      }
      
      public function §'!f§() : void
      {
         this.§,#=§.gotoAndStop("max");
         this.state = this.§8$4§;
      }
      
      private function §>#C§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.state == this.§#$o§)
         {
            ++this.§'#a§;
            if(this.§'#a§ % 5 == 2)
            {
               this.lastFrame = §##l§.§<%`§(Application.instance,this.§+%B§,this.§4$y§);
            }
            else if(this.§'#a§ % 5 == 3)
            {
               this.videoData.§-!r§(this.lastFrame);
               _loc2_ = Number(this.videoData.getVideoData().length / (1024 * 1024));
               if(_loc2_ <= 15)
               {
                  this.size.text = _loc2_.toFixed(2) + " Mb";
               }
               else
               {
                  this.size.htmlText = "<font color=\'#FF623B\'><b>" + _loc2_.toFixed(2) + " Mb</b></font>";
                  this.§'!f§();
               }
            }
         }
      }
      
      protected function onError(param1:§,$2§) : void
      {
         this.videoData.§,"p§();
         §[&G§.§7&A§.hide();
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§>!n§.§'!X§(param1));
      }
      
      protected function §&-§(param1:§,$2§) : void
      {
      }
      
      protected function onCancelVideoAction() : void
      {
         this.videoData.§,"p§();
      }
      
      protected function §"%3§(param1:§,$2§ = null) : void
      {
         §[&G§.§7&A§.hide();
         §,#W§.§[#r§(§0$N§.VIDEO_TITLE,§0$N§.VIDEO_SAVE_SUCCESS,§,#W§.§6!m§);
      }
      
      protected function §"%%§(param1:Event) : void
      {
         param1.target.removeEventListener(Event.COMPLETE,this.§"%%§);
         var _loc2_:URLLoader = URLLoader(param1.target);
         log.warn("loader = " + new XML(_loc2_.data),"VideoMaker");
      }
      
      public function save() : void
      {
         throw new Error("Abstract method call!");
      }
      
      public function §<&#§() : Boolean
      {
         return Boolean(this.videoData) && §8"%§.§[f§.§7&@§();
      }
      
      override public function destroy() : void
      {
         this.stop();
         if(this.§-#u§ != null && this.§-#u§.isShown())
         {
            this.§-#u§.hide();
         }
         this.§-#u§ = null;
         super.destroy();
      }
      
      public function §,"p§() : void
      {
         if(this.videoData)
         {
            this.videoData.§,"p§();
         }
      }
      
      override public function setQtip(param1:String, param2:§;#^§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         this.§;$4§.setQtip(param1,param2,param3,param4);
      }
   }
}

