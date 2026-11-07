package §2"$§
{
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#$e§.§!a§;
   import §#5§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[`§;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§;#L§;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §5"J§.*;
   import §5#`§.*;
   import §6"'§.§&"3§;
   import §6$0§.§=!N§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §@!N§.§&#Z§;
   import §@!N§.§3!3§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §@y§
   {
      
      private const §"%z§:Number = 10;
      
      private const §3"9§:String = "https://ssl.rmart.ru/wormix_facebook/";
      
      private const §""f§:String = "achieveSave.php";
      
      private const §?"K§:String = "achieveDelete.php";
      
      private var §@%v§:String = "en";
      
      private var index:uint = 1;
      
      private var §3%#§:Array = [];
      
      private var §[f§:§!a§;
      
      private var §6!M§:int = 0;
      
      public function §@y§()
      {
         super();
         this.§[f§ = §!a§(§8"%§.§[f§);
      }
      
      public function §-!=§() : void
      {
         this.§[f§.§3$u§(this.§@%Z§);
      }
      
      private function §@%Z§(param1:§=!N§) : void
      {
      }
      
      public function §,%5§() : void
      {
         this.§8$I§();
      }
      
      public function §8$I§() : void
      {
         this.§[f§.§3$u§(this.§6!4§);
      }
      
      private function §6!4§(param1:§=!N§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = this.§3"9§ + this.§?"K§;
         var _loc3_:int = 0;
         for each(_loc4_ in param1.achieves)
         {
            this.§[f§.§=#4§(_loc4_["url"],_loc2_);
            _loc3_++;
         }
         this.§2" §();
      }
      
      public function §2" §() : void
      {
         var _loc4_:Object = null;
         var _loc5_:§1! § = null;
         var _loc6_:§`"w§ = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         this.§3%#§ = [];
         this.§6!M§ = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in §%#c§.§7$i§())
         {
            for each(_loc5_ in _loc4_)
            {
               for each(_loc6_ in _loc5_.levels)
               {
                  _loc7_ = §0%§.format(_loc5_.description,{"progress":_loc6_.maxValue});
                  _loc8_ = "achieve_" + _loc6_.icon + ".html";
                  _loc9_ = this.§3"9§ + "/achievements/" + this.§@%v§ + "/" + _loc8_;
                  _loc10_ = this.§`#o§(_loc6_,_loc7_);
                  this.§3%#§.push(_loc9_);
                  this.§1!p§(_loc10_,_loc8_);
                  _loc3_++;
               }
               _loc2_++;
            }
            _loc1_++;
         }
         this.index = 1;
      }
      
      private function §`#o§(param1:§`"w§, param2:String) : String
      {
         var _loc3_:String = null;
         var _loc5_:String = null;
         _loc3_ = §0$N§.ACHIEVE_HTML_TEMPLATE;
         var _loc4_:Object = {};
         _loc4_["achieveLevelRecordTitle"] = param1.name;
         _loc4_["url"] = this.§3"9§;
         _loc4_["achieveLevelRecordName"] = param1.name;
         _loc4_["achieveDescription"] = param2;
         _loc5_ = §&#Z§.§97§;
         var _loc6_:String = this.§3"9§ + "/icons/achievs/" + param1.icon + _loc5_;
         _loc4_["image"] = _loc6_;
         _loc4_["achievePoints"] = Math.round(param1.points / this.§"%z§);
         _loc4_["appID"] = this.§[f§.§&%J§();
         return §0%§.format(_loc3_,_loc4_);
      }
      
      private function §1!p§(param1:String, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest = new URLRequest(this.§3"9§ + this.§""f§);
         var _loc5_:URLVariables = new URLVariables();
         _loc5_["content"] = param1;
         _loc5_["fileName"] = param2;
         _loc5_["lang"] = this.§@%v§;
         _loc5_["version"] = §8"%§.context.§2!k§().projectVersion;
         _loc5_["social_type"] = §8"%§.context.§54§().name;
         _loc4_.data = _loc5_;
         _loc4_.method = URLRequestMethod.POST;
         _loc3_.load(_loc4_);
         _loc3_.addEventListener(Event.COMPLETE,this.§3#0§);
      }
      
      private function §3#0§(param1:Event) : void
      {
         ++this.§6!M§;
         if(this.§6!M§ == this.§3%#§.length)
         {
            this.§^!#§();
         }
      }
      
      public function §^!#§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3%#§)
         {
            this.§[f§.§"%d§(_loc2_,this.index++);
            _loc1_++;
         }
         this.§3%#§ = [];
      }
   }
}

