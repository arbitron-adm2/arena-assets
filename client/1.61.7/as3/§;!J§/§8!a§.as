package §;!J§
{
   import § &5§.§=#P§;
   import §+"m§.§3#[§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §5!,§.§?!P§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §8!a§ extends Event
   {
      
      public static const §!$n§:String = "onConnectionInit";
      
      public static const §8i§:String = "onWindowBlur";
      
      public static const §1%w§:String = "onWindowFocus";
      
      public static const §"T§:String = "onApplicationAdded";
      
      public static const §@J§:String = "onWallPostSave";
      
      public static const §>m§:String = "onWallPostCancel";
      
      public static const §0!^§:String = "onProfilePhotoSave";
      
      public static const §?!7§:String = "onProfilePhotoCancel";
      
      private var _data:Object = new Object();
      
      private var §"$l§:Array = new Array();
      
      public function §8!a§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
      }
      
      public function get params() : Array
      {
         return this.§"$l§;
      }
      
      public function set params(param1:Array) : void
      {
         this.§"$l§ = param1;
      }
   }
}

