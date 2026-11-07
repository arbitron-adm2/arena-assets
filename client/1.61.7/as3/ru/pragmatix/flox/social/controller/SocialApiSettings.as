package ru.pragmatix.flox.social.controller
{
   import §##y§.§9§;
   import §+$=§.§6#A§;
   import §0%z§.§+y§;
   import §1#p§.*;
   import §6"'§.§&"3§;
   import §7"Q§.§0$L§;
   import §8#o§.§1@§;
   import §9![§.§^§;
   import §?"j§.*;
   import §@!N§.§4"0§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class SocialApiSettings
   {
      
      public static const PUBLISH_TO_STREAM:SocialApiSettings = new SocialApiSettings(0,"PUBLISH_TO_STREAM","publish_actions","stream");
      
      public static const §%!S§:SocialApiSettings = new SocialApiSettings(1,"MESSAGING",null,"notifications");
      
      public static const §9#z§:SocialApiSettings = new SocialApiSettings(2,"","user_friends");
      
      public static const §@j§:SocialApiSettings = new SocialApiSettings(4,"PHOTO_CONTENT","user_photos","photos");
      
      public static const §#$n§:SocialApiSettings = new SocialApiSettings(8);
      
      public static const §^!R§:SocialApiSettings = new SocialApiSettings(16,"","publish_stream");
      
      public static const ADD_TO_MENU:SocialApiSettings = new SocialApiSettings(256);
      
      public static const §6;§:SocialApiSettings = new SocialApiSettings(512 + 8192,"","","guestbook");
      
      public static const §#$'§:SocialApiSettings = new SocialApiSettings(1024,"SET STATUS");
      
      public static const §3$9§:SocialApiSettings = new SocialApiSettings(2048);
      
      public static const §%"Y§:SocialApiSettings = new SocialApiSettings(262144);
      
      public var §!%]§:uint;
      
      public var §&#7§:String;
      
      public var §>"&§:String;
      
      public var §,K§:String;
      
      public function SocialApiSettings(param1:uint, param2:String = null, param3:String = null, param4:String = null)
      {
         super();
         this.§!%]§ = param1;
         this.§&#7§ = param2;
         this.§>"&§ = param3;
         this.§,K§ = param4;
      }
   }
}

