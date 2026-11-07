package §!L§
{
   import § !P§.§<#q§;
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import § %f§.*;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §3#a§.§-#M§;
   import §4#2§.*;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §^!]§.TeleportEvent;
   import §^#[§.§&$2§;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetProfiles;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §`#p§
   {
      
      public static var §!!D§:Dictionary = new Dictionary();
      
      public function §`#p§()
      {
         super();
      }
      
      public static function §#&2§(param1:Array, param2:Function, param3:Boolean = false) : void
      {
         var _loc6_:GetProfiles = null;
         var _loc4_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc5_:Vector.<String> = new Vector.<String>(0);
         §;",§(param1,_loc4_,_loc5_);
         if(_loc5_.length == 0)
         {
            param2(_loc4_);
         }
         else
         {
            if(param3 && _loc4_.length > 0)
            {
               param2(_loc4_);
            }
            _loc6_ = new GetProfiles();
            _loc6_.sessionKey = §%%w§.§7F§.§?$X§();
            _loc6_.ids = _loc5_;
            §^"5§.single(§%%w§.§7F§,ProfilesResult,§%#R§,{},[_loc4_,param2,param3],true);
            §%%w§.§,U§(_loc6_);
         }
      }
      
      public static function §;",§(param1:Array, param2:Vector.<UserProfile>, param3:Vector.<String>) : void
      {
         var _loc4_:String = null;
         for each(_loc4_ in param1)
         {
            if(§!!D§[_loc4_])
            {
               param2.push(§!!D§[_loc4_]);
            }
            else
            {
               param3.push(_loc4_);
            }
         }
      }
      
      public static function addProfilesToStore(param1:Array) : void
      {
         var _loc2_:UserProfile = null;
         for each(_loc2_ in param1)
         {
            §!!D§[_loc2_.§"%D§()] = _loc2_;
         }
      }
      
      private static function §%#R§(param1:§9$v§, param2:Vector.<UserProfile>, param3:Function, param4:Boolean) : void
      {
         var userSocialDataLoader:§7%0§;
         var message:ProfilesResult = null;
         var e:§9$v§ = param1;
         var existingProfiles:Vector.<UserProfile> = param2;
         var callback:Function = param3;
         var returnOnlyNewProfiles:Boolean = param4;
         message = ProfilesResult(e.message);
         var profiles:Array = §4! §.§9%I§(message.userProfileStructures,true);
         addProfilesToStore(profiles);
         userSocialDataLoader = new §7%0§();
         userSocialDataLoader.§%$N§(profiles,function(param1:Array, param2:Boolean):void
         {
            var _loc3_:Vector.<UserProfile> = null;
            var _loc4_:UserProfile = null;
            if(param2)
            {
               addProfilesToStore(param1);
               _loc3_ = new Vector.<UserProfile>(0);
               for each(_loc4_ in param1)
               {
                  _loc3_.push(_loc4_);
               }
               if(returnOnlyNewProfiles)
               {
                  callback(_loc3_);
               }
               else
               {
                  callback(existingProfiles.concat(_loc3_));
               }
            }
            else
            {
               callback(new Vector.<UserProfile>(0));
            }
         });
      }
      
      public static function §"!6§(param1:String) : UserProfile
      {
         return §!!D§[param1];
      }
      
      public static function § !§(param1:int) : UserProfile
      {
         var _loc2_:UserProfile = null;
         for each(_loc2_ in §!!D§)
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

