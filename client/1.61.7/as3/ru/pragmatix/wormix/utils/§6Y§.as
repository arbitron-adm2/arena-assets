package ru.pragmatix.wormix.utils
{
   import §!$D§.§2$^§;
   import §!$D§.§[?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §4!K§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§2"y§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?"j§.§]!<§;
   import §?"j§.§`%+§;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import flash.display.DisplayObjectContainer;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.serialization.server.*;
   
   public class §6Y§
   {
      
      public function §6Y§()
      {
         super();
      }
      
      public static function §?#`§(param1:Vector.<§&"P§>, param2:int) : §&"P§
      {
         var _loc3_:§&"P§ = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.§@_§() == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function §>!f§(param1:Vector.<§&"P§>, param2:int) : §&"P§
      {
         var _loc3_:§&"P§ = §?#`§(param1,param2);
         if(_loc3_ == null)
         {
            _loc3_ = §&"P§.§!%4§(param2);
            param1.push(_loc3_);
         }
         return _loc3_;
      }
      
      public static function §;!B§(param1:Array, param2:UserProfile) : void
      {
         var _loc3_:int = 0;
         for each(_loc3_ in param1)
         {
            param2.§+&!§(_loc3_);
         }
      }
      
      public static function §%"@§(param1:int) : Boolean
      {
         var _loc3_:§]!<§ = null;
         var _loc2_:Object = §`%+§.§1$4§();
         for each(_loc3_ in _loc2_)
         {
            if(int(_loc3_.raceId) == param1)
            {
               return _loc3_.modify.length > 0;
            }
         }
         return false;
      }
      
      public static function §@%m§() : int
      {
         var _loc3_:§&"P§ = null;
         var _loc1_:Vector.<§&"P§> = Application.userProfile.§1$4§();
         var _loc2_:int = 0;
         for each(_loc3_ in _loc1_)
         {
            _loc2_ += _loc3_.§=#;§().length;
         }
         return _loc2_;
      }
      
      public static function §^#k§() : int
      {
         return (§8"%§.§2!d§.§=!X§ + 1) * §5&4§.§%"S§;
      }
   }
}

