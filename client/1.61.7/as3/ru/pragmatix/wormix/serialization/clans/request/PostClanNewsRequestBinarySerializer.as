package ru.pragmatix.wormix.serialization.clans.request
{
   import §0%[§.§1%"§;
   import §<%E§.§4T§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   
   use namespace gestouch_internal;
   
   public class PostClanNewsRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function PostClanNewsRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:PostClanNewsRequest = PostClanNewsRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTF(_loc2_.text);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.POST_NEWS_REQUEST;
      }
   }
}

