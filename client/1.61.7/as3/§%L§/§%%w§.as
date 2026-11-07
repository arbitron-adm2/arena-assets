package §%L§
{
   import § "%§.§0$[§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§ "&§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §&!m§.§;#[§;
   import §&"R§.*;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&#E§.MsgBoxSocialSelect;
   import §&#W§.*;
   import §&#h§.*;
   import §&$Y§.§&!R§;
   import §&&6§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4!!§.§%$$§;
   import §4'§.§#"l§;
   import §5!,§.§9$h§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8$V§.§`"c§;
   import §9%W§.§!"G§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §>%I§.§-#f§;
   import §>%I§.§`!g§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §?>§.§]!V§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^!]§.§-$w§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.BarriersLauncher;
   import ru.pragmatix.wormix.weapons.Bazooka;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   import ru.pragmatix.wormix.weapons.BoomerangWeapon;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.CarpetBazooka;
   import ru.pragmatix.wormix.weapons.CircusCannon;
   import ru.pragmatix.wormix.weapons.ClusterGrenade;
   import ru.pragmatix.wormix.weapons.Crossbow;
   import ru.pragmatix.wormix.weapons.DiscLauncher;
   import ru.pragmatix.wormix.weapons.DrillGun;
   import ru.pragmatix.wormix.weapons.ElectricHarpoon;
   import ru.pragmatix.wormix.weapons.FireThrower;
   import ru.pragmatix.wormix.weapons.Firework;
   import ru.pragmatix.wormix.weapons.FreezingBazooka;
   import ru.pragmatix.wormix.weapons.Girder;
   import ru.pragmatix.wormix.weapons.Grenade;
   import ru.pragmatix.wormix.weapons.GroundBreaker;
   import ru.pragmatix.wormix.weapons.Helipad;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   import ru.pragmatix.wormix.weapons.HomingBazooka;
   import ru.pragmatix.wormix.weapons.HoppingWeapon;
   import ru.pragmatix.wormix.weapons.Jetpack;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Molotov;
   import ru.pragmatix.wormix.weapons.Mortar;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.RopeGun;
   import ru.pragmatix.wormix.weapons.SheepWeapon;
   import ru.pragmatix.wormix.weapons.Shotgun;
   import ru.pragmatix.wormix.weapons.ShurikenToss;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.StickyGrenade;
   import ru.pragmatix.wormix.weapons.SuperSheepWeapon;
   import ru.pragmatix.wormix.weapons.SwitchTurn;
   import ru.pragmatix.wormix.weapons.TeleThrower;
   import ru.pragmatix.wormix.weapons.Teleport;
   import ru.pragmatix.wormix.weapons.UfoPad;
   import ru.pragmatix.wormix.weapons.Uzi;
   import ru.pragmatix.wormix.weapons.WatermelonWeapon;
   
   public class §%%w§ extends § "&§
   {
      
      public static var §7F§:§%%w§;
      
      private static var §'"0§:int = 99;
      
      private var server:§#&%§;
      
      private var sessionKey:String = "";
      
      private var msg:§,#W§;
      
      private var §!#V§:Boolean;
      
      private var §0%S§:int = 0;
      
      private var §%"A§:Boolean = false;
      
      public function §%%w§(param1:§#&%§)
      {
         super(param1.§&![§(),param1.§0!+§(),new Ping(),6000,true);
         this.server = param1;
         §7F§ = this;
      }
      
      public static function §,U§(param1:Object) : void
      {
         §7F§.send(param1);
      }
      
      public static function §##$§(param1:Class, param2:Function) : void
      {
         §7F§.addListener(param1,param2,false,0,true);
      }
      
      public static function §-"j§(param1:Class, param2:Function) : void
      {
         §7F§.removeListener(param1,param2);
      }
      
      public static function §`$8§(param1:Class) : void
      {
         §7F§.§`$8§(param1);
      }
      
      public static function §&![§() : String
      {
         return §7F§.§&![§();
      }
      
      public static function §7!7§() : uint
      {
         return §7F§.§7!7§();
      }
      
      public function §2$G§() : void
      {
         if(Boolean(§8"%§.§?!W§.§^!U§()) && !§8"%§.§?!W§.§^!U§().online)
         {
            §8"%§.§?!W§.§>$y§("рву Мейн коннект...");
         }
         §1%"§.delay(function():void
         {
            close();
            closeHandler(null);
         },this,1000);
      }
      
      override public function close() : void
      {
         super.close();
      }
      
      override public function connect() : void
      {
         super.connect();
      }
      
      private function §]"§() : void
      {
         if(this.§!#V§)
         {
            §8"%§.§]$s§.relogin();
            this.§0%S§ = 0;
            this.§!#V§ = false;
         }
      }
      
      override protected function tryConnectTo(param1:Array) : void
      {
         if(this.§!#V§)
         {
            if(this.§0%S§ > §'"0§)
            {
               if(ExternalInterface.available)
               {
                  ExternalInterface.call("reloadPage");
                  return;
               }
               this.§0%S§ = 0;
            }
            ++this.§0%S§;
            this.§9$R§();
         }
         super.tryConnectTo(param1);
      }
      
      override protected function §;;§(param1:Event, param2:Array) : void
      {
         super.§;;§(param1,param2);
         dispatchEvent(param1);
      }
      
      override protected function §>!e§(param1:Event) : void
      {
         super.§>!e§(param1);
         if(Boolean(this.msg) && this.msg.isShown())
         {
            this.msg.hide();
         }
         if(Boolean(§8"%§.§?!W§.§4"m§) && !§8"%§.§?!W§.§^!U§().online)
         {
            §8"%§.§?!W§.§>$y§("Мейн коннект установлен!");
         }
         this.§]"§();
         dispatchEvent(param1);
      }
      
      override protected function closeHandler(param1:Event = null) : void
      {
         this.§%"A§ = false;
         if(§8"%§.§]$s§)
         {
            this.§!#V§ = true;
         }
         super.closeHandler(param1);
         this.§9$R§();
      }
      
      override protected function §>"Z§(param1:IOErrorEvent) : void
      {
         super.§>"Z§(param1);
      }
      
      override protected function §9$R§() : void
      {
         var _loc1_:String = null;
         if(!§8"%§.§?!W§.inBattle)
         {
            if(this.§!#V§)
            {
               _loc1_ = §0%§.format(§0$N§.SERVER_RECONNECTION_TRY,{"value":this.§0%S§});
            }
            else
            {
               _loc1_ = §0$N§.MAIN_SERVER_CONNECTION_CLOSED;
            }
         }
         if(_loc1_)
         {
            if(Boolean(this.msg) && this.msg.isShown())
            {
               this.msg.hide();
            }
            this.msg = §,#W§.§'!+§(§0"-§.TITLE_ERROR,_loc1_,§,#W§.§0!V§);
            this.msg.show();
         }
      }
      
      public function §>$@§() : void
      {
         this.§]">§();
         if(Boolean(§8"%§.§?!W§) && Boolean(§8"%§.§?!W§.§4"m§))
         {
            §8"%§.§?!W§.§`$d§(§<$Z§.§!M§,§3$z§.§'$v§);
         }
         if(§8"%§.§@1§ != null)
         {
            §8"%§.§@1§.§3!B§();
         }
         if(§8"%§.§!&I§ != null)
         {
            §8"%§.§!&I§.§[%N§();
         }
      }
      
      public function §]">§(param1:String = "") : void
      {
         var message:String = param1;
         §6#3§();
         this.close();
         if(message)
         {
            §1%"§.delay(function():void
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,message,§,#W§.§0!V§);
            },this,500);
         }
      }
      
      public function §1$g§(param1:String) : void
      {
         this.sessionKey = param1;
         this.§%"A§ = true;
      }
      
      public function §?$X§() : String
      {
         return this.sessionKey;
      }
      
      public function get § "`§() : Boolean
      {
         return this.§%"A§;
      }
   }
}

