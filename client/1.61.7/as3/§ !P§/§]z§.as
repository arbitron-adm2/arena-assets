package § !P§
{
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§"%Q§;
   import §%L§.§#&%§;
   import §&!?§.§!b§;
   import §&#h§.§-"F§;
   import §0!§.§6#z§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §4#`§.§+!l§;
   import §65§.§5#A§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.§`"k§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §="z§.*;
   import §?$K§.§=z§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[$P§.§+H§;
   import §[%'§.§<"G§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import config.achievements.§"!&§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.AchieveLogin;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.ChooseBonusItem;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]z§ extends EventDispatcher implements §'!v§
   {
      
      public static const §[!%§:uint = 10;
      
      private static const § $L§:uint = 500;
      
      private static const §!"Y§:uint = 12 * 1000;
      
      private static const §[$0§:uint = 2;
      
      private static const §!%Y§:uint = 10 * 1000;
      
      private static const §+c§:uint = 60 * 1000;
      
      private static const DISCONNECTED:uint = 0;
      
      private static const §["5§:uint = 1;
      
      private static const §5%"§:uint = 2;
      
      private static const §%#n§:uint = 3;
      
      private static const §!#Q§:String = "Achievs";
      
      private static const log:§&`§ = new §&`§(§]z§);
      
      private var state:uint;
      
      private var §^$f§:uint;
      
      private var lastLoginTime:Number;
      
      private var §+p§:Array = [];
      
      private var §@!>§:Array = [];
      
      private var §+!S§:Number;
      
      private var §7$g§:uint = 0;
      
      private var §7%j§:Timer;
      
      private var §^I§:Object = {};
      
      private var § "2§:Function;
      
      private var §;%a§:Object = {};
      
      private var §'!q§:int = -1;
      
      private var connection:§"%Q§;
      
      private var §79§:Boolean;
      
      private var §4&>§:Boolean;
      
      private var § #o§:§1!8§;
      
      public function §]z§()
      {
         super();
         this.§ #o§ = new §1!8§();
         this.state = DISCONNECTED;
         this.§+!S§ = 0;
         this.§7%j§ = new Timer(§ $L§);
         this.§7%j§.addEventListener(TimerEvent.TIMER,this.§1!]§);
         this.§7%j§.start();
         this.§"R§();
      }
      
      private static function §9"O§(param1:§9$v§) : void
      {
         var _loc2_:AchieveLoginError = AchieveLoginError(param1.message);
         log.info("login error = " + _loc2_.code,§!#Q§);
      }
      
      private static function §5"u§(param1:Event) : void
      {
         log.info("CONNECTION LOST ON LOGIN",§!#Q§);
      }
      
      private function §1!]§(param1:TimerEvent) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Boolean = false;
         var _loc2_:Number = new Date().getTime();
         if(this.state == §%#n§)
         {
            if(this.§7$g§ < §[$0§)
            {
               if(_loc2_ - this.§+!S§ > §!"Y§ && this.§@!>§.length > 0)
               {
                  ++this.§7$g§;
                  _loc4_ = true;
                  for each(_loc3_ in this.§+p§)
                  {
                     if(_loc3_ is IncreaseAchievements)
                     {
                        _loc4_ = false;
                        break;
                     }
                  }
                  if(_loc4_)
                  {
                     this.§+p§.push(this.§@!>§[0]);
                  }
               }
            }
            else
            {
               this.§7$g§ = 0;
               this.connection.close();
               this.§!!Q§();
               this.§"R§();
            }
            if(this.§+p§.length > 0)
            {
               _loc3_ = this.§+p§.shift();
               if(_loc3_ is IncreaseAchievements)
               {
                  this.§@%8§(IncreaseAchievements(_loc3_));
               }
               else
               {
                  this.connection.§,U§(_loc3_);
               }
            }
         }
         else if(this.state == §5%"§ && _loc2_ - this.lastLoginTime > §!%Y§)
         {
            this.connection.close();
            this.§[!R§();
            this.§"R§();
         }
         else if(this.state == DISCONNECTED)
         {
            this.§"R§();
         }
      }
      
      private function §@%8§(param1:IncreaseAchievements) : void
      {
         param1.sessionId = this.connection.§7$0§();
         param1.timeSequence = this.§^$f§;
         log.§[x§("sending increase command " + param1.timeSequence,§!#Q§);
         this.§+!S§ = new Date().getTime();
         this.§=$t§(param1);
      }
      
      private function §=$t§(param1:Object) : void
      {
         if(this.state != DISCONNECTED)
         {
            if(this.state == §%#n§ && this.§+p§.length == 0)
            {
               this.connection.§,U§(param1);
            }
            else
            {
               this.§+p§.push(param1);
            }
         }
         else
         {
            this.§"R§();
         }
      }
      
      public function §3!B§() : void
      {
         if(!this.§4&>§)
         {
            this.§4&>§ = true;
            this.§7%j§.stop();
            this.§7%j§ = null;
            this.connection.close();
            this.state = DISCONNECTED;
         }
      }
      
      public function §]#a§() : §<#q§
      {
         var _loc1_:String = Application.userProfile.§"%D§();
         return this.§;%a§[_loc1_] ? this.§;%a§[_loc1_] : new §<#q§();
      }
      
      private function §"R§() : void
      {
         if(!this.§4&>§)
         {
            this.state = §["5§;
            if(this.connection)
            {
               this.connection.close();
            }
            this.connection = new §"%Q§(§#&%§.§0#e§);
            this.connection.addEventListener(Event.CONNECT,this.onConnected);
            this.connection.connect();
         }
      }
      
      private function onConnected(param1:Event) : void
      {
         this.§>"#§();
         this.login();
      }
      
      private function §>"#§() : void
      {
         this.connection.removeEventListener(Event.CONNECT,this.onConnected);
      }
      
      private function login() : void
      {
         this.state = §5%"§;
         this.lastLoginTime = new Date().getTime();
         this.connection.addEventListener(Event.CLOSE,§5"u§);
         this.connection.addEventListener(IOErrorEvent.IO_ERROR,§5"u§);
         this.connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5"u§);
         this.connection.§##$§(AchieveLoginSuccess,this.§,#r§);
         this.connection.§##$§(AchieveLoginError,§9"O§);
         var _loc1_:AchieveLogin = new AchieveLogin();
         _loc1_.id = §8"%§.§[f§.getUserId();
         _loc1_.applicationId = Social.§`#u§();
         _loc1_.socialNetworkId = §8"%§.§[f§.getType().name;
         _loc1_.authKey = §8"%§.§[f§.§7!f§();
         _loc1_.sendAchievements = this.§;%a§[Application.userProfile.§"%D§()] == null;
         this.connection.§,U§(_loc1_);
      }
      
      private function §[!R§() : void
      {
         this.connection.removeEventListener(Event.CLOSE,§5"u§);
         this.connection.removeEventListener(IOErrorEvent.IO_ERROR,§5"u§);
         this.connection.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§5"u§);
         this.connection.§-"j§(AchieveLoginSuccess,this.§,#r§);
         this.connection.§-"j§(AchieveLoginError,§9"O§);
      }
      
      private function §,#r§(param1:§9$v§) : void
      {
         this.§[!R§();
         var _loc2_:AchieveLoginSuccess = AchieveLoginSuccess(param1.message);
         this.connection.§1$g§(_loc2_.sessionId);
         this.§^$f§ = _loc2_.loginTime + 1;
         this.state = §%#n§;
         this.§]$,§();
         log.info("login success sessionId = " + _loc2_.sessionId,§!#Q§);
      }
      
      private function §]$,§() : void
      {
         this.connection.addEventListener(Event.CLOSE,this.§0$<§);
         this.connection.addEventListener(IOErrorEvent.IO_ERROR,this.§0$<§);
         this.connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0$<§);
         this.connection.§##$§(IncreaseAchievementResult,this.§!!u§);
         this.connection.§##$§(GetAchievementsResult,this.§%#5§);
         this.connection.§##$§(ChooseBonusItemResult,this.§8#8§);
         this.connection.§##$§(SyncInvestedAwardPointsResult,this.§0#f§);
      }
      
      private function §!!Q§() : void
      {
         this.connection.removeEventListener(Event.CLOSE,this.§0$<§);
         this.connection.removeEventListener(IOErrorEvent.IO_ERROR,this.§0$<§);
         this.connection.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0$<§);
         this.connection.§-"j§(IncreaseAchievementResult,this.§!!u§);
         this.connection.§-"j§(GetAchievementsResult,this.§%#5§);
         this.connection.§-"j§(ChooseBonusItemResult,this.§8#8§);
         this.connection.§-"j§(SyncInvestedAwardPointsResult,this.§0#f§);
      }
      
      private function §0$<§(param1:Event) : void
      {
         log.info("CONNECTION LOST",§!#Q§);
         this.§!!Q§();
         this.§"R§();
      }
      
      public function increase(param1:Array, param2:Array, param3:Array = null) : void
      {
         if(!param3)
         {
            param3 = [];
         }
         var _loc4_:IncreaseAchievements = new IncreaseAchievements();
         _loc4_.achievementsIndex = param1;
         _loc4_.achievementsRise = param2;
         _loc4_.boolAchievements = param3;
         if(this.§@!>§.length == 0 && this.state == §%#n§)
         {
            this.§@%8§(_loc4_);
         }
         this.§@!>§.push(_loc4_);
      }
      
      private function §!!u§(param1:§9$v§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:IncreaseAchievements = null;
         var _loc6_:§<#q§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§'%u§ = null;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:int = 0;
         var _loc2_:IncreaseAchievementResult = IncreaseAchievementResult(param1.message);
         if(this.§@!>§.length == 0)
         {
            return;
         }
         if(_loc2_.timeSequence == 0)
         {
            return;
         }
         log.§[x§("got increase result " + _loc2_.timeSequence,§!#Q§);
         if(_loc2_.timeSequence != IncreaseAchievements(this.§@!>§[0]).timeSequence)
         {
            log.warn("received wrong sequence!",§!#Q§);
            if(this.§@!>§.length == 1)
            {
               return;
            }
         }
         for each(_loc4_ in this.§@!>§)
         {
            if(_loc2_.timeSequence == _loc4_.timeSequence)
            {
               _loc3_ = true;
            }
         }
         if(!_loc3_)
         {
            throw new Error("NOT found MATCH incoming & pending timeSequence\'s!");
         }
         this.§7$g§ = 0;
         ++this.§^$f§;
         var _loc5_:String = §8"%§.§[f§.getUserId();
         log.§[x§("successfully increased " + _loc2_.achievementsValues.length + " achievements " + _loc2_.boolAchievements.length + " booleans",§!#Q§);
         if(this.§;%a§[_loc5_] != null)
         {
            _loc6_ = this.§;%a§[_loc5_];
            _loc7_ = 0;
            _loc8_ = int(_loc2_.boolAchievements.length);
            while(_loc7_ < _loc8_)
            {
               _loc6_.§<$,§(_loc2_.boolAchievements[_loc7_]);
               _loc7_++;
            }
            _loc7_ = 0;
            _loc8_ = int(_loc2_.achievementsIndex.length);
            while(_loc7_ < _loc8_)
            {
               if(!§!$L§.§@"u§(_loc2_.achievementsIndex[_loc7_]))
               {
                  _loc6_.§?l§(_loc2_.achievementsIndex[_loc7_],_loc2_.achievementsValues[_loc7_]);
               }
               _loc7_++;
            }
            log.§[x§("dispatchEvent increased " + _loc6_.toString(),§!#Q§);
            dispatchEvent(new §0$_§(_loc6_));
         }
         if(_loc2_.boolAchievements.length > 0)
         {
            for each(_loc9_ in _loc2_.boolAchievements)
            {
               _loc10_ = §^t§.§1&%§(_loc9_);
               if(_loc10_)
               {
                  if(_loc10_.id != BossAchieves.§^#C§)
                  {
                     this.§ #o§.§>"Q§(_loc10_);
                  }
               }
            }
            this.§ #o§.update();
         }
         if(_loc2_.thresholdAchievmensIndex.length > 0)
         {
            _loc11_ = [];
            for each(_loc12_ in _loc2_.thresholdAchievmensIndex)
            {
               _loc13_ = _loc2_.achievementsIndex.indexOf(_loc12_);
               _loc11_.push(_loc13_ != -1 ? _loc2_.achievementsValues[_loc13_] : 0);
            }
            this.§4%`§(_loc2_.thresholdAchievmensIndex,_loc2_.thresholdAchievmensOldValues,_loc11_);
         }
         this.§@!>§.shift();
      }
      
      public function §"%1§(param1:UserProfile, param2:Function) : void
      {
         var _loc4_:§<#q§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         if(this.§;%a§[param1.§"%D§()])
         {
            _loc4_ = this.§;%a§[param1.§"%D§()];
            _loc5_ = param1.§"%D§() == Application.userProfile.§"%D§();
            if((_loc5_) || _loc4_.§ $k§ + §+c§ >= new Date().time)
            {
               _loc6_ = _loc5_ ? this.§'!q§ : -1;
               param2(param1.§"%D§(),_loc4_,_loc6_);
               return;
            }
         }
         var _loc3_:GetAchievements = new GetAchievements();
         _loc3_.profileId = param1.§"%D§();
         this.§=$t§(_loc3_);
         this.§^I§[param1.§"%D§()] = param2;
      }
      
      private function §0#f§(param1:§9$v§) : void
      {
         var _loc2_:SyncInvestedAwardPointsResult = SyncInvestedAwardPointsResult(param1.message);
         this.§'!q§ = _loc2_.points;
      }
      
      private function §%#5§(param1:§9$v§) : void
      {
         var _loc2_:GetAchievementsResult = null;
         _loc2_ = GetAchievementsResult(param1.message);
         var _loc3_:String = _loc2_.profileId;
         this.§;%a§[_loc3_] = §<#q§.§5#!§(_loc2_.achievementsIndex,_loc2_.achievements,_loc2_.boolAchievements);
         if(_loc3_ == Application.userProfile.§"%D§())
         {
            this.§'!q§ = _loc2_.investedAwardPoints;
            if(!this.§79§)
            {
               this.§79§ = true;
               this.§^%j§();
            }
            dispatchEvent(new §0$_§(this.§;%a§[_loc3_]));
         }
         if(this.§^I§[_loc3_])
         {
            this.§^I§[_loc3_](_loc3_,this.§;%a§[_loc3_],_loc2_.investedAwardPoints);
            delete this.§^I§[_loc3_];
         }
      }
      
      public function §>N§(param1:§&!e§, param2:Function) : void
      {
         var item:§&!e§ = param1;
         var onResponse:Function = param2;
         var cmd:ChooseBonusItem = new ChooseBonusItem();
         cmd.itemId = item.getId();
         this.§=$t§(cmd);
         this.§ "2§ = function(param1:uint, param2:uint):void
         {
            onResponse(item,param1,param2);
         };
      }
      
      private function §8#8§(param1:§9$v§) : void
      {
         var _loc2_:ChooseBonusItemResult = ChooseBonusItemResult(param1.message);
         if(this.§ "2§ != null)
         {
            this.§ "2§(_loc2_.result,_loc2_.itemId);
            this.§ "2§ = null;
         }
         if(_loc2_.result == ShopResult.SUCCESS)
         {
            ++this.§'!q§;
         }
      }
      
      private function §^%j§() : void
      {
         this.§7!v§();
         var _loc1_:LoginAwardStructure = §8"%§.§]$s§.§2d§();
         if(_loc1_)
         {
            this.increase([§!$L§.§9"@§],[int(_loc1_.attach)]);
         }
         this.§7!l§();
      }
      
      private function §7!v§() : void
      {
         this.§?&#§(§!$L§.§!"4§,§1!S§.§6b§());
         this.§?&#§(§!$L§.CRAFT_LEGENDARY,§#&>§.§4o§());
         this.§?&#§(§!$L§.§%%3§,Application.userProfile.§;$F§().length);
         this.§?&#§(§!$L§.§4#J§,§6Y§.§@%m§());
      }
      
      private function §?&#§(param1:int, param2:int) : void
      {
         var _loc3_:§<#q§ = null;
         var _loc5_:int = 0;
         _loc3_ = this.§]#a§();
         var _loc4_:int = _loc3_.valueOf(param1);
         if(_loc4_ < param2)
         {
            _loc5_ = param2 - _loc4_;
            if(_loc5_ > 0)
            {
               this.increase([param1],[_loc5_]);
            }
         }
      }
      
      private function §7!l§() : void
      {
         var _loc3_:String = null;
         var _loc1_:Object = §8"%§.§2!d§.§>%6§;
         var _loc2_:§<#q§ = this.§]#a§();
         for(_loc3_ in _loc1_)
         {
            _loc2_.§?l§(§!$L§.§`x§ + int(_loc3_),_loc1_[_loc3_]);
         }
         dispatchEvent(new §0$_§(_loc2_));
      }
      
      public function §4%`§(param1:Array, param2:Array, param3:Array) : void
      {
         var _loc6_:§1! § = null;
         var _loc7_:* = 0;
         var _loc8_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.length);
         while(_loc4_ < _loc5_)
         {
            _loc6_ = §%#c§.getRecord(param1[_loc4_]);
            if(_loc6_ != null)
            {
               _loc7_ = int(_loc6_.levels.length - 1);
               while(_loc7_ >= 0)
               {
                  _loc8_ = §`"w§(_loc6_.levels[_loc7_]).maxValue;
                  if(param3[_loc4_] >= _loc8_ && param2[_loc4_] < _loc8_)
                  {
                     this.§ #o§.§>"Q§(_loc6_,_loc7_);
                  }
                  _loc7_--;
               }
            }
            _loc4_++;
         }
         this.§ #o§.update();
      }
      
      public function §`"Z§(param1:Function) : void
      {
         var _loc2_:int = §8"%§.randomSeed.§,!q§(int.MIN_VALUE,int.MAX_VALUE);
         §^"5§.§?%D§(this.connection,[BuyResetBonusItemsResult],§1%"§.§]$<§(this.§^$t§,this,[_loc2_,param1],true));
         this.connection.§,U§(new BuyResetBonusItems(_loc2_));
      }
      
      private function §^$t§(param1:§9$v§, param2:int, param3:Function) : void
      {
         var _loc4_:BuyResetBonusItemsResult = null;
         var _loc6_:UserProfile = null;
         var _loc7_:§'"-§ = null;
         var _loc8_:§;! § = null;
         var _loc9_:Boolean = false;
         var _loc10_:Array = null;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:Boolean = false;
         var _loc14_:BackpackItem = null;
         var _loc15_:§#$s§ = null;
         var _loc16_:int = 0;
         var _loc17_:§;#_§ = null;
         var _loc18_:§;#_§ = null;
         var _loc19_:int = 0;
         var _loc20_:§#$s§ = null;
         _loc4_ = BuyResetBonusItemsResult(param1.message);
         var _loc5_:Boolean = _loc4_.requestNum == param2 && _loc4_.isSecure && _loc4_.result == BuyResetBonusItemsResult.SUCCESS;
         if(_loc5_)
         {
            _loc6_ = Application.userProfile;
            _loc7_ = _loc6_.§3%^§();
            _loc8_ = _loc6_.§,%o§();
            for each(_loc10_ in §"!&§.list)
            {
               for each(_loc11_ in _loc10_)
               {
                  _loc12_ = int(_loc11_.itemId);
                  _loc13_ = _loc12_ < 1000;
                  if(_loc13_)
                  {
                     if(§1@§.§&%u§(_loc12_) == null || §1!S§.§@!&§(_loc12_,_loc6_.§3%^§()) == null)
                     {
                        _loc7_.§2$I§(_loc12_);
                        _loc7_.§ %7§().remove(_loc12_);
                     }
                     else
                     {
                        while(true)
                        {
                           _loc14_ = §1!S§.§@!&§(_loc12_,_loc6_.§3%^§());
                           if(!_loc14_)
                           {
                              break;
                           }
                           _loc15_ = §1!S§.§?!4§(_loc14_.getId());
                           if(_loc15_)
                           {
                              if(_loc15_.prevUpgradeId != _loc12_)
                              {
                                 _loc20_ = §1!S§.§?!4§(_loc15_.prevUpgradeId);
                                 _loc16_ = _loc20_.upgradeId;
                              }
                              else
                              {
                                 _loc16_ = §1!S§.§[!r§(_loc15_.upgradeId);
                              }
                              _loc17_ = §<$c§.§ !=§(_loc16_);
                              _loc18_ = §<$c§.§ !=§(_loc15_.upgradeId);
                              _loc19_ = §+!l§.§5w§(_loc18_.getId());
                              if(_loc19_ > -1)
                              {
                                 §+!l§.§@$[§(_loc19_,_loc17_.getId());
                                 _loc9_ = true;
                              }
                              §`"k§.§"$-§(_loc15_.getId());
                              if(_loc15_.prevUpgradeId > 0)
                              {
                                 §1!S§.§?!a§(_loc15_.prevUpgradeId,Application.userProfile);
                              }
                           }
                           _loc7_.§2$I§(_loc14_.getId());
                           _loc7_.§ %7§().remove(_loc14_.getId());
                           if(!(Boolean(_loc15_) && _loc15_.prevUpgradeId > 0))
                           {
                              break;
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc8_.§2$I§(_loc12_);
                     if(Boolean(_loc6_.§2u§()) && _loc12_ == _loc6_.§2u§().getId())
                     {
                        _loc6_.§7"i§(null);
                     }
                     if(Boolean(_loc6_.§+!b§()) && _loc12_ == _loc6_.§+!b§().getId())
                     {
                        _loc6_.§;"U§(null);
                     }
                  }
               }
            }
            this.§'!q§ = 0;
            if(!§2$^§.isVipExist())
            {
               _loc6_.§9%D§(-§[!%§);
               Application.§5!>§.§8$w§();
            }
            if(_loc9_)
            {
               §+!l§.§7#§();
               §@%;§.play(§`!v§.§7D§);
            }
         }
         else
         {
            new §,#W§(§0$N§.TITLE_BUY,§0$N§.ERROR_HACKING_ATTEMPT,§,#W§.§6!m§).show();
         }
         param3(_loc5_);
      }
   }
}

