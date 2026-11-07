package §5!b§
{
   import § %f§.*;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§2v§;
   import §#$e§.§!a§;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §5%u§.§4"h§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §<!W§.§#&#§;
   import §<%E§.§,$2§;
   import §=!p§.§1e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §'!O§ extends §]!4§
   {
      
      public function §'!O§(param1:MovieClip)
      {
         super(param1);
      }
      
      override public function save() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Timer = null;
         var _loc4_:Function = null;
         if(Boolean(videoData) && §8"%§.§[f§.§7&@§())
         {
            _loc1_ = §0%§.format(§0$N§.VIDEO_FILE_NAME,{
               "name":opponent.getCharName(),
               "level":opponent.getLevel()
            });
            _loc2_ = §0%§.format(§0$N§.ALBUM_DESCRIPTION,{"app_link":§8"%§.§[f§.getAppLink(Application.userProfile.getId().toString())});
            _loc3_ = new Timer(300,1);
            _loc4_ = §1%"§.§]$<§(this.§,!>§,this,[_loc1_,_loc2_]);
            _loc3_.addEventListener(TimerEvent.TIMER_COMPLETE,_loc4_);
            _loc3_.start();
         }
      }
      
      private function §,!>§(param1:String, param2:String) : void
      {
         var _loc3_:Number = Number(videoData.getVideoData().length / (1024 * 1024));
         var _loc4_:Function = §1%"§.§]$<§(this.§,$k§,this,[param1,param2,this.§&-§]);
         var _loc5_:§9!Q§ = new §9!Q§(_loc3_,_loc4_,onCancelVideoAction);
         _loc5_.show();
      }
      
      private function §,$k§(param1:String, param2:String, param3:Function) : void
      {
         §[&G§.§7&A§.show();
         var _temp_1:* = new §4"h§();
         var _loc4_:§4"h§ = new §4"h§();
         _loc4_.name = param1;
         _loc4_.data = videoData.getVideoData();
         _loc4_.description = param2;
         (§8"%§.§[f§ as §!a§).§["Q§(_loc4_,param3);
      }
      
      override protected function §&-§(param1:§,$2§) : void
      {
         if(param1.success)
         {
            videoData.§,"p§();
            §8"%§.§@1§.increase([§!$L§.§]w§],[1]);
            §"%3§();
         }
         else
         {
            onError(param1);
         }
         §^%t§ = null;
      }
   }
}

