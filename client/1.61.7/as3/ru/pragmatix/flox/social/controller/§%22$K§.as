package ru.pragmatix.flox.social.controller
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&!m§.§;#[§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2#i§.§9##§;
   import §3#a§.§-!`§;
   import §4#`§.§+!l§;
   import §4f§.§-&§;
   import §7!B§.§6#I§;
   import §7$t§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<"L§.§##-§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=#g§.*;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§,! §;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.*;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import com.greensock.events.LoaderEvent;
   import config.§28§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"$K§ extends §#$K§
   {
      
      private var §5"e§:URLLoader = new URLLoader();
      
      public function §"$K§(param1:§%"'§)
      {
         super(param1);
      }
      
      protected function §2#^§(param1:URLRequest, param2:Function, param3:Function, param4:§,$2§) : void
      {
         this.load(§7#E§.XML,param1,param2,param3,param4);
      }
      
      protected function loadJson(param1:URLRequest, param2:Function, param3:Function, param4:§,$2§, param5:Boolean = true) : void
      {
         this.load(§7#E§.JSON,param1,param2,param3,param4,param5);
      }
      
      private function load(param1:§7#E§, param2:URLRequest, param3:Function, param4:Function, param5:§,$2§, param6:Boolean = true) : void
      {
         this.§5"e§ = new URLLoader();
         var _loc7_:Function = §1%"§.§]$<§(this.§3#0§,this,[param1,param3,param4,param5,param6],true);
         §""n§.§?%D§(this.§5"e§,[Event.COMPLETE,IOErrorEvent.IO_ERROR,SecurityErrorEvent.SECURITY_ERROR],_loc7_);
         this.§5"e§.load(param2);
      }
      
      protected function §^#&§(param1:§7#E§, param2:URLRequest, param3:Function, param4:Function, param5:§,$2§, param6:Boolean = true, param7:Boolean = true) : void
      {
         this.§5"e§ = new URLLoader();
         var _loc8_:Function = §1%"§.§]$<§(parse,this,[param1,param3,param4,param5,param6,param7],true);
         §""n§.§?%D§(this.§5"e§,[Event.COMPLETE,IOErrorEvent.IO_ERROR,SecurityErrorEvent.SECURITY_ERROR],_loc8_);
         this.§5"e§.load(param2);
      }
      
      protected function §3#0§(param1:Event, param2:§7#E§, param3:Function, param4:Function, param5:§,$2§, param6:Boolean = true) : void
      {
         parse(param1,param2,§1%"§.§]$<§(this.§,%X§,this,[param3],true),param4,param5,param6);
      }
      
      private function §,%X§(param1:Object, param2:§,$2§, param3:Function, param4:Function) : void
      {
         if(param2.success && param4 != null)
         {
            param4(param1,param2);
         }
         if(param3 != null)
         {
            param3(param2);
         }
      }
      
      protected function §1%$§(param1:String, param2:Object, param3:URLVariables, param4:Array) : void
      {
         param3[param1] = param2.toString();
         param4.push(param1 + "=" + param2.toString());
      }
      
      protected function §>#1§(param1:Object, param2:URLVariables, param3:Array) : void
      {
         var _loc4_:String = null;
         if(param1)
         {
            for(_loc4_ in param1)
            {
               if(param1[_loc4_] != null)
               {
                  this.§1%$§(_loc4_,param1[_loc4_],param2,param3);
               }
            }
         }
      }
      
      protected function §;%'§(param1:String, param2:Object, param3:Function, param4:Function, param5:§,$2§ = null, param6:Boolean = true) : void
      {
         if(!param5)
         {
            param5 = new §,$2§();
         }
         param5.§""h§ = param1;
         this.§^#&§(§7#E§.JSON,this.createRequest(param1,param2,§7#E§.JSON),param3,param4,param5,param6);
      }
      
      protected function loadJsonRequest(param1:String, param2:Object, param3:Function, param4:Function, param5:§,$2§ = null, param6:Boolean = true) : void
      {
         if(!param5)
         {
            param5 = new §,$2§();
         }
         param5.§""h§ = param1;
         this.loadJson(this.createRequest(param1,param2,§7#E§.JSON),param3,param4,param5,param6);
      }
      
      protected function createRequest(param1:String, param2:Object = null, param3:§7#E§ = null) : URLRequest
      {
         throw new IllegalOperationError();
      }
      
      protected function §<&I§(param1:Timer, param2:§;!y§, param3:Array, param4:Function) : void
      {
         throw new Error("Abstract method call!");
      }
      
      protected function §5$[§(param1:Array) : Array
      {
         var _loc4_:uint = 0;
         var _loc5_:Array = null;
         var _loc2_:Array = [];
         var _loc3_:uint = 0;
         while(_loc3_ < Math.ceil(param1.length / §7%p§()))
         {
            _loc4_ = _loc3_ * §7%p§();
            _loc5_ = param1.slice(_loc4_,_loc4_ + §7%p§());
            _loc2_.push(_loc5_.toString());
            _loc3_++;
         }
         return _loc2_;
      }
      
      override public function §^!3§(param1:Array, param2:Function) : void
      {
         var _loc3_:Array = this.§5$[§(param1);
         var _loc4_:§;!y§ = new §;!y§();
         var _loc5_:Timer = new Timer(§'!1§());
         §""n§.single(_loc5_,TimerEvent.TIMER,this.§2"Z§,this,[_loc5_,_loc4_,_loc3_,param2],true);
         _loc5_.start();
         this.§<&I§(_loc5_,_loc4_,_loc3_,param2);
      }
      
      protected function §9%u§(param1:§;!y§, param2:Number, param3:Timer, param4:Array, param5:Function) : void
      {
         if(this.§@&6§() - param2 < §'!1§())
         {
            this.§<&I§(param3,param1,param4,param5);
         }
      }
      
      protected function §2"Z§(param1:TimerEvent, param2:Timer, param3:§;!y§, param4:Array, param5:Function) : void
      {
         this.§<&I§(param2,param3,param4,param5);
      }
      
      protected function §@&6§() : Number
      {
         return new Date().getTime();
      }
   }
}

