package ru.pragmatix.wormix.objects
{
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §3#T§.Helicopter;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §9%W§.§8#p§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@$§.§`&C§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#p§
   {
      
      private static const NA:int = -1;
      
      private static const §&",§:uint = 0;
      
      private static const ACTIVE:uint = 1;
      
      private static const §[;§:uint = 2;
      
      private static const §@"H§:uint = 3;
      
      private static const §>&!§:uint = 4;
      
      private static const §[%s§:uint = 5;
      
      private static const §[!z§:uint = 6;
      
      private var storage:Array = [new Vector.<§&"T§>(0),new Vector.<§&"T§>(0),new Vector.<§+%]§>(0),new Vector.<§&"T§>(0),new Vector.<§&"T§>(0),new Vector.<§&"T§>(0),new Vector.<§&"T§>(0)];
      
      private var §7"!§:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0);
      
      private var §7!!§:Vector.<int>;
      
      public function §#p§()
      {
         §§push(this);
         var _temp_4:* = new <int>[0,0,0,0,0,0,0];
         §§pop().§7!!§ = new <int>[0,0,0,0,0,0,0];
         super();
      }
      
      public function §]$a§() : Vector.<§&"T§>
      {
         return this.storage[§&",§];
      }
      
      public function § #N§() : Vector.<§&"T§>
      {
         return this.storage[ACTIVE];
      }
      
      public function §+#b§(param1:uint) : §&"T§
      {
         var _loc2_:§&"T§ = null;
         for each(_loc2_ in this.storage[ACTIVE])
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §"L§(param1:Array) : Vector.<§&"T§>
      {
         var _loc3_:§&"T§ = null;
         var _loc4_:Class = null;
         var _loc2_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(_loc3_ in this.storage[ACTIVE])
         {
            for each(_loc4_ in param1)
            {
               if(_loc3_ is _loc4_)
               {
                  _loc2_.push(_loc3_);
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      public function §0! §(param1:§-&§) : Vector.<§&"T§>
      {
         var _loc3_:§&"T§ = null;
         var _loc2_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(_loc3_ in this.storage[ACTIVE])
         {
            if(_loc3_.§5%g§(param1))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function §1!n§() : Vector.<§+%]§>
      {
         return this.storage[§[;§];
      }
      
      public function §'#&§(param1:uint) : Vector.<§&"T§>
      {
         return this.storage[§@"H§ + param1];
      }
      
      public function § !$§() : Boolean
      {
         var _loc1_:§&"T§ = null;
         for each(_loc1_ in this.storage[§&",§])
         {
            if(_loc1_.layer == §@N§.§[!i§ && !_loc1_.stable)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §'"[§() : Vector.<§&"T§>
      {
         var _loc2_:§&"T§ = null;
         var _loc1_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(_loc2_ in this.storage[§&",§])
         {
            if(_loc2_.layer == §@N§.§[!i§ && !_loc2_.stable)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §&%k§(param1:§&"T§, param2:Boolean) : void
      {
         var _loc3_:Vector.<int> = new Vector.<int>(this.storage.length,true);
         _loc3_[§&",§] = this.§@!"§(param1,§&",§);
         _loc3_[ACTIVE] = param2 ? int(this.§@!"§(param1,ACTIVE)) : NA;
         _loc3_[§[;§] = param1 is §+%]§ ? int(this.§@!"§(param1,§[;§)) : NA;
         _loc3_[§@"H§] = NA;
         var _loc4_:uint = §>&!§;
         while(_loc4_ <= §[!z§)
         {
            _loc3_[_loc4_] = param1.physParams.§0#0§ == _loc4_ - §@"H§ ? int(this.§@!"§(param1,_loc4_)) : NA;
            _loc4_++;
         }
         this.§7"!§.push(_loc3_);
      }
      
      private function §@!"§(param1:§&"T§, param2:uint) : uint
      {
         var _loc3_:int = int(this.storage[param2].length);
         this.storage[param2].push(param1);
         ++this.§7!!§[param2];
         return _loc3_;
      }
      
      public function §2#3§(param1:int) : §&"T§
      {
         var _loc2_:§&"T§ = this.storage[§&",§][param1];
         var _loc3_:Vector.<int> = this.§7"!§[param1];
         var _loc4_:int = 0;
         while(_loc4_ < this.storage.length)
         {
            if(_loc3_[_loc4_] != -1)
            {
               this.storage[_loc4_].splice(_loc3_[_loc4_],1);
               var _loc5_:Vector.<int> = this.§7!!§;
               var _loc6_:int;
               var _loc7_:Number = _loc5_[_loc6_ = _loc4_] - 1;
               _loc5_[_loc6_] = _loc7_;
            }
            _loc4_++;
         }
         this.§8#!§(param1);
         return _loc2_;
      }
      
      private function §8#!§(param1:int) : void
      {
         var _loc4_:uint = 0;
         var _loc2_:uint = this.storage.length;
         var _loc3_:int = param1 + 1;
         while(_loc3_ < this.§7"!§.length)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               if(this.§7"!§[param1][_loc4_] >= 0 && this.§7"!§[_loc3_][_loc4_] > 0)
               {
                  --this.§7"!§[_loc3_][_loc4_];
               }
               _loc4_++;
            }
            _loc3_++;
         }
         this.§7"!§.splice(param1,1);
      }
      
      private function §3"Y§() : String
      {
         var _loc1_:String = "sizes:";
         var _loc2_:int = 0;
         while(_loc2_ < this.storage.length)
         {
            _loc1_ += " " + this.storage[_loc2_].length;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function clear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.storage.length)
         {
            this.storage[_loc1_] = null;
            _loc1_++;
         }
         this.storage = null;
      }
      
      public function §[!p§() : Boolean
      {
         var _loc1_:int = 0;
         if(this.§7!!§.length == this.storage.length)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§7!!§.length)
            {
               if(this.§7!!§[_loc1_] != this.storage[_loc1_].length)
               {
                  return false;
               }
               _loc1_++;
            }
            return true;
         }
         return false;
      }
   }
}

