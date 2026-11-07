package ru.pragmatix.wormix.utils
{
   import § !8§.§`!d§;
   import § #k§.*;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#%!§.§ §;
   import §%# §.§@a§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7$t§.§^$E§;
   import §?#g§.Race;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^!]§.MineSetUpEvent;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §]V§
   {
      
      public function §]V§()
      {
         super();
      }
      
      public static function §7#p§(param1:int, param2:UserProfile) : void
      {
         var _loc5_:§`!d§ = null;
         var _loc6_:Boolean = false;
         var _loc3_:§`!d§ = param2.getRace();
         var _loc4_:Vector.<§`!d§> = §;$F§(param1);
         for each(_loc5_ in _loc4_)
         {
            param2.§&$g§(_loc5_,true,false);
         }
         _loc6_ = _loc4_.indexOf(_loc3_) > -1;
         param2.§&$g§(_loc3_,true,false);
         if(!_loc6_)
         {
            param2.§;$F§().splice(param2.§;$F§().indexOf(_loc3_),1);
         }
      }
      
      public static function §;$F§(param1:int) : Vector.<§`!d§>
      {
         var _loc3_:Race = null;
         var _loc4_:int = 0;
         var _loc2_:Vector.<§`!d§> = new Vector.<§`!d§>(0);
         for each(_loc3_ in Race.§1!l§)
         {
            _loc4_ = int(_loc3_.getId());
            if(§7!C§(param1,_loc4_))
            {
               _loc2_.push(_loc3_.§]!D§());
            }
         }
         return _loc2_;
      }
      
      public static function §7!C§(param1:int, param2:int) : Boolean
      {
         return (param1 & 1 << param2) != 0;
      }
      
      public static function § $l§(param1:int, param2:UserProfile) : Boolean
      {
         var _loc4_:§`!d§ = null;
         var _loc3_:Vector.<§`!d§> = param2.§;$F§();
         for each(_loc4_ in _loc3_)
         {
            if(param1 == _loc4_.getId())
            {
               return true;
            }
         }
         return false;
      }
   }
}

