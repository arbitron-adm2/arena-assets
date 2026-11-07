package §0%j§
{
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §+&<§.*;
   import §-!U§.*;
   import §0%z§.§&%&§;
   import §<$q§.§?!d§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §@!N§.§3!3§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §#!U§ extends Event
   {
      
      public static const §7"$§:String = "common.permissionChanged";
      
      public static const §^$c§:String = "app.friendsInvitation";
      
      public static const §>0§:String = "app.friendsRequest";
      
      public static const §7!`§:String = "app.review";
      
      public static const §8!p§:String = "app.incomingPayment";
      
      public static const §]!_§:String = "app.paymentDialogStatus";
      
      public static const §=%W§:String = "common.upload";
      
      public static const §'#>§:String = "common.createAlbum";
      
      public static const §[W§:String = "common.guestbookPublish";
      
      public static const §5!G§:String = "common.streamPublish";
      
      public var data:Object;
      
      public function §#!U§(param1:String, param2:Object)
      {
         super(param1);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §#!U§(type,this.data) as Event;
      }
   }
}

