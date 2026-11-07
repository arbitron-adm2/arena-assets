package ru.pragmatix.flox.social.controller
{
   import § &5§.§=#P§;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §"$+§.§,!<§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§?3§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-G§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §2B§.§8"n§;
   import §3#T§.§]!6§;
   import §3#a§.§-#M§;
   import §4!!§.§76§;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6#Z§.§&!Z§;
   import §65§.§`"C§;
   import §7!-§.*;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8$V§.*;
   import §8$Z§.*;
   import §9%k§.§=k§;
   import §;!J§.§8!a§;
   import §<!W§.§#&#§;
   import §<!W§.§3"R§;
   import §<!W§.§;!`§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§ "H§;
   import §="z§.§-O§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>!_§.§'!&§;
   import §>!_§.§'#m§;
   import §?"[§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@$§.*;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §]$v§.§5"R§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^4§.§@#J§;
   import §`%&§.§`§;
   import com.adobe.images.PNGEncoder;
   import com.adobe.serialization.json.JSONDecoder;
   import com.inreflected.forks.spark.effects.easing.Linear;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#$K§ implements §1#+§, §1!`§, IEventDispatcher
   {
      
      public static const EVENT_POST_SUCCESS:String = "EVENT_POST_SUCCESS";
      
      public static const § !3§:String = "Social";
      
      protected static const §@#7§:String = "_masterKey";
      
      protected static const §18§:String = "_lang";
      
      protected static var log:§&`§ = new §&`§(§#$K§);
      
      protected static var dispatcher:EventDispatcher = new EventDispatcher();
      
      protected var §'D§:Object;
      
      private var appLink:String;
      
      protected var clubId:String;
      
      private var clubLink:String;
      
      protected var context:§%"'§;
      
      public function §#$K§(param1:§%"'§)
      {
         super();
         this.§'D§ = param1.getFlashVars();
         this.context = param1;
         this.appLink = param1.§2!k§().appLink || "";
         this.clubId = param1.§2!k§().appClub || "";
         this.clubLink = this.§2!]§(this.clubId);
         Security.allowDomain("*");
      }
      
      protected function §^"3§(param1:§,$2§) : void
      {
         log.error("Social API request \'" + param1.§""h§ + "\' failed with error code: " + param1.errorCode.code + " msg: " + param1.errorCode.msg);
      }
      
      protected function §2"p§(param1:MultipartURLLoader, param2:§7#E§, param3:String, param4:Function, param5:Function, param6:§,$2§, param7:Boolean = true) : void
      {
         var _loc8_:Function = §1%"§.§]$<§(this.parse,this,[param2,param4,param5,param6,param7],true);
         §""n§.§?%D§(param1,[Event.COMPLETE,IOErrorEvent.IO_ERROR,SecurityErrorEvent.SECURITY_ERROR],_loc8_);
         param1.load(param3);
      }
      
      protected function parse(param1:Event, param2:§7#E§, param3:Function, param4:Function, param5:§,$2§, param6:Boolean = true, param7:Boolean = true) : void
      {
         var _loc9_:Object = null;
         var _loc8_:Object = null;
         if(param1.target is URLLoader)
         {
            _loc9_ = param1.target.data;
         }
         else if(param1.target is MultipartURLLoader)
         {
            _loc9_ = param1.target.loader.data;
         }
         if(param1.type == Event.COMPLETE)
         {
            switch(param2)
            {
               case §7#E§.XML:
                  _loc8_ = new XML(_loc9_);
                  if(param6)
                  {
                     param5.errorCode = this.§^%X§(_loc8_ as XML);
                  }
                  break;
               case §7#E§.JSON:
                  _loc8_ = new JSONDecoder(_loc9_ as String).getValue();
                  if(param6)
                  {
                     param5.errorCode = this.§9#D§(_loc8_);
                  }
            }
         }
         else
         {
            param5.errorCode = §9#n§.§]%x§(param1 as ErrorEvent);
         }
         if(Boolean(param5.errorCode) && param7)
         {
            param5.success = false;
            this.§^"3§(param5);
            if(param4 != null)
            {
               param4(param5);
            }
         }
         else
         {
            param5.success = true;
            param3(_loc8_,param5,param4);
         }
      }
      
      protected function §^%X§(param1:XML) : §9#n§
      {
         throw new IllegalOperationError();
      }
      
      protected function §9#D§(param1:Object) : §9#n§
      {
         throw new IllegalOperationError();
      }
      
      protected function §2!]§(param1:String) : String
      {
         return param1;
      }
      
      public function §0#C§() : String
      {
         throw new IllegalOperationError();
      }
      
      public function §<#d§() : String
      {
         return this.clubLink;
      }
      
      public function getAppLink(param1:String = null) : String
      {
         return this.§0#C§() + "/" + this.appLink;
      }
      
      public function getUserId() : String
      {
         throw new IllegalOperationError();
      }
      
      public function §7!f§() : String
      {
         throw new IllegalOperationError();
      }
      
      public function getAppFriends(param1:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §>%9§(param1:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §^!3§(param1:Array, param2:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function getAlbums(param1:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function createAlbum(param1:String, param2:String, param3:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §#%p§(param1:String, param2:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §-"E§(param1:Array, param2:String, param3:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §[&%§() : Boolean
      {
         return false;
      }
      
      public function getType() : §7"n§
      {
         throw new IllegalOperationError();
      }
      
      public function §7%p§() : uint
      {
         throw new IllegalOperationError();
      }
      
      public function §'!1§() : uint
      {
         throw new IllegalOperationError();
      }
      
      public function §0#Q§(param1:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function changeSettingsIfNeeded(param1:SocialApiSettings, param2:Function, param3:Function = null) : void
      {
         if(!this.isSettingAvailable(param1))
         {
            this.§8"^§(param1,param2,param3);
         }
         else
         {
            param2();
         }
      }
      
      public function isSettingAvailable(param1:SocialApiSettings) : Boolean
      {
         return false;
      }
      
      public function §8"^§(param1:SocialApiSettings, param2:Function, param3:Function = null) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §6%'§(param1:String = null, param2:String = null) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §7&@§() : Boolean
      {
         return false;
      }
      
      public function §;%f§() : Boolean
      {
         return false;
      }
      
      public function §,%p§(param1:String, param2:String, param3:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §;&5§(param1:String, param2:ByteArray, param3:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §""C§(param1:Array) : §2"B§
      {
         throw new IllegalOperationError();
      }
      
      public function §,9§() : §2"B§
      {
         throw new IllegalOperationError();
      }
      
      public function init(param1:Function) : void
      {
         param1(new §,$2§(null,"INIT",true));
      }
      
      public function §[$q§() : Class
      {
         return int;
      }
      
      public function §`#K§() : Boolean
      {
         return true;
      }
      
      public function §>#8§() : String
      {
         return "";
      }
      
      public function getActiveOffers(param1:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §-H§(param1:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §>!F§() : Boolean
      {
         return false;
      }
      
      public function §7!K§(param1:int, param2:Function, param3:Function) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §7s§(param1:int) : void
      {
         throw new IllegalOperationError();
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return dispatcher.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return dispatcher.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return dispatcher.willTrigger(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         dispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         dispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
   }
}

