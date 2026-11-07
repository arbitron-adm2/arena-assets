package §@!N§
{
   import § !8§.§9%+§;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.*;
   import §#",§.§+!h§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §#P§.§`o§;
   import §%"1§.*;
   import §%"Z§.§+$A§;
   import §%"Z§.§9"z§;
   import §%#u§.§@"c§;
   import §%$[§.§1$J§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"$§.§@y§;
   import §2"L§.*;
   import §2#i§.§9##§;
   import §2#x§.*;
   import §2B§.§^%y§;
   import §3%J§.BuyBattleTokensDialog;
   import §4!K§.*;
   import §4!x§.§8#u§;
   import §4!x§.§@& §;
   import §4#`§.§+!l§;
   import §4B§.§=%8§;
   import §4f§.§-&§;
   import §5"J§.*;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §9%k§.§0"^§;
   import §<!^§.§'$e§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabClan;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§1""§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §]^§.§-$T§;
   import com.adobe.images.JPGEncoder;
   import com.adobe.images.PNGEncoder;
   import com.greensock.*;
   import com.greensock.easing.Circ;
   import com.greensock.plugins.*;
   import config.§#!"§;
   import config.achievements.§"!&§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.PostToClanChatRequest;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §&#Z§
   {
      
      private static var §;"`§:BitmapData;
      
      private static var §6]§:BitmapData;
      
      private static var § %_§:BitmapData;
      
      private static var §2$C§:BitmapData;
      
      private static var §'";§:BitmapData;
      
      private static var mc:Array;
      
      private static var icon:Array;
      
      private static var rec:Array;
      
      private static var timer:Timer;
      
      private static var counter:uint;
      
      private static var §5"_§:uint;
      
      private static var §[&+§:Boolean;
      
      private static var §9%a§:String;
      
      private static var §<"R§:String;
      
      private static var §?%a§:Vector.<Function>;
      
      public static const §7$8§:uint = 100;
      
      public static const §3!8§:uint = 154;
      
      public static const §0$w§:uint = 492;
      
      public static const §!#0§:uint = 364;
      
      public static const §%$A§:Point = new Point((§0$w§ - §3!8§) * 0.5,(§!#0§ - §3!8§) * 0.5);
      
      public static const §9"[§:String = ".jpeg";
      
      public static const §97§:String = ".png";
      
      public static const §,@§:String = "_oki";
      
      public static const §4%V§:String = "hats";
      
      public static const §>%,§:String = "artifacts";
      
      public static const §0#7§:String = "weapons";
      
      public static const §"""§:String = "achievs";
      
      private static const URL:String = "http://markus.rmart.ru/wormix_facebook/iconsSave.php";
      
      private static const §3%@§:Number = 98;
      
      private static const §0$U§:JPGEncoder = new JPGEncoder(§3%@§);
      
      public static const §@!d§:MovieClip = §6#A§.§!&6§(§+"'§.§@!d§);
      
      public static const §;"@§:MovieClip = §6#A§.§!&6§(§+"'§.§;"@§);
      
      public static const § %2§:MovieClip = §6#A§.§!&6§(§+"'§.§ %2§);
      
      public static const §9!m§:MovieClip = §6#A§.§!&6§(§+"'§.§9!m§);
      
      public static const §2!y§:MovieClip = §6#A§.§!&6§(§+"'§.§2!y§);
      
      public static const §<!+§:MovieClip = §6#A§.§!&6§(§+"'§.§<!+§);
      
      public static const §%$c§:MovieClip = §6#A§.§!&6§(§+"'§.§%$c§);
      
      public static const §]%K§:MovieClip = §6#A§.§!&6§(§+"'§.§]%K§);
      
      public static const §+$E§:MovieClip = §6#A§.§!&6§(§+"'§.§+$E§);
      
      public static const §>"E§:MovieClip = §6#A§.§!&6§(§+"'§.§>"E§);
      
      public static const §7!J§:MovieClip = §6#A§.§!&6§(§+"'§.§7!J§);
      
      public static const §2!t§:MovieClip = §6#A§.§!&6§(§+"'§.§2!t§);
      
      public static const §[l§:MovieClip = §6#A§.§!&6§(§+"'§.§[l§);
      
      public static const §1"g§:MovieClip = §6#A§.§!&6§(§+"'§.§1"g§);
      
      public static const §1!Q§:MovieClip = §6#A§.§!&6§(§+"'§.§1!Q§);
      
      public static const §'##§:MovieClip = §6#A§.§!&6§(§+"'§.§'##§);
      
      public static const §3x§:MovieClip = §6#A§.§!&6§(§+"'§.§3x§);
      
      public static const §;!,§:MovieClip = §6#A§.§!&6§(§+"'§.§;!,§);
      
      public static const §3!c§:MovieClip = §6#A§.§!&6§(§+"'§.§3!c§);
      
      public static const §[$`§:MovieClip = §6#A§.§!&6§(§+"'§.§[$`§);
      
      public static const §="V§:MovieClip = §6#A§.§!&6§(§+"'§.§="V§);
      
      public static const §7$k§:MovieClip = §6#A§.§!&6§(§+"'§.§7$k§);
      
      private static const §[#M§:Number = 5;
      
      public function §&#Z§()
      {
         super();
      }
      
      public static function §]#8§() : void
      {
         var _loc1_:§@y§ = new §@y§();
         _loc1_.§,%5§();
      }
      
      public static function §?"!§() : void
      {
         § "5§();
      }
      
      public static function § "5§(param1:String = ".png", param2:uint = 154) : void
      {
         §[&+§ = false;
         var _loc3_:Function = §1%"§.§]$<§(§`#j§,§&#Z§,[param1,param2]);
         var _loc4_:Function = §1%"§.§]$<§(§8"=§,§&#Z§,[param1,param2]);
         var _loc5_:Function = §1%"§.§]$<§(§1d§,§&#Z§,[param1,param2]);
         var _loc6_:Function = §1%"§.§]$<§(§=$D§,§&#Z§,[param1,param2]);
         §?%a§ = new <Function>[_loc3_];
         §!&§();
      }
      
      public static function §8"=§(param1:String = ".png", param2:uint = 154) : void
      {
         var _loc3_:§^%%§ = null;
         var _loc4_:MovieClip = null;
         §;#j§(§>%,§,param1,param2);
         for each(_loc3_ in §<$c§.§0$^§())
         {
            _loc4_ = §'+§.getMenuIcon(_loc3_);
            if((Boolean(_loc4_)) && icon.indexOf(_loc3_.getClipClassName()) == -1)
            {
               mc.push(_loc4_);
               rec.push(_loc3_);
               icon.push(_loc3_.getClipClassName());
            }
         }
         §-&3§();
      }
      
      public static function §1d§(param1:String = ".png", param2:uint = 154) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§^$E§ = null;
         var _loc5_:MovieClip = null;
         §;#j§(§4%V§,param1,param2);
         for each(_loc3_ in §<$c§.§7#F§())
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.getCharName() == §9%+§.§>$M§)
               {
                  _loc5_ = §'+§.getMenuIcon(_loc4_);
                  if((Boolean(_loc5_)) && icon.indexOf(_loc4_.getClipClassName()) == -1)
                  {
                     mc.push(_loc5_);
                     rec.push(_loc4_);
                     icon.push(_loc4_.getClipClassName());
                  }
               }
            }
         }
         §-&3§();
      }
      
      public static function §=$D§(param1:String = ".png", param2:uint = 154) : void
      {
         var _loc3_:§;#_§ = null;
         var _loc4_:MovieClip = null;
         §;#j§(§0#7§,param1,param2);
         for each(_loc3_ in §<$c§.getWeapons())
         {
            _loc4_ = §'+§.getMenuIcon(_loc3_);
            if((Boolean(_loc4_)) && _loc3_.getId() < §9##§.§;9§)
            {
               mc.push(_loc4_);
               rec.push(_loc3_);
               icon.push(_loc3_.getMenuIcon());
            }
         }
         §-&3§();
      }
      
      public static function §`#j§(param1:String = ".png", param2:uint = 154) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:§1! § = null;
         var _loc6_:§`"w§ = null;
         §;#j§(§"""§,param1,param2);
         for each(_loc5_ in §%#c§.§0E§(§,$h§.§-!l§))
         {
            for each(_loc6_ in _loc5_.levels)
            {
               _loc3_ = _loc6_.icon;
               _loc4_ = §6#A§.§!&6§(_loc3_);
               icon.push(_loc3_);
               rec.push({
                  "rec":_loc5_,
                  "type":§,$h§.§-!l§.value
               });
               mc.push(_loc4_);
            }
         }
         §-&3§();
      }
      
      private static function §;#j§(param1:String, param2:String = ".png", param3:uint = 154) : void
      {
         §9%a§ = param1 + (§[&+§ ? §,@§ : "");
         §<"R§ = param2;
         §5"_§ = param3;
         icon = [];
         rec = [];
         mc = [];
      }
      
      private static function §!&§() : void
      {
         var _loc1_:Function = null;
         if(Boolean(§?%a§) && §?%a§.length > 0)
         {
            _loc1_ = §?%a§[0];
            §?%a§.splice(0,1);
            _loc1_();
         }
      }
      
      private static function §-&3§() : void
      {
         if(timer)
         {
            §0$"§();
         }
         timer = new Timer(§[#M§,mc.length);
         timer.addEventListener(TimerEvent.TIMER,§&&7§);
         timer.addEventListener(TimerEvent.TIMER_COMPLETE,§7"2§);
         timer.start();
      }
      
      private static function §&&7§(param1:TimerEvent) : void
      {
         counter = timer.currentCount - 1;
         if(mc.length > 0 && counter < mc.length)
         {
            §"O§(counter,§9%a§,§<"R§,§5"_§,§[&+§);
         }
      }
      
      private static function §7"2§(param1:TimerEvent = null) : void
      {
         §0$"§();
         if(§?%a§)
         {
            §!&§();
         }
      }
      
      private static function §0$"§() : void
      {
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,§&&7§);
         timer.removeEventListener(TimerEvent.TIMER_COMPLETE,§7"2§);
      }
      
      private static function §"O§(param1:uint, param2:String, param3:String = ".png", param4:uint = 154, param5:Boolean = false) : void
      {
         var _loc7_:Sprite = null;
         var _loc6_:* = rec.length ? rec[param1] : null;
         _loc7_ = §]`§(mc[param1],_loc6_,param4);
         var _loc8_:BitmapData = §6%W§(_loc7_,param4,param4);
         var _loc9_:BitmapData = new BitmapData(§0$w§,§!#0§,true,0);
         _loc9_.copyPixels(_loc8_,_loc8_.rect,§%$A§,null,null,true);
         createRequest(param5 ? _loc9_ : _loc8_,icon[param1],param2,param3);
      }
      
      private static function createRequest(param1:BitmapData, param2:String, param3:String, param4:String = ".png") : void
      {
         var _loc5_:URLRequestHeader = new URLRequestHeader("Content-type","application/octet-stream");
         var _loc6_:URLRequest = new URLRequest(URL + "?name=" + param2 + param4 + "&folder=" + param3);
         _loc6_.requestHeaders.push(_loc5_);
         _loc6_.method = URLRequestMethod.POST;
         if(param4 == §97§)
         {
            _loc6_.data = PNGEncoder.encode(param1);
         }
         else if(param4 == §9"[§)
         {
            _loc6_.data = §0$U§.encode(param1);
         }
         var _loc7_:URLLoader = new URLLoader();
         _loc7_.load(_loc6_);
      }
      
      public static function §`%l§(param1:String) : DisplayObject
      {
         switch(param1)
         {
            case §+"'§.§@!d§:
               return §@!d§;
            case §+"'§.§;"@§:
               return §;"@§;
            case §+"'§.§ %2§:
               return § %2§;
            case §+"'§.§]%K§:
               return §]%K§;
            case §+"'§.§+$E§:
               return §+$E§;
            case §+"'§.§9!m§:
               return §9!m§;
            case §+"'§.§2!y§:
               return §2!y§;
            case §+"'§.§>"E§:
               return §>"E§;
            case §+"'§.§7!J§:
               return §7!J§;
            case §+"'§.§<!+§:
               return §<!+§;
            case §+"'§.§%$c§:
               return §%$c§;
            default:
               return new MovieClip();
         }
      }
      
      private static function §;%2§(param1:uint = 100) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:BitmapData = null;
         var _loc2_:Vector.<MovieClip> = new <MovieClip>[§@!d§,§;"@§,§ %2§];
         var _loc3_:Vector.<BitmapData> = new <BitmapData>[§;"`§,§6]§,§ %_§];
         var _loc7_:Point = new Point();
         var _loc9_:int = 0;
         while(_loc9_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc9_].width / _loc2_[_loc9_].height;
            if(_loc4_ > 1)
            {
               _loc5_ = param1;
               _loc6_ = param1 / _loc4_;
            }
            else
            {
               _loc5_ = param1 * _loc4_;
               _loc6_ = param1;
            }
            _loc7_.x = (param1 - _loc5_) * 0.5;
            _loc7_.y = (param1 - _loc6_) * 0.5;
            _loc8_ = §##l§.§<%`§(_loc2_[_loc9_],_loc5_,_loc6_);
            _loc3_[_loc9_] = new BitmapData(param1,param1,false,4294967295);
            _loc3_[_loc9_].copyPixels(_loc8_,_loc8_.rect,_loc7_,null,null,true);
            _loc9_++;
         }
         §;"`§ = _loc3_[0];
         §6]§ = _loc3_[1];
         § %_§ = _loc3_[2];
      }
      
      private static function §1B§(param1:uint = 100) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:BitmapData = null;
         var _loc2_:Vector.<MovieClip> = new <MovieClip>[§9!m§,§2!y§];
         var _loc3_:Vector.<BitmapData> = new <BitmapData>[§2$C§,§'";§];
         var _loc7_:Point = new Point();
         var _loc9_:Number = 0.8;
         var _loc10_:int = 0;
         while(_loc10_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc10_].width / _loc2_[_loc10_].height;
            if(_loc4_ > 1)
            {
               _loc5_ = param1 * _loc9_;
               _loc6_ = param1 / _loc4_ * _loc9_;
            }
            else
            {
               _loc5_ = param1 * _loc4_ * _loc9_;
               _loc6_ = param1 * _loc9_;
            }
            _loc7_.y = param1 - _loc6_;
            _loc7_.x = param1 - _loc5_;
            _loc8_ = §6%W§(_loc2_[_loc10_],_loc5_,_loc6_,true,0);
            _loc3_[_loc10_] = new BitmapData(param1,param1,true,0);
            _loc3_[_loc10_].copyPixels(_loc8_,_loc8_.rect,_loc7_,null,null,true);
            _loc10_++;
         }
         §2$C§ = _loc3_[0];
         §'";§ = _loc3_[1];
      }
      
      public static function §<%`§(param1:DisplayObject, param2:uint = 0, param3:uint = 0, param4:Boolean = true, param5:uint = 0, param6:int = 0, param7:int = 0) : Bitmap
      {
         var _loc8_:BitmapData = null;
         _loc8_ = §6%W§(param1,param2,param3,param4,param5,param6,param7);
         return new Bitmap(_loc8_);
      }
      
      public static function §6%W§(param1:DisplayObject, param2:uint = 0, param3:uint = 0, param4:Boolean = true, param5:uint = 0, param6:int = 0, param7:int = 0) : BitmapData
      {
         if(!param2)
         {
            param2 = param1.width;
         }
         if(!param3)
         {
            param3 = param1.height;
         }
         var _loc8_:Matrix = new Matrix(param2 / param1.width,0,0,param3 / param1.height);
         var _loc9_:BitmapData = new BitmapData(param2 + param6 + param7,param3,param4,param5);
         _loc9_.draw(param1,_loc8_);
         return _loc9_;
      }
      
      public static function §]`§(param1:DisplayObject, param2:* = null, param3:uint = 154) : Sprite
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObject = null;
         var _loc10_:Object = null;
         var _loc4_:Boolean = Boolean(param2.hasOwnProperty("rec")) && param2.rec is §'%u§ || param2 is §'%u§;
         if(param2)
         {
            _loc10_ = §+$x§(param2);
            _loc5_ = _loc10_.back;
            _loc6_ = _loc10_.front;
            _loc7_ = _loc10_.frame;
         }
         var _loc8_:Sprite = new Sprite();
         if(_loc5_)
         {
            §`o§.§7!S§(_loc5_,param3,param3);
            _loc8_.addChild(_loc5_);
            §`o§.§4!F§(_loc5_);
         }
         var _loc9_:Number = _loc4_ ? 1 : 0.7;
         §`o§.§7!S§(param1,param3 * _loc9_,param3 * _loc9_);
         _loc8_.addChild(param1);
         if(_loc7_)
         {
            param1.x = param1.y = _loc4_ ? 0 : int(param3 / 8.1);
         }
         else
         {
            §`o§.§4!F§(param1);
         }
         if(_loc6_)
         {
            _loc9_ = 0.8;
            §`o§.§7!S§(_loc6_,param3 * _loc9_,param3 * _loc9_);
            _loc8_.addChild(_loc6_);
            §`o§.§4!F§(_loc6_);
            _loc6_.x += (_loc5_.width - _loc6_.width) * 0.5;
            §`o§.§4"1§(_loc6_,_loc5_.height);
         }
         if(_loc7_)
         {
            _loc9_ = 0.9;
            §`o§.§7!S§(_loc7_,param3 * _loc9_,param3 * _loc9_);
            _loc8_.addChild(_loc7_);
         }
         return _loc8_;
      }
      
      public static function §+$x§(param1:*) : Object
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:int = 0;
         var _loc15_:String = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:Boolean = false;
         var _loc19_:String = null;
         if(param1 is §^%%§ || param1 is §^$E§)
         {
            _loc6_ = §&!e§(param1).getId();
            _loc13_ = §0"^§.§`W§(_loc6_);
            _loc11_ = §#&>§.§?$M§(_loc6_) != null;
            _loc12_ = (_loc11_) && !§#&>§.§3Q§(_loc6_).§-!T§;
            _loc14_ = _loc11_ ? §#&>§.§3Q§(_loc6_).getId() : 0;
            _loc10_ = §!#^§.§9!v§.indexOf(_loc14_) > -1;
            _loc7_ = §!#^§.§2&%§.indexOf(_loc14_) > -1;
            _loc8_ = §!#^§.§=#1§.indexOf(_loc14_) > -1;
            _loc9_ = §!#^§.§0"O§.indexOf(_loc14_) > -1;
            _loc15_ = String(§=?§(param1).getClipClassName()).toLocaleLowerCase();
            if(_loc15_.indexOf("strategist") > -1 || _loc15_.indexOf("fan") > -1)
            {
            }
            if(param1 is §^%%§)
            {
               _loc2_ = § %2§;
               if(!param1.getHideInShop())
               {
                  _loc3_ = §9!m§;
               }
               else if(§"!&§.§[#f§(_loc6_) > -1)
               {
                  _loc3_ = §]%K§;
               }
               else if(_loc10_ && !_loc7_ && !_loc8_ && !_loc13_ && !_loc9_)
               {
                  _loc3_ = §<!+§;
               }
               else if(_loc10_ && _loc7_)
               {
                  _loc3_ = §[$`§;
               }
               else if(§1""§.§@#f§(_loc6_) || _loc8_ || _loc13_ || _loc9_)
               {
                  _loc3_ = §2!t§;
               }
               else if(§#!"§.§-#,§(_loc6_))
               {
                  _loc3_ = §;!,§;
               }
            }
            else if(param1 is §^$E§)
            {
               _loc2_ = §;"@§;
               if(!param1.getHideInShop())
               {
                  _loc3_ = §2!y§;
               }
               else if(§"!&§.§[#f§(_loc6_) > -1)
               {
                  _loc3_ = §+$E§;
               }
               else if(_loc10_ && !_loc7_ && !_loc8_ && !_loc13_ && !_loc9_)
               {
                  _loc3_ = §%$c§;
               }
               else if(_loc10_ && _loc7_)
               {
                  _loc3_ = §="V§;
               }
               else if(§1""§.§@#f§(_loc6_) || _loc8_ || _loc13_ || _loc9_)
               {
                  _loc3_ = §[l§;
               }
               else if(§#!"§.§-#,§(_loc6_))
               {
                  _loc3_ = §3!c§;
               }
            }
         }
         else if(param1 is §;#_§)
         {
            _loc2_ = §@!d§;
            _loc6_ = §;#_§(param1).getId();
            if(_loc6_ < §'"Y§.§;9§ && !param1.getHideInShop())
            {
               _loc3_ = §2!y§;
            }
            else if(§"!&§.§[#f§(_loc6_) > -1)
            {
               _loc3_ = §+$E§;
            }
            else if(§1@§.§&%u§(_loc6_))
            {
               _loc3_ = §7!J§;
            }
         }
         else if(Boolean(param1.hasOwnProperty("rec")) || Boolean(param1 is §1! §) || param1 is §'%u§)
         {
            _loc2_ = §7$k§;
            _loc4_ = §6#A§.§!&6§(§+"'§.§#$Z§);
            _loc5_ = MovieClip(_loc4_);
            _loc16_ = 0;
            _loc17_ = 3;
            while(_loc16_ < _loc17_)
            {
               _loc5_.removeChild(_loc5_.getChildByName("level" + _loc16_));
               _loc16_++;
            }
            _loc18_ = Boolean(param1.hasOwnProperty("rec"));
            if((_loc18_) && param1.rec is §1! § || param1 is §1! §)
            {
               _loc19_ = param1.hasOwnProperty("type") ? param1.type : §%#c§.§7#]§(param1.id);
               if(_loc19_ == §,$h§.§-!l§.value)
               {
                  _loc5_.removeChild(_loc5_.getChildByName("yellow"));
                  _loc5_.removeChild(_loc5_.getChildByName("green"));
               }
               else if(_loc19_ == §,$h§.§%R§.value)
               {
                  _loc5_.removeChild(_loc5_.getChildByName("red"));
                  _loc5_.removeChild(_loc5_.getChildByName("green"));
               }
            }
            else if(_loc18_ && param1.rec is §'%u§ || param1 is §'%u§)
            {
               _loc5_.removeChild(_loc5_.getChildByName("red"));
               _loc5_.removeChild(_loc5_.getChildByName("yellow"));
            }
         }
         return {
            "back":_loc2_,
            "front":_loc3_,
            "frame":_loc4_
         };
      }
      
      public static function §4#6§(param1:Vector.<int>) : DisplayObject
      {
         var _loc2_:BossBattleOfferDialog = §^$7§.create(new §]$d§(§&$a§.§5!w§)) as BossBattleOfferDialog;
         var _loc3_:MovieClip = new MovieClip();
         _loc2_.§`![§(param1);
         _loc3_.addChild(_loc2_.§8!8§);
         _loc2_.§8!8§.x = 10;
         _loc2_.§8!8§.y = 20;
         return §<%`§(_loc3_,0,0,true,0,0,10);
      }
      
      public static function §@"R§(param1:String, param2:int = 0) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:MovieClip = §6#A§.§!&6§(§+"'§.§>!z§);
         var _loc5_:MovieClip = §6#A§.§!&6§(param1);
         _loc3_.addChild(_loc4_);
         _loc3_.addChild(_loc5_);
         _loc4_.name = "back";
         if(param2)
         {
            _loc4_.height = param2;
            _loc5_.scaleX = _loc5_.scaleY = _loc4_.scaleX = _loc4_.scaleY;
         }
         §`o§.§0#P§(_loc5_,_loc4_);
         return _loc3_;
      }
   }
}

