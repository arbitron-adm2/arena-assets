package §-@§
{
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§3%b§;
   import §"!C§.*;
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §6"'§.§9$Z§;
   import §6%2§.§'"Y§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.§0"[§;
   import config.achievements.§"!&§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3#G§
   {
      
      private static var loadedPreviews:Dictionary = new Dictionary();
      
      public function §3#G§()
      {
         super();
      }
      
      public function §2!v§(param1:String) : Bitmap
      {
         return loadedPreviews[param1] as Bitmap;
      }
      
      public function load(param1:§9$Z§, param2:Function, param3:Function) : void
      {
         var previewPath:String = null;
         var loader:Loader = null;
         var cfg:§9$Z§ = param1;
         var onComplete:Function = param2;
         var onError:Function = param3;
         if(cfg)
         {
            previewPath = §3%b§.§=<§(cfg);
            loader = new Loader();
            §""n§.single(loader.contentLoaderInfo,Event.COMPLETE,function(param1:Event, param2:String):void
            {
               var _loc3_:Bitmap = Bitmap(param1.currentTarget.content);
               loadedPreviews[param2] = _loc3_;
               onComplete(param2,_loc3_);
            },this,[cfg.name],true);
            §""n§.single(loader.contentLoaderInfo,IOErrorEvent.IO_ERROR,onError,this,[],true);
            §""n§.single(loader.contentLoaderInfo,SecurityErrorEvent.SECURITY_ERROR,onError,this,[],true);
            loader.load(new URLRequest(§8"%§.context.§]!f§() + previewPath),new LoaderContext(true));
         }
      }
   }
}

