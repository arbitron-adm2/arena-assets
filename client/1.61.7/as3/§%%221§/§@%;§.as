package §%"1§
{
   import § !8§.§`!d§;
   import § !P§.*;
   import § %f§.Parasite;
   import § &5§.§=#P§;
   import § L§.§`T§;
   import §!L§.§`#p§;
   import §"%H§.§'%u§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.Team;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.§0$L§;
   import §7$1§.§3&G§;
   import §7$t§.§=?§;
   import §8!Y§.§`#Q§;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §<"L§.§##-§;
   import §<$q§.§?!d§;
   import §<%E§.§'$g§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[$<§.§-&>§;
   import §[$<§.§>!u§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §@%;§
   {
      
      private static const log:§&`§ = new §&`§(§@%;§);
      
      private static const §<$6§:String = "sound";
      
      private static const §8#1§:String = "bg_sound";
      
      private static const §3%B§:int = -1;
      
      private static const §?##§:SoundTransform = new SoundTransform(1);
      
      public static const §%"V§:Number = 1;
      
      public static const §>"r§:Number = 0.1;
      
      public static const §"g§:Number = 0.1;
      
      private static var §4&H§:Object = {};
      
      private static var §9&E§:Object = {};
      
      private static var §+!`§:Object = {};
      
      private static const §7F§:§@%;§ = new §@%;§();
      
      private var soundOn:Boolean = true;
      
      private var §4!p§:Boolean = true;
      
      private var §0§:Vector.<§7#P§> = new Vector.<§7#P§>(0);
      
      private var §!T§:int = -1;
      
      public function §@%;§()
      {
         super();
         this.soundOn = Cookie.§3#'§(§<$6§,true);
         this.§4!p§ = Cookie.§3#'§(§8#1§,true);
      }
      
      public static function §@#y§(param1:§=#?§) : void
      {
         §7F§.§@#y§([param1]);
      }
      
      public static function §@$U§(param1:Array) : void
      {
         §7F§.§@#y§(param1);
      }
      
      public static function §4$u§() : Boolean
      {
         return §7F§.§4$u§();
      }
      
      public static function §6%A§() : Boolean
      {
         return §7F§.§6%A§();
      }
      
      public static function §+"a§() : void
      {
         §7F§.§+"a§();
      }
      
      public static function §^!q§() : void
      {
         §7F§.§^!q§();
      }
      
      public static function §[%<§() : void
      {
         §7F§.§[%<§();
      }
      
      public static function §8&#§() : void
      {
         §7F§.§8&#§();
      }
      
      public static function §&$w§() : void
      {
         §7F§.§&$w§();
      }
      
      public static function play(param1:§=#?§, param2:Boolean = false, param3:Boolean = false) : §7#P§
      {
         return §7F§.play(param1,param2,param3);
      }
      
      internal static function §7#j§(param1:§=#?§) : Sound
      {
         return §7F§.§7#j§(param1);
      }
      
      internal static function §,#v§(param1:§7#P§) : void
      {
         return §7F§.§,#v§(param1);
      }
      
      public static function §`"'§() : Number
      {
         §5#c§(§?##§.volume + §"g§);
         return §?##§.volume;
      }
      
      public static function §9#y§() : Number
      {
         §5#c§(§?##§.volume - §"g§);
         return §?##§.volume;
      }
      
      public static function §1$?§() : Number
      {
         return SoundMixer.soundTransform.volume;
      }
      
      public static function §5#c§(param1:Number) : void
      {
         §?##§.volume = param1 > §%"V§ ? §%"V§ : (param1 < §>"r§ ? §>"r§ : param1);
         SoundMixer.soundTransform = §?##§;
      }
      
      protected function §@#y§(param1:Array) : void
      {
         if(this.§!T§ != §3%B§)
         {
            this.§&$w§();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§0§[_loc2_] = §7#P§.create(§=#?§(param1[_loc2_]),_loc2_ == param1.length - 1);
            _loc2_++;
         }
         this.§!T§ = 0;
      }
      
      protected function §4$u§() : Boolean
      {
         return this.soundOn;
      }
      
      protected function §6%A§() : Boolean
      {
         return this.§4!p§;
      }
      
      protected function §+"a§() : void
      {
         var _loc1_:§7#P§ = null;
         if(this.soundOn)
         {
            §+!`§ = {};
            for each(_loc1_ in §9&E§)
            {
               if(_loc1_.isPlaying())
               {
                  _loc1_.§>"X§();
                  §+!`§[_loc1_.id] = _loc1_;
               }
            }
            §9&E§ = null;
         }
         else
         {
            §9&E§ = {};
            for each(_loc1_ in §+!`§)
            {
               if(_loc1_.status != §+#h§.§[&,§)
               {
                  _loc1_.play();
                  §9&E§[_loc1_.id] = _loc1_;
               }
            }
            §+!`§ = null;
         }
         this.soundOn = !this.soundOn;
         Cookie.setValue(§<$6§,this.soundOn);
      }
      
      protected function §^!q§() : void
      {
         this.§4!p§ = !this.§4!p§;
         Cookie.setValue(§8#1§,this.§4!p§);
         if(this.§4!p§)
         {
            this.§[%<§();
         }
         else
         {
            this.§8&#§();
         }
      }
      
      protected function §[%<§() : void
      {
         var _loc1_:§7#P§ = null;
         if(this.§!T§ != §3%B§)
         {
            _loc1_ = this.§0§[this.§!T§];
            if(_loc1_.isPlaying())
            {
               if(this.§4!p§)
               {
                  _loc1_.§!$M§();
               }
            }
            else
            {
               _loc1_.play();
               if(!this.§4!p§)
               {
                  _loc1_.§&#@§();
               }
               if(this.§!T§ != this.§0§.length - 1)
               {
                  _loc1_.addEventListener(Event.SOUND_COMPLETE,this.§^$-§);
               }
            }
         }
      }
      
      private function §^$-§(param1:Event) : void
      {
         this.§0§[this.§!T§].removeEventListener(Event.SOUND_COMPLETE,this.§^$-§);
         if(this.§!T§ != this.§0§.length - 1)
         {
            ++this.§!T§;
            this.§[%<§();
         }
      }
      
      protected function §8&#§() : void
      {
         if(this.§!T§ != §3%B§)
         {
            this.§0§[this.§!T§].§&#@§();
         }
      }
      
      protected function §&$w§() : void
      {
         var _loc1_:§7#P§ = null;
         if(this.§!T§ != §3%B§)
         {
            _loc1_ = this.§0§[this.§!T§];
            _loc1_.removeEventListener(Event.SOUND_COMPLETE,this.§^$-§);
            _loc1_.stop();
            this.§0§.length = 0;
            this.§!T§ = §3%B§;
         }
      }
      
      protected function play(param1:§=#?§, param2:Boolean = false, param3:Boolean = false) : §7#P§
      {
         var _loc4_:§7#P§ = null;
         if(this.soundOn || param2 || param3)
         {
            _loc4_ = §7#P§.create(param1,param2);
         }
         if(this.soundOn || param3)
         {
            _loc4_.play();
         }
         if(param2)
         {
            if(this.soundOn || param3)
            {
               if(§9&E§)
               {
                  §9&E§[_loc4_.id] = _loc4_;
               }
            }
            else
            {
               §+!`§[_loc4_.id] = _loc4_;
            }
         }
         return _loc4_;
      }
      
      protected function §7#j§(param1:§=#?§) : Sound
      {
         var _loc2_:String = param1.§+"]§();
         if(§6#A§.contains(_loc2_))
         {
            if(!§4&H§[_loc2_])
            {
               §4&H§[_loc2_] = §6#A§.§'8§(_loc2_);
            }
         }
         else
         {
            log.warn("Sound call before loading complete. (Sound = \'" + _loc2_ + "\')");
         }
         return Sound(§4&H§[_loc2_]);
      }
      
      protected function §,#v§(param1:§7#P§) : void
      {
         §9&E§; //unpopped
         if(§+!`§)
         {
            delete §+!`§[param1.id];
         }
      }
   }
}

