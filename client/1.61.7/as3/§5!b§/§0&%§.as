package §5!b§
{
   import §!L§.§+"'§;
   import §#",§.§+!h§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§;%q§;
   import §+$=§.§6#A§;
   import §-!U§.§&%j§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§6%k§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §0&%§ extends §]!4§
   {
      
      public function §0&%§(param1:MovieClip)
      {
         super(param1);
      }
      
      override public function save() : void
      {
         var fileName:String = null;
         var descr:String = null;
         if(videoData)
         {
            if(§8"%§.§[f§.§7&@§())
            {
               fileName = §0%§.format(§0$N§.VIDEO_FILE_NAME,{
                  "name":opponent.getCharName(),
                  "level":opponent.getLevel()
               });
               descr = §0%§.format(§0$N§.ALBUM_DESCRIPTION,{"app_link":§8"%§.§[f§.getAppLink(Application.userProfile.getId().toString())});
               §8"%§.§[f§.§,%p§(fileName,descr,this.§4!P§);
            }
            else if(§8"%§.§[f§.§;%f§())
            {
               Social.§>#w§.§1##§(function(param1:Object):void
               {
                  var _loc2_:Number = NaN;
                  var _loc3_:§9!Q§ = null;
                  if(param1.authKey != "" && param1.userName != "")
                  {
                     log.warn("isYouTubeAvailable.authKey = " + param1.authKey + " , isYouTubeAvailable.userName = " + param1.userName);
                     _loc2_ = Number(videoData.getVideoData().length / (1024 * 1024));
                     _loc3_ = new §9!Q§(_loc2_,onSaveYouTubeVideoAction,onCancelVideoAction);
                     _loc3_.show();
                  }
               });
            }
         }
      }
      
      private function §4!P§(param1:§;%q§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§9!Q§ = null;
         if(param1.success)
         {
            §^%t§ = param1;
            _loc2_ = Number(videoData.getVideoData().length / (1024 * 1024));
            _loc3_ = new §9!Q§(_loc2_,this.§,$k§,onCancelVideoAction);
            _loc3_.show();
         }
         else
         {
            onError(param1);
         }
      }
      
      private function §,$k§() : void
      {
         §[&G§.§7&A§.show();
         §8"%§.§[f§.§;&5§(§^%t§.uploadServer,videoData.getVideoData(),this.§&-§);
      }
      
      private function onSaveYouTubeVideoAction() : void
      {
         var _loc1_:URLRequest = this.§!%3§(videoData.getVideoData(),Social.§>#w§.§%!v§().authKey,"http://uploads.gdata.youtube.com/feeds/api/users/" + Social.§>#w§.§%!v§().userName + "/uploads");
         loader = new URLLoader();
         loader.dataFormat = URLLoaderDataFormat.BINARY;
         loader.addEventListener(Event.COMPLETE,§"%%§);
         loader.load(_loc1_);
      }
      
      public function §!%3§(param1:ByteArray, param2:String, param3:String) : URLRequest
      {
         var _loc4_:String = "OKSANA-SHEVCHENKO";
         var _loc5_:XML = <xmlData>
                <?xml version="1.0"?>
                    <entry xmlns="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/" xmlns:yt="http://gdata.youtube.com/schemas/2007">
                        <media:group>
                            <media:title type="plain">Wormix video</media:title>
                            <media:description type="plain">
                            My best moments in wormix
                            </media:description>
                            <media:category scheme="http://gdata.youtube.com/schemas/2007/categories.cat">People</media:category>
                            <media:keywords>Wormix</media:keywords>
                        </media:group>
                    </entry>
                </xmlData>;
         var _loc6_:* = "Host: uploads.gdata.youtube.com\r\n";
         var _loc7_:* = "Authorization: GoogleLogin auth=" + param2 + "\r\n" + "GData-Version: 2\r\n";
         var _loc8_:* = "X-GData-Key: key=AI39si4lN_ueBLSVSKHySPk8G9pxVkRKcY_sNK_yUzKNvtl_pUolFpusVn3DHAClhD8XKKouAcs71mOQbWJWBvMLaZtimEfgHQ\r\n";
         var _loc9_:* = "Slug: wormix.mpeg\r\n" + "Content-Type: multipart/related; boundary=\"" + _loc4_ + "\"\r\n";
         var _loc10_:* = "Connection: close\r\n\r\n";
         var _loc11_:* = "--" + _loc4_ + "\r\n" + "Content-Type: application/atom+xml; charset=UTF-8\r\n\r\n" + _loc5_ + "\r\n--" + _loc4_ + "\r\n";
         var _loc12_:* = "Content-Type: video/mpeg\r\n";
         var _loc13_:* = "Content-Transfer-Encoding: binary\r\n\r\n";
         var _loc14_:* = "--" + _loc4_ + "--";
         log.warn(String(_loc6_),"VideoMaker");
         log.warn(String(_loc7_),"VideoMaker");
         log.warn(String(_loc8_),"VideoMaker");
         log.warn(String(_loc9_),"VideoMaker");
         log.warn(String(_loc10_),"VideoMaker");
         log.warn(String(_loc11_),"VideoMaker");
         log.warn(String(_loc12_),"VideoMaker");
         log.warn(String(_loc13_),"VideoMaker");
         log.warn(String(_loc14_),"VideoMaker");
         var _loc15_:ByteArray = new ByteArray();
         _loc15_.writeMultiByte(_loc6_,"ascii");
         var _loc16_:ByteArray = new ByteArray();
         _loc16_.writeMultiByte(_loc7_,"ascii");
         var _loc17_:ByteArray = new ByteArray();
         _loc17_.writeMultiByte(_loc8_,"ascii");
         var _loc18_:ByteArray = new ByteArray();
         _loc18_.writeMultiByte(_loc9_,"ascii");
         var _loc19_:ByteArray = new ByteArray();
         _loc19_.writeMultiByte(_loc10_,"ascii");
         var _loc20_:ByteArray = new ByteArray();
         _loc20_.writeMultiByte(_loc11_,"ascii");
         var _loc21_:ByteArray = new ByteArray();
         _loc21_.writeMultiByte(_loc12_,"ascii");
         var _loc22_:ByteArray = new ByteArray();
         _loc22_.writeMultiByte(_loc13_,"ascii");
         var _loc23_:ByteArray = new ByteArray();
         _loc23_.writeMultiByte(_loc14_,"ascii");
         var _loc24_:ByteArray = new ByteArray();
         _loc24_.writeBytes(_loc15_,0,_loc15_.length);
         _loc24_.writeBytes(_loc16_,0,_loc16_.length);
         _loc24_.writeBytes(_loc17_,0,_loc17_.length);
         _loc24_.writeBytes(_loc18_,0,_loc18_.length);
         _loc24_.writeBytes(_loc19_,0,_loc19_.length);
         _loc24_.writeBytes(_loc20_,0,_loc20_.length);
         _loc24_.writeBytes(_loc21_,0,_loc21_.length);
         _loc24_.writeBytes(_loc22_,0,_loc22_.length);
         _loc24_.writeBytes(param1);
         _loc24_.writeBytes(_loc23_,0,_loc23_.length);
         request = new URLRequest(param3);
         request.data = _loc24_;
         request.method = URLRequestMethod.POST;
         request.contentType = "multipart/related; boundary=\"" + _loc4_ + "\"";
         log.warn("Авторизационный код и url = " + param2 + " = " + param3 + "\r\n\r\n","VideoMaker");
         return request;
      }
      
      override protected function §&-§(param1:§,$2§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Vector.<UserProfile> = null;
         var _loc4_:UserProfile = null;
         if(param1.success)
         {
            videoData.§,"p§();
            §8"%§.§@1§.increase([§!$L§.§]w§],[1]);
            _loc2_ = [];
            _loc3_ = Application.userProfile.§7$F§();
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.§"%D§() != Application.userProfile.§"%D§())
               {
                  _loc2_.push(_loc4_.§"%D§());
               }
            }
            §]s§(§8"%§.§[f§).videoPutTag(Application.userProfile.getId().toString(),§^%t§.vid,_loc2_,§"%3§);
         }
         else
         {
            onError(param1);
         }
         §^%t§ = null;
      }
   }
}

