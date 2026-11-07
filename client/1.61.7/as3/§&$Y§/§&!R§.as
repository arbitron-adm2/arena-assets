package §&$Y§
{
   import §!!i§.§@&&§;
   import §%"1§.§@%;§;
   import §'$j§.§'-§;
   import §+%S§.§%!%§;
   import §0%[§.§""n§;
   import §0%j§.§#!U§;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §&!R§
   {
      
      private var isYouTubeAvailable:Object = {
         "authKey":"",
         "userName":""
      };
      
      public function §&!R§()
      {
         super();
      }
      
      private function §9#L§(param1:Event, param2:Function) : void
      {
         var _loc3_:URLLoader = URLLoader(param1.target);
         var _loc4_:Array = _loc3_.data.split("\n");
         var _loc5_:String = _loc4_[0].split("=")[1];
         var _loc6_:String = _loc4_[1].split("=")[1];
         if(_loc5_ != "" && _loc6_ != "")
         {
            this.isYouTubeAvailable.authKey = _loc5_;
            this.isYouTubeAvailable.userName = _loc6_;
         }
         param2(this.isYouTubeAvailable);
      }
      
      public function §%!v§() : Object
      {
         return this.isYouTubeAvailable;
      }
      
      public function §1##§(param1:Function) : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest("https://www.google.com/youtube/accounts/ClientLogin");
         var _loc4_:URLVariables = new URLVariables();
         §""n§.single(_loc2_,Event.COMPLETE,this.§9#L§,this,[param1],true);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/x-www-form-urlencoded";
         _loc4_.Email = "wormix.video@gmail.com";
         _loc4_.Passwd = "youtubebbaak507";
         _loc4_.service = "youtube";
         _loc4_.source = "Wormix";
         _loc3_.data = _loc4_;
         _loc2_.load(_loc3_);
      }
   }
}

