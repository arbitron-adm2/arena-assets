package ru.pragmatix.wormix.utils
{
   import § !8§.§`!d§;
   import § !P§.*;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§+#h§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §+5§.§5"<§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §4#2§.§,%g§;
   import §4$b§.§8D§;
   import §4&F§.*;
   import §5!9§.§6$,§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §;#O§.§+%7§;
   import §<%k§.*;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §@!N§.§""L§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`%&§.§`§;
   import com.greensock.motionPaths.PathFollower;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!!"§
   {
      
      public function §!!"§()
      {
         super();
      }
      
      public static function §1&B§(param1:ByteArray, param2:String = "", param3:String = "") : void
      {
         var _loc4_:Boolean = param2 != "" ? param2 == §%%w§.§7F§.§?$X§() : true;
         var _loc5_:Boolean = §6&A§.isSecure(param1,§["u§.§'&I§);
         if(!_loc5_ || !_loc4_)
         {
            §%%w§.§7F§.§]">§(param3);
         }
      }
      
      public static function §#$>§(param1:ByteArray, param2:Array) : Array
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readByte());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §5t§(param1:ByteArray, param2:Array) : Array
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readShort());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §>"u§(param1:ByteArray, param2:Array) : Array
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readUnsignedShort());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §;"S§(param1:ByteArray, param2:Array) : Array
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readInt());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §,1§(param1:ByteArray, param2:Array) : Array
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readUTF());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §-!N§(param1:ByteArray, param2:Array) : Array
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readUnsignedInt());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §#'§(param1:ByteArray, param2:Vector.<int>) : Vector.<int>
      {
         if(param2 == null)
         {
            param2 = new Vector.<int>(0);
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readByte());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §[L§(param1:ByteArray, param2:Vector.<int>) : Vector.<int>
      {
         if(param2 == null)
         {
            param2 = new Vector.<int>(0);
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readShort());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §!!J§(param1:ByteArray, param2:Vector.<int>) : Vector.<int>
      {
         if(param2 == null)
         {
            param2 = new Vector.<int>(0);
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readInt());
            _loc4_++;
         }
         return param2;
      }
      
      public static function § "X§(param1:ByteArray, param2:Vector.<uint>) : Vector.<uint>
      {
         if(param2 == null)
         {
            param2 = new Vector.<uint>(0);
         }
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2.push(param1.readUnsignedInt());
            _loc4_++;
         }
         return param2;
      }
      
      public static function §6%i§(param1:ByteArray, param2:Array) : void
      {
         var _loc3_:uint = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeByte(_loc3_);
         }
      }
      
      public static function §^%d§(param1:ByteArray, param2:Array) : void
      {
         var _loc3_:int = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeInt(_loc3_);
         }
      }
      
      public static function §[$k§(param1:ByteArray, param2:Array) : void
      {
         var _loc3_:int = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeShort(_loc3_);
         }
      }
      
      public static function §'&1§(param1:ByteArray, param2:Array) : void
      {
         var _loc3_:String = null;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeUTF(_loc3_);
         }
      }
      
      public static function §<%e§(param1:ByteArray, param2:Array) : void
      {
         var _loc3_:uint = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeUnsignedInt(_loc3_);
         }
      }
      
      public static function §2!e§(param1:ByteArray, param2:Vector.<int>) : void
      {
         var _loc3_:uint = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeByte(_loc3_);
         }
      }
      
      public static function §8%O§(param1:ByteArray, param2:Vector.<uint>) : void
      {
         var _loc3_:uint = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeByte(_loc3_);
         }
      }
      
      public static function §-%Y§(param1:ByteArray, param2:Vector.<int>) : void
      {
         var _loc3_:int = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeInt(_loc3_);
         }
      }
      
      public static function §]!o§(param1:ByteArray, param2:Vector.<int>) : void
      {
         var _loc3_:int = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeShort(_loc3_);
         }
      }
      
      public static function §<!x§(param1:ByteArray, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeUTF(_loc3_);
         }
      }
      
      public static function §?"^§(param1:ByteArray, param2:Vector.<uint>) : void
      {
         var _loc3_:uint = 0;
         param1.writeShort(param2.length);
         for each(_loc3_ in param2)
         {
            param1.writeUnsignedInt(_loc3_);
         }
      }
      
      public static function §#"v§(param1:ByteArray) : String
      {
         var _loc5_:int = 0;
         var _loc2_:String = "";
         var _loc3_:String = "";
         param1.position = 0;
         var _loc4_:int = 1;
         while(_loc4_ < param1.length + 1)
         {
            _loc5_ = param1.readByte();
            if(_loc5_ > 20 && _loc5_ < 123)
            {
               _loc3_ += String.fromCharCode(_loc5_);
            }
            else
            {
               _loc3_ += ".";
            }
            _loc2_ += §+$p§(_loc5_) + " ";
            if(_loc4_ % 16 == 0)
            {
               _loc2_ += "\t" + _loc3_ + "\n";
               _loc3_ = "";
            }
            _loc4_++;
         }
         if(_loc4_ % 16 != 0)
         {
            while(_loc4_ % 16 != 0)
            {
               _loc2_ += "   ";
               _loc4_++;
            }
            _loc2_ += "   ";
            _loc2_ += "\t" + _loc3_ + "\n";
         }
         return _loc2_;
      }
      
      private static function §+$p§(param1:uint) : String
      {
         var _loc2_:String = "";
         var _loc3_:String = "FEDCBA";
         var _loc4_:uint = 0;
         while(_loc4_ < 2)
         {
            if((param1 & 240 >> _loc4_ * 4) >> 4 - _loc4_ * 4 > 9)
            {
               _loc2_ += _loc3_.charAt(15 - ((param1 & 240 >> _loc4_ * 4) >> 4 - _loc4_ * 4));
            }
            else
            {
               _loc2_ += String((param1 & 240 >> _loc4_ * 4) >> 4 - _loc4_ * 4);
            }
            _loc4_++;
         }
         return _loc2_;
      }
   }
}

