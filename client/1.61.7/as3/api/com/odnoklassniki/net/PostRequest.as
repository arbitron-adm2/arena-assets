package api.com.odnoklassniki.net
{
   import § "L§.§`#r§;
   import §!$d§.§<$c§;
   import §"$+§.*;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§[&$§;
   import §'"N§.§4&5§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+%S§.§]&§;
   import §,"v§.§9%d§;
   import §-"N§.*;
   import §-@§.§0"e§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2"L§.§,!t§;
   import §3#a§.§-#M§;
   import §3%J§.SpecialDealWindow;
   import §4!x§.§@& §;
   import §7!B§.§&"T§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<!^§.§]#u§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=$#§.*;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§,! §;
   import §@!i§.§5%8§;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`#x§.§[$I§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   
   public class PostRequest
   {
      
      public var boundary:String = "-----";
      
      protected var postData:ByteArray;
      
      public function PostRequest()
      {
         super();
         this.createPostData();
      }
      
      public function createPostData() : void
      {
         this.postData = new ByteArray();
         this.postData.endian = Endian.BIG_ENDIAN;
      }
      
      public function writePostData(param1:String, param2:String) : void
      {
         var _loc3_:String = null;
         this.writeBoundary();
         this.writeLineBreak();
         _loc3_ = "Content-Disposition: form-data; name=\"" + param1 + "\"";
         var _loc4_:uint = uint(_loc3_.length);
         var _loc5_:Number = 0;
         while(_loc5_ < _loc4_)
         {
            this.postData.writeByte(_loc3_.charCodeAt(_loc5_));
            _loc5_++;
         }
         this.writeLineBreak();
         this.writeLineBreak();
         this.postData.writeUTFBytes(param2);
         this.writeLineBreak();
      }
      
      public function writeFileData(param1:String, param2:ByteArray, param3:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         this.writeBoundary();
         this.writeLineBreak();
         _loc4_ = "Content-Disposition: form-data; name=\"" + param1 + "\"; filename=\"";
         _loc5_ = _loc4_.length;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            this.postData.writeByte(_loc4_.charCodeAt(_loc6_));
            _loc6_++;
         }
         this.postData.writeUTFBytes(param1 + ".JPG");
         this.writeQuotationMark();
         this.writeLineBreak();
         _loc4_ = param3;
         _loc5_ = _loc4_.length;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            this.postData.writeByte(_loc4_.charCodeAt(_loc6_));
            _loc6_++;
         }
         this.writeLineBreak();
         this.writeLineBreak();
         param2.position = 0;
         this.postData.writeBytes(param2,0,param2.length);
         this.writeLineBreak();
         param2.clear();
      }
      
      public function getPostData() : ByteArray
      {
         this.postData.position = 0;
         return this.postData;
      }
      
      public function close() : void
      {
         this.writeBoundary();
         this.writeDoubleDash();
      }
      
      protected function writeLineBreak() : void
      {
         this.postData.writeShort(3338);
      }
      
      protected function writeQuotationMark() : void
      {
         this.postData.writeByte(34);
      }
      
      protected function writeDoubleDash() : void
      {
         this.postData.writeShort(11565);
      }
      
      protected function writeBoundary() : void
      {
         this.writeDoubleDash();
         var _loc1_:uint = uint(this.boundary.length);
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            this.postData.writeByte(this.boundary.charCodeAt(_loc2_));
            _loc2_++;
         }
      }
   }
}

