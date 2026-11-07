package §@!N§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §"!C§.*;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#"V§.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&!@§.§5"`§;
   import §&"c§.§!!q§;
   import §&#h§.§-"F§;
   import §&#h§.§?B§;
   import §'!Z§.§6S§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1&-§.§'%3§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8$Z§.§9!&§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §[%Z§
   {
      
      private static var _instance:§[%Z§;
      
      private var § 8§:int;
      
      private var §,!?§:int;
      
      private var frameRate:Number;
      
      private var duration:Number;
      
      private const §<!H§:int = 32;
      
      private const §&$h§:int = 32;
      
      private var §-!w§:uint = 0;
      
      private var §^#h§:int = 0;
      
      private var videoData:ByteArray;
      
      public function §[%Z§()
      {
         super();
         this.videoData = new ByteArray();
      }
      
      public static function getInstance() : §[%Z§
      {
         if(§[%Z§._instance == null)
         {
            §[%Z§._instance = new §[%Z§();
         }
         return §[%Z§._instance;
      }
      
      public function create(param1:int, param2:int, param3:Number, param4:Number = 0) : void
      {
         this.§ 8§ = param1;
         this.§,!?§ = param2;
         this.frameRate = param3;
         this.duration = param4;
         this.videoData.writeBytes(this.header());
         this.videoData.writeUnsignedInt(this.§-!w§);
         this.videoData.writeBytes(this.§>$2§());
      }
      
      public function §-!r§(param1:BitmapData) : void
      {
         this.videoData.writeUnsignedInt(this.§-!w§);
         this.§^&2§(param1);
      }
      
      private function header() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeByte(70);
         _loc1_.writeByte(76);
         _loc1_.writeByte(86);
         _loc1_.writeByte(1);
         _loc1_.writeByte(1);
         _loc1_.writeUnsignedInt(9);
         return _loc1_;
      }
      
      private function §^&2§(param1:BitmapData) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:ByteArray = this.§4"Q§(param1);
         var _loc4_:uint = uint(1000 / this.frameRate * this.§^#h§++);
         _loc2_.writeByte(9);
         this.writeUI24(_loc2_,_loc3_.length);
         this.writeUI24(_loc2_,_loc4_);
         _loc2_.writeByte(0);
         this.writeUI24(_loc2_,0);
         _loc2_.writeBytes(_loc3_);
         this.§-!w§ = _loc2_.length;
         this.videoData.writeBytes(_loc2_);
      }
      
      private function §4"Q§(param1:BitmapData) : ByteArray
      {
         var _loc8_:int = 0;
         var _loc9_:ByteArray = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:uint = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeByte(19);
         this.writeUI4_12(_loc2_,int(this.§<!H§ / 16) - 1,this.§ 8§);
         this.writeUI4_12(_loc2_,int(this.§&$h§ / 16) - 1,this.§,!?§);
         var _loc3_:int = int(this.§,!?§ / this.§&$h§);
         var _loc4_:int = this.§,!?§ % this.§&$h§;
         if(_loc4_ > 0)
         {
            _loc3_ += 1;
         }
         var _loc5_:int = int(this.§ 8§ / this.§<!H§);
         var _loc6_:int = this.§ 8§ % this.§<!H§;
         if(_loc6_ > 0)
         {
            _loc5_ += 1;
         }
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_)
         {
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               _loc9_ = new ByteArray();
               _loc10_ = this.§&$h§;
               if(_loc4_ > 0 && _loc7_ + 1 == _loc3_)
               {
                  _loc10_ = _loc4_;
               }
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  _loc12_ = this.§<!H§;
                  if(_loc6_ > 0 && _loc8_ + 1 == _loc5_)
                  {
                     _loc12_ = _loc6_;
                  }
                  _loc13_ = 0;
                  while(_loc13_ < _loc12_)
                  {
                     _loc14_ = _loc8_ * this.§<!H§ + _loc13_;
                     _loc15_ = this.§,!?§ - (_loc7_ * this.§&$h§ + _loc11_);
                     _loc16_ = param1.getPixel(_loc14_,_loc15_);
                     _loc9_.writeByte(_loc16_ & 0xFF);
                     _loc9_.writeByte(_loc16_ >> 8 & 0xFF);
                     _loc9_.writeByte(_loc16_ >> 16);
                     _loc13_++;
                  }
                  _loc11_++;
               }
               _loc9_.compress();
               this.writeUI16(_loc2_,_loc9_.length);
               _loc2_.writeBytes(_loc9_);
               _loc8_++;
            }
            _loc7_++;
         }
         param1.dispose();
         return _loc2_;
      }
      
      private function §>$2§() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         var _loc2_:ByteArray = this.§!+§();
         _loc1_.writeByte(18);
         this.writeUI24(_loc1_,_loc2_.length);
         this.writeUI24(_loc1_,0);
         _loc1_.writeByte(0);
         this.writeUI24(_loc1_,0);
         _loc1_.writeBytes(_loc2_);
         this.§-!w§ = _loc1_.length;
         return _loc1_;
      }
      
      private function §!+§() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeByte(2);
         this.writeUI16(_loc1_,"onMetaData".length);
         _loc1_.writeUTFBytes("onMetaData");
         _loc1_.writeByte(8);
         _loc1_.writeUnsignedInt(7);
         if(this.duration > 0)
         {
            this.writeUI16(_loc1_,"duration".length);
            _loc1_.writeUTFBytes("duration");
            _loc1_.writeByte(0);
            _loc1_.writeDouble(this.duration);
         }
         this.writeUI16(_loc1_,"width".length);
         _loc1_.writeUTFBytes("width");
         _loc1_.writeByte(0);
         _loc1_.writeDouble(this.§ 8§);
         this.writeUI16(_loc1_,"height".length);
         _loc1_.writeUTFBytes("height");
         _loc1_.writeByte(0);
         _loc1_.writeDouble(this.§,!?§);
         this.writeUI16(_loc1_,"framerate".length);
         _loc1_.writeUTFBytes("framerate");
         _loc1_.writeByte(0);
         _loc1_.writeDouble(this.frameRate);
         this.writeUI16(_loc1_,"videocodecid".length);
         _loc1_.writeUTFBytes("videocodecid");
         _loc1_.writeByte(0);
         _loc1_.writeDouble(3);
         this.writeUI16(_loc1_,"canSeekToEnd".length);
         _loc1_.writeUTFBytes("canSeekToEnd");
         _loc1_.writeByte(1);
         _loc1_.writeByte(int(true));
         var _loc2_:String = "By Wormix";
         this.writeUI16(_loc1_,"metadatacreator".length);
         _loc1_.writeUTFBytes("metadatacreator");
         _loc1_.writeByte(2);
         this.writeUI16(_loc1_,_loc2_.length);
         _loc1_.writeUTFBytes(_loc2_);
         this.writeUI24(_loc1_,9);
         return _loc1_;
      }
      
      private function writeUI24(param1:*, param2:uint) : void
      {
         var _loc3_:int = param2 >> 16;
         var _loc4_:int = param2 >> 8 & 0xFF;
         var _loc5_:int = param2 & 0xFF;
         param1.writeByte(_loc3_);
         param1.writeByte(_loc4_);
         param1.writeByte(_loc5_);
      }
      
      private function writeUI16(param1:*, param2:uint) : void
      {
         param1.writeByte(param2 >> 8);
         param1.writeByte(param2 & 0xFF);
      }
      
      private function writeUI4_12(param1:*, param2:uint, param3:uint) : void
      {
         var _loc4_:int = param2 << 4;
         var _loc5_:int = param3 >> 8;
         var _loc6_:int = _loc4_ + _loc5_;
         var _loc7_:int = param3 & 0xFF;
         param1.writeByte(_loc6_);
         param1.writeByte(_loc7_);
      }
      
      public function §,"p§() : void
      {
         this.videoData = new ByteArray();
      }
      
      public function getVideoData() : ByteArray
      {
         return this.videoData;
      }
   }
}

