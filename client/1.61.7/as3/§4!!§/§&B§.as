package §4!!§
{
   import § $q§.§-%f§;
   import § &5§.§=#P§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §-!U§.§&%j§;
   import §0%[§.§0%§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §5!9§.§6$,§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.*;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&B§ extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      protected var §'k§:§#Z§;
      
      public function §&B§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint, param7:uint, param8:uint = 300, param9:§&!E§ = null)
      {
         var _loc10_:Number = NaN;
         super(param1,param2,param3,false,param8,param9);
         this.paramSet = param4;
         if(param7 > 0)
         {
            this.§'k§ = new §#Z§(this,param5,param6,param7);
         }
         _loc10_ = param7 ? this.§'k§.§!#T§ : param5;
         var _loc11_:Number = param7 > §#Z§.ZERO ? §8"%§.randomSeed.§,!q§(0,50) : 25;
         initialize(§"$C§(_loc10_,_loc11_,new Point(param2,param3)),param4.ammoClassName);
         §`4§ = §]$S§;
         §^"F§(_loc10_,param6);
         Application.scene.§@$I§.§1$+§(this);
         if(!§8"%§.§&S§.§5V§ || !param4.ammoClassName)
         {
            this.attachTrail();
         }
      }
      
      protected function attachTrail() : void
      {
         if(disposed)
         {
            return;
         }
         §1"-§.attachTrail(this,10,6,11468799,16777215,1,false,0.5);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(disposed)
         {
            return;
         }
         if(this.§'k§)
         {
            this.§'k§.§!!>§();
         }
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         if(disposed)
         {
            return;
         }
         super.§%$e§(param1);
         this.§,"4§(param1);
      }
      
      protected function §,"4§(param1:CollisionEvent) : void
      {
         inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
         §@%;§.play(§`!v§.§`'§);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§'k§)
         {
            this.§'k§.clear();
            this.§'k§ = null;
         }
      }
   }
}

