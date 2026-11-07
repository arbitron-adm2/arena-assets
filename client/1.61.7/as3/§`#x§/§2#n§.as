package §`#x§
{
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §"#]§.*;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§#&%§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §'&"§.TutorialCard;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.§3%9§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#T§.§1"R§;
   import §3#a§.§-#M§;
   import §3#a§.§[&A§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=$#§.§1!$§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.messages.clans.response.PostClanNewsResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.pvp.messages.ex.WidenSearch;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2#n§ extends §0"Y§
   {
      
      private static const log:§&`§ = new §&`§(§2#n§);
      
      private static const §@Z§:uint = 6 * 1000;
      
      private static const §<"m§:uint = 10;
      
      private var §;u§:§5$t§;
      
      private var §!#u§:Timer;
      
      public function §2#n§()
      {
         super();
      }
      
      public static function §?#<§(param1:§<#&§, param2:int = 0) : §]$d§
      {
         var _loc3_:§]$d§ = new §]$d§(§&$a§.§#"g§);
         _loc3_.online = true;
         _loc3_.§>&§ = §#&%§.PVP;
         _loc3_.options = § "^§.§4#8§(_loc3_.options,§ "^§.§6!R§,param1.id == §-"P§.§,%@§);
         _loc3_.questId = param2;
         _loc3_.wager = param1;
         return _loc3_;
      }
      
      private static function §"#?§(param1:§]$d§) : int
      {
         if(param1.§+#<§())
         {
            return §8"%§.§"!§.§4%'§();
         }
         if(param1.§<",§())
         {
            return §8"%§.§"!§.§8"G§();
         }
         if(param1.§,$,§())
         {
            return §8"%§.§"!§.§4#A§();
         }
         if(param1.§@%&§())
         {
            return §8"%§.§"!§.§3<§();
         }
         return §8"%§.§"!§.§0$?§(param1);
      }
      
      public function §`";§(param1:§<#&§, param2:int = 0) : Boolean
      {
         var _loc3_:int = 0;
         if(state == §"$r§.READY && !Application.isUserBusy() && Boolean(param1))
         {
            Application.setUserBusy(true);
            info = §?#<§(param1,param2);
            info.mapId = §"#?§(info);
            if(§8"%§.§&S§.§%$2§())
            {
               _loc3_ = §#$R§.§,p§(param1.id,Application.userProfile.§7$F§().length);
               Application.userProfile.§3%^§().§-&,§(_loc3_,true);
            }
            connect(info.§>&§,this.§#t§,§4#e§);
            return true;
         }
         return false;
      }
      
      override protected function §,!1§(param1:§"$r§) : void
      {
         super.§,!1§(param1);
         if(param1 == §"$r§.READY)
         {
            if(Boolean(this.§;u§) && this.§;u§.isShown())
            {
               this.§;u§.hide();
            }
         }
      }
      
      override protected function §1$h§(param1:§"$r§) : void
      {
         super.§1$h§(param1);
         if(param1 == §"$r§.§#!D§)
         {
            if(this.§!#u§)
            {
               this.§!#u§.removeEventListener(TimerEvent.TIMER,this.§?!6§);
               this.§!#u§.stop();
               this.§!#u§ = null;
            }
         }
      }
      
      private function §#t§() : void
      {
         log.info("Отправка запроса на бой","PVP");
         this.§1&;§();
         §§push(§§findproperty(§#$;§));
         §§push(§&3§);
         var _loc1_:CreateBattleRequest = §§pop().§#$;§(§§pop(),new <uint>[Application.userProfile.getId()],info.mapId,info.wager,info.missionIds,info.options);
         §2%A§ = _loc1_;
         log.info(_loc1_,"PVP");
         §#!t§();
         §`!J§.send(_loc1_);
         this.§!#u§ = new Timer(§@Z§,§<"m§);
         this.§!#u§.addEventListener(TimerEvent.TIMER,this.§?!6§);
         this.§!#u§.start();
         if(info.§@%&§())
         {
            §8"%§.§%$r§.§13§();
         }
      }
      
      public function §?"d§() : void
      {
         if(§2%A§)
         {
            log.info("переОтправка запроса на бой","PVP");
            this.§1&;§();
            §`!J§.send(§2%A§);
            if(state != §"$r§.§#!D§)
            {
               §#!t§();
               if(!this.§!#u§ || !this.§!#u§.running)
               {
                  this.§!#u§ = new Timer(§@Z§,§<"m§);
                  this.§!#u§.addEventListener(TimerEvent.TIMER,this.§?!6§);
                  this.§!#u§.start();
               }
            }
         }
      }
      
      private function §?!6§(param1:TimerEvent = null) : void
      {
         log.info("Расширение поиска","PVP");
         §`!J§.send(new WidenSearch());
      }
      
      private function §1&;§() : void
      {
         if(!this.§;u§)
         {
            this.§;u§ = new §5$t§(§5$t§.§^$k§,§9"T§,false);
            this.§;u§.addEventListener(§4$T§.CANCEL_BATTLE_REQUEST,function(param1:Event):void
            {
               log.info("Ожидание отменено","PVP");
               if(state == §"$r§.§#!D§ || state == §"$r§.§;#Z§)
               {
                  cancelBattle();
               }
            });
         }
         this.§;u§.show();
      }
      
      override protected function § !O§(param1:§9$v§) : void
      {
         var _loc2_:BattleCreated = null;
         var _loc3_:Vector.<UserProfile> = null;
         super.§ !O§(param1);
         if(state == §"$r§.§#!D§)
         {
            if(Boolean(this.§;u§) && this.§;u§.isVisible())
            {
               this.§;u§.§<%o§(true);
            }
            log.info("Бой создан, загрузка ресурсов","PVP");
            §]$"§(§"$r§.§;#Z§);
            _loc2_ = BattleCreated(param1.message);
            info.seed = _loc2_.seed;
            info.battleId = _loc2_.battleId;
            info.mapId = _loc2_.mapId;
            info.wager = _loc2_.wager;
            info.reagentsForBattle = §#$z§.§[%$§(_loc2_.reagentsForBattle);
            info.questId = _loc2_.questId;
            info.options = § "^§.§4#8§(info.options,§ "^§.§6!R§,info.§@%&§());
            if(info.§@%&§())
            {
               §3%9§.§6$H§(_loc2_.playerStructs,info);
            }
            else if(info.§<",§())
            {
               §8"%§.§?$5§.§1"A§(_loc2_.playerStructs,info);
            }
            else if(info.§+#<§())
            {
               §8"%§.§'%;§.§!!8§(_loc2_.playerStructs,info);
            }
            else
            {
               §-c§(_loc2_.playerStructs);
            }
            _loc3_ = info.§6"M§().concat(info.§="T§()) as Vector.<UserProfile>;
            §<$A§.load(info,_loc3_,this.§0"A§,§,"^§);
         }
         else
         {
            log.info("Бой не создан: неправильное состояние","PVP");
         }
      }
      
      private function §0"A§(param1:§0&$§) : void
      {
         var scene:§0&$§ = param1;
         if(state == §"$r§.§;#Z§)
         {
            log.info("Ресурсы карты загружены","PVP");
            if(info.§<",§())
            {
               §[&A§.load(info.mapId,function():void
               {
                  startBattle(scene);
               },this.§&9§);
            }
            else if(info.§@%&§())
            {
               §8"%§.§%$r§.§9#U§(info.§6"M§()[0].getId(),function():void
               {
                  startBattle(scene);
               });
            }
            else
            {
               this.startBattle(scene);
            }
         }
         else
         {
            log.info("Ресурсы карты (" + info.mapId + ") не загружены: неправильное состояние","PVP");
         }
      }
      
      private function startBattle(param1:§0&$§) : void
      {
         var _loc2_:§]$d§ = info;
         _loc2_.scene = param1;
         §38§ = false;
         §]$"§(§"$r§.READY);
         §8"%§.§?!W§.§[#1§(_loc2_,§`!J§);
      }
      
      protected function §&9§() : void
      {
         log.info("Не удалось загрузить ресурсы для карты " + info.mapId,"PVP");
         cancelBattle();
      }
   }
}

