package ru.pragmatix.wormix.utils
{
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §-"N§.§+#R§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#x§.*;
   import §3#T§.§;#Q§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<!W§.§!"+§;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[$<§.§"#"§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0$c§
   {
      
      public function §0$c§()
      {
         super();
      }
      
      public static function §5G§(param1:UserProfile) : int
      {
         var _loc3_:UserProfile = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"]§())
         {
            if(_loc3_.isActive())
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public static function §1!B§(param1:UserProfile) : int
      {
         var _loc3_:UserProfile = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"]§())
         {
            if(_loc3_.isActive() && §&"y§(_loc3_.§4!^§()))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public static function §'%=§(param1:UserProfile, param2:Boolean) : Vector.<UserProfile>
      {
         var _loc4_:UserProfile = null;
         var _loc3_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc4_ in param1.§"]§())
         {
            if(param2 == _loc4_.isActive())
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public static function §^%_§(param1:Array, param2:UserProfile) : Array
      {
         var _loc3_:int = param2.getId();
         var _loc4_:* = int(param1.length - 1);
         while(_loc4_ > -1)
         {
            if(UserProfile(param1[_loc4_]).getId() == _loc3_)
            {
               param1.splice(_loc4_,1);
               break;
            }
            _loc4_--;
         }
         return param1;
      }
      
      public static function §-"=§(param1:UserProfile) : Vector.<int>
      {
         var _loc3_:UserProfile = null;
         var _loc2_:Vector.<int> = new Vector.<int>(0);
         for each(_loc3_ in param1.§"]§())
         {
            _loc2_.push(_loc3_.getId());
         }
         return _loc2_;
      }
      
      public static function §&"y§(param1:int) : Boolean
      {
         return param1 == §2=§.§"!$§ || param1 == §2=§.§2f§ || param1 == §2=§.§^%&§;
      }
      
      public static function §[%f§(param1:UserProfile, param2:Boolean = false) : int
      {
         var _loc4_:UserProfile = null;
         var _loc3_:int = 0;
         for each(_loc4_ in param1.§"]§())
         {
            if(§&"y§(_loc4_.§4!^§()))
            {
               if(!param2 || param2 && _loc4_.isActive())
               {
                  _loc3_++;
               }
            }
         }
         return _loc3_;
      }
      
      public static function §6%s§() : Boolean
      {
         return §;$9§(Application.userProfile).length < §;#C§(Application.userProfile);
      }
      
      public static function §;#C§(param1:UserProfile) : int
      {
         return Math.max(param1.§%$3§() + 1,1);
      }
      
      public static function §;$9§(param1:UserProfile) : Vector.<UserProfile>
      {
         var _loc3_:UserProfile = null;
         var _loc2_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc3_ in param1.§"]§())
         {
            if(§&"y§(_loc3_.§4!^§()))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function §;&>§(param1:int, param2:UserProfile, param3:uint, param4:§+%7§ = null) : void
      {
         param4 ||= §4&A§.§'![§(param2.getId());
         if(param1 == §2=§.MERCENARY && param4.§[$j§)
         {
            if(param2.getLevel() != param3)
            {
               param2.setLevel(param3 + 1);
               param2.§1G§.§@">§(param3);
            }
         }
      }
      
      public static function §2!X§(param1:UserProfile) : void
      {
         var _loc3_:UserProfile = null;
         var _loc2_:int = param1.getLevel();
         for each(_loc3_ in param1.§"]§())
         {
            §;&>§(_loc3_.§4!^§(),_loc3_,_loc2_);
         }
      }
      
      public static function §0,§(param1:UserProfile, param2:int) : Object
      {
         var _loc7_:UserProfile = null;
         var _loc3_:Vector.<UserProfile> = param1.§7$F§();
         var _loc4_:* = int(_loc3_.length);
         var _loc5_:int = param2;
         var _loc6_:Boolean = false;
         for each(_loc7_ in _loc3_)
         {
            if(_loc7_.§4!^§() == §2=§.§"!$§)
            {
               _loc5_++;
               _loc4_--;
               _loc6_ = true;
               break;
            }
         }
         return {
            "ready":_loc4_ > 1,
            "teamNeed":_loc5_,
            "teamLength":_loc4_
         };
      }
   }
}

