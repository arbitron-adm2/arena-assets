package §<"L§
{
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§#&%§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&!?§.§6!=§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#V§.§-#U§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §9"-§.AnchorTeleportMark;
   import §9%W§.§&!P§;
   import §<%J§.§!!`§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import §`%&§.§,%§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §##-§
   {
      
      public static const §%"E§:uint = 12;
      
      public static const §1!>§:uint = 10000;
      
      §§push(§§findproperty(§]&A§));
      
      private static const §]&A§:Vector.<ClanServiceResult> = new <ClanServiceResult>[ClanServiceResult.ERR_ALREADY_IN_GAME,ClanServiceResult.ERR_CLAN_NAME_EXISTS,ClanServiceResult.ERR_REPEATED_INVITE,ClanServiceResult.ERR_PROFILE_INVITE_LIMIT,ClanServiceResult.ERR_CLAN_INVITE_LIMIT,ClanServiceResult.ERR_INTEROP,ClanServiceResult.ERR_INVALID_ARGUMENT,ClanServiceResult.ERR_CLAN_SIZE_LIMIT,ClanServiceResult.ERR_EMPTY_SOCIAL_ID];
      
      §§push(§§findproperty(§<5§));
      var _temp_10:* = new <Class>[LoginCreateClanRequest,LoginJoinClanRequest,DeleteClanRequest,QuitClanRequest];
      
      private static const §<5§:Vector.<Class> = new <Class>[LoginCreateClanRequest,LoginJoinClanRequest,DeleteClanRequest,QuitClanRequest];
      
      public static var §8",§:Boolean = false;
      
      private var §;"2§:IEventDispatcher;
      
      private var §]$s§:§'#D§;
      
      private var §`%I§:§7$V§;
      
      private var § %K§:§9%l§;
      
      private var §7!t§:§;#m§;
      
      private var §7"C§:§>A§;
      
      private var § $F§:§%$,§;
      
      private var connection:§%#9§;
      
      private var §1#]§:Timer;
      
      private var §2"]§:Boolean = false;
      
      private var §+p§:Vector.<§5&-§> = new Vector.<§5&-§>();
      
      public function §##-§(param1:IEventDispatcher)
      {
         super();
         this.§;"2§ = param1;
      }
      
      public function init() : void
      {
         this.§]$s§ = new §'#D§(this);
         this.§7!t§ = new §;#m§(this);
         this.§7"C§ = new §>A§(this);
         this.§ %K§ = new §9%l§(this);
         this.§`%I§ = new §7$V§(this);
         this.§ $F§ = new §%$,§(this);
         this.§1#]§ = new Timer(§1!>§);
         this.§1#]§.addEventListener(TimerEvent.TIMER,this.§>#W§);
         if(Application.userProfile.§!#E§())
         {
            this.§"R§();
            this.§1#]§.start();
         }
         else
         {
            §%%w§.§##$§(InviteFriendToClan,this.§ ,§);
         }
      }
      
      private function §>#W§(param1:TimerEvent) : void
      {
         var _loc2_:§5&-§ = null;
         if(this.§2"]§ || (this.connection ? Boolean(!this.connection.§1",§()) : Boolean(false)))
         {
            if(§%%w§.§7F§.§1",§())
            {
               this.§[%N§();
               for each(_loc2_ in this.§+p§)
               {
                  _loc2_.§7%j§.stop();
               }
               this.§2"]§ = false;
               this.§"R§();
            }
         }
      }
      
      private function commandTimer(param1:TimerEvent) : void
      {
         if(§[&G§.§8"&§.isShown())
         {
            §[&G§.§8"&§.hide();
            §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,§0$N§.NO_RESPONSE_FROM_SERVER_CLAN,§,#W§.§6!m§).show();
         }
         this.§2"]§ = true;
         this.§'%2§();
         this.§[%N§();
      }
      
      public function §=$t§(param1:Object, param2:Class, param3:Function, param4:Function, param5:Boolean, param6:§`"q§ = null) : void
      {
         this.§@!Q§(param1,new <Class>[param2],new <Function>[param3],param4,param5,param6);
      }
      
      public function §@!Q§(param1:Object, param2:Vector.<Class>, param3:Vector.<Function>, param4:Function, param5:Boolean, param6:§`"q§ = null) : void
      {
         var request:Object = param1;
         var responseClass:Vector.<Class> = param2;
         var responseCallback:Vector.<Function> = param3;
         var callback:Function = param4;
         var loadingMsg:Boolean = param5;
         var priceInfo:§`"q§ = param6;
         if(!priceInfo)
         {
            this.prepareCommand(new §5&-§(request,responseClass,responseCallback,callback,loadingMsg,this.commandTimer));
         }
         else if(§4! §.§!%i§(priceInfo))
         {
            §,#W§.§'!+§(§0$N§.TITLE_CONFIRMATION,priceInfo.message,§,#W§.§7"d§,function():void
            {
               var _loc1_:* = new §5&-§(request,responseClass,responseCallback,callback,loadingMsg,commandTimer);
               _loc1_.priceInfo = priceInfo;
               prepareCommand(_loc1_);
            }).show();
         }
      }
      
      public function prepareCommand(param1:§5&-§) : void
      {
         var _loc2_:Class = null;
         if(param1.loadingMsg)
         {
            §[&G§.§8"&§.show();
         }
         this.§+p§.push(param1);
         if(this.§1",§())
         {
            for each(_loc2_ in param1.responseClass)
            {
               this.connection.addListener(_loc2_,this.onResponse);
            }
            this.§'#9§();
         }
         else
         {
            this.§"R§();
         }
      }
      
      private function onResponse(param1:§9$v§) : void
      {
         var _loc2_:§5&-§ = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Class = null;
         var _loc6_:§`"q§ = null;
         var _loc7_:Function = null;
         var _loc8_:Function = null;
         var _loc9_:Object = null;
         var _loc10_:ClanServiceResult = null;
         var _loc11_:int = 0;
         var _loc12_:ClanMemberTO = null;
         var _loc13_:String = null;
         for each(_loc2_ in this.§+p§)
         {
            _loc3_ = _loc2_.responseClass.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = _loc2_.responseClass[_loc4_];
               if(param1.message is _loc5_)
               {
                  _loc6_ = _loc2_.priceInfo;
                  _loc7_ = _loc2_.responseCallback[_loc4_];
                  _loc8_ = _loc2_.callback;
                  _loc9_ = _loc2_.request;
                  this.§-!d§(_loc2_);
                  _loc10_ = ClanServiceResult.getResultByCode(CommonClanResponse(param1.message).serviceResult);
                  if(this.§1#]§.running)
                  {
                     this.§1#]§.reset();
                  }
                  if(_loc10_ == ClanServiceResult.OK)
                  {
                     if(_loc6_)
                     {
                        if(!_loc6_.§&#q§)
                        {
                           Application.userProfile.§2Z§(-_loc6_.getValue(),_loc6_.moneyType);
                           Application.§5!>§.§8$w§();
                           if(_loc6_.moneyType == §+$A§.REAL)
                           {
                              _loc11_ = int(_loc6_.price.realPrice);
                              §8"%§.§@1§.increase([§!$L§.§`&0§],[_loc11_]);
                           }
                           else
                           {
                              _loc11_ = int(_loc6_.price.ingamePrice);
                              §8"%§.§@1§.increase([§!$L§.§0"K§],[_loc11_]);
                           }
                        }
                     }
                     this.§1#]§.start();
                  }
                  else if(§]&A§.indexOf(_loc10_) == -1)
                  {
                     switch(_loc10_)
                     {
                        case ClanServiceResult.ERR_CLAN_LOCKED:
                           §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.CLAN_LOCKED_MESSAGE,§,#W§.§6!m§).show();
                           break;
                        case ClanServiceResult.ERR_ALREADY_IN_CLAN:
                           §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.ERR_ALREADY_IN_CLAN,§,#W§.§6!m§).show();
                           break;
                        case ClanServiceResult.ERR_ACCESS_DENIED:
                           _loc12_ = §=%_§.§<!5§(Application.userProfile.getId());
                           if(!_loc12_.expelPermit)
                           {
                              _loc13_ = §0$N§.ERR_ACCESS_DENIED_FOR_EXPEL_CLANMATE;
                           }
                           if(_loc13_)
                           {
                              §,#W§.§'!+§(§0$N§.TITLE_ERROR,_loc13_,§,#W§.§6!m§).show();
                           }
                           break;
                        default:
                           this.§&#r§(_loc10_,_loc9_,_loc5_);
                     }
                  }
                  _loc7_(param1.message,_loc8_);
                  if(_loc5_ == LoginClanEnterAccount)
                  {
                     this.§'%2§();
                  }
                  return;
               }
               _loc4_++;
            }
         }
      }
      
      public function §&#r§(param1:ClanServiceResult, param2:Object, param3:Class) : void
      {
         var _loc4_:String = "request = " + param2 + " response = " + param3 + " serviceResult code=" + param1.code + ", name=" + param1.name;
         §,#W§.§'!+§(§0$N§.TITLE_ERROR,_loc4_,§,#W§.§6!m§).show();
      }
      
      private function §'#9§() : void
      {
         var _loc1_:§5&-§ = null;
         var _loc2_:Boolean = false;
         var _loc3_:Class = null;
         if(this.§+p§.length > 0)
         {
            for each(_loc1_ in this.§+p§)
            {
               if(!_loc1_.§<"M§)
               {
                  _loc2_ = true;
                  for each(_loc3_ in §<5§)
                  {
                     if(_loc1_.request is _loc3_)
                     {
                        _loc2_ = false;
                        break;
                     }
                  }
                  this.connection.send(_loc1_.request);
                  if(_loc2_)
                  {
                     _loc1_.§-&3§();
                  }
               }
            }
         }
      }
      
      private function §-!d§(param1:§5&-§) : void
      {
         var _loc2_:Class = null;
         for each(_loc2_ in param1.responseClass)
         {
            this.connection.removeListener(_loc2_,this.onResponse);
         }
         this.§+p§.splice(this.§+p§.indexOf(param1),1);
         param1.destroy();
      }
      
      private function §"R§() : void
      {
         if(this.connection)
         {
            this.connection.close();
            this.§0"1§();
            this.connection = null;
         }
         this.connection = new §%#9§(§#&%§.§"#g§);
         this.connection.addEventListener(Event.CONNECT,this.onConnected);
         this.connection.connect();
      }
      
      private function onConnected(param1:Event) : void
      {
         if(!this.connection)
         {
            return;
         }
         this.§0"1§();
         this.connection.addEventListener(Event.CLOSE,this.§[!6§);
         this.§`%>§(true);
         if(this.§ "9§(new <Class>[LoginJoinClanRequest,LoginCreateClanRequest]))
         {
            this.§'#9§();
         }
         else
         {
            this.login.§="7§();
         }
      }
      
      protected function §[!6§(param1:Event) : void
      {
         this.§0"1§();
         this.§'%2§();
         this.connection = null;
         this.§2"]§ = true;
      }
      
      public function §0"1§() : void
      {
         if(this.connection.hasEventListener(Event.CLOSE))
         {
            this.connection.removeEventListener(Event.CLOSE,this.§[!6§);
         }
         if(this.connection.hasEventListener(Event.CONNECT))
         {
            this.connection.removeEventListener(Event.CONNECT,this.onConnected);
         }
         if(this.connection.§`$8§(IncomingClanMessage))
         {
            this.connection.removeListener(IncomingClanMessage,this.message.§1#H§);
         }
         if(this.connection.§`$8§(PostToClanChatResponse))
         {
            this.connection.removeListener(PostToClanChatResponse,this.common.§6#i§);
         }
      }
      
      public function §!N§() : Timer
      {
         return this.§1#]§;
      }
      
      private function §`%>§(param1:Boolean) : void
      {
         var _loc2_:§5&-§ = null;
         var _loc3_:Class = null;
         if(this.§+p§.length > 0)
         {
            for each(_loc2_ in this.§+p§)
            {
               for each(_loc3_ in _loc2_.responseClass)
               {
                  if(param1)
                  {
                     this.connection.addListener(_loc3_,this.onResponse);
                  }
                  else if(this.connection.§`$8§(_loc3_))
                  {
                     this.connection.removeListener(_loc3_,this.onResponse);
                  }
               }
            }
         }
      }
      
      private function § "9§(param1:Vector.<Class>) : §5&-§
      {
         var _loc2_:§5&-§ = null;
         var _loc3_:Class = null;
         loop0:
         for each(_loc2_ in this.§+p§)
         {
            var _loc6_:int = 0;
            var _loc7_:* = param1;
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(!(_loc2_.request is _loc3_));
            return _loc2_;
         }
         return null;
      }
      
      private function §^%-§() : void
      {
         var _loc1_:§5&-§ = this.§ "9§(new <Class>[LoginClanRequest]);
         if(_loc1_)
         {
            this.§-!d§(_loc1_);
         }
         _loc1_ = this.§ "9§(new <Class>[LoginJoinClanRequest]);
         if(_loc1_)
         {
            this.§-!d§(_loc1_);
         }
         _loc1_ = this.§ "9§(new <Class>[LoginCreateClanRequest]);
         if(_loc1_)
         {
            this.§-!d§(_loc1_);
         }
      }
      
      public function §1",§() : Boolean
      {
         return this.connection ? this.connection.§1",§() : false;
      }
      
      public function §[%N§() : void
      {
         if(this.connection)
         {
            this.§^%-§();
            this.§`%>§(false);
            try
            {
               this.connection.close();
            }
            catch(err:Error)
            {
            }
         }
         this.connection = null;
      }
      
      private function §'%2§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = 0;
         if(this.§+p§.length > 0)
         {
            _loc1_ = this.§+p§.length - 1;
            _loc2_ = _loc1_;
            while(_loc2_ >= 0)
            {
               this.§-!d§(this.§+p§[0]);
               _loc2_--;
            }
         }
      }
      
      public function § ,§(param1:§9$v§) : void
      {
         var _loc2_:InviteFriendToClan = null;
         _loc2_ = InviteFriendToClan(param1.message);
         §]#i§.§4$Y§(_loc2_.invite);
         this.§;"2§.dispatchEvent(new Event(§-#U§.§]#H§));
         var _loc3_:String = §0%§.format(§<"G§.§%! §("PLAYER_INVITE_YOU_IN_CLAN"),{
            "userName":_loc2_.invite.name,
            "clanName":_loc2_.invite.clanName
         });
         §8"%§.§?!W§.§!#S§(_loc3_);
      }
      
      public function get login() : §'#D§
      {
         return this.§]$s§;
      }
      
      public function get message() : §7$V§
      {
         return this.§`%I§;
      }
      
      public function get member() : §9%l§
      {
         return this.§ %K§;
      }
      
      public function get common() : §;#m§
      {
         return this.§7!t§;
      }
      
      public function get edit() : §>A§
      {
         return this.§7"C§;
      }
      
      public function get treasury() : §%$,§
      {
         return this.§ $F§;
      }
      
      public function getEventDispatcher() : IEventDispatcher
      {
         return this.§;"2§;
      }
   }
}

