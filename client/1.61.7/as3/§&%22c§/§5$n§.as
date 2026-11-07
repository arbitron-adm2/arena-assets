package §&"c§
{
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §%L§.§'$T§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §0!Y§.§!$%§;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §2#x§.§[#Z§;
   import §4!K§.*;
   import §7$1§.StickyMine;
   import §8$Z§.*;
   import §<%E§.§,$2§;
   import §>!_§.§'!&§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §5$n§
   {
      
      public var ammoClassName:String;
      
      public var damage:§&$2§;
      
      public var damageRadius:§&$2§;
      
      public var explosionRadius:§&$2§;
      
      public var pushForce:§&$2§;
      
      public var ammosByShot:§&$2§;
      
      public function §5$n§()
      {
         super();
      }
      
      public static function §<#=§(param1:String, param2:int, param3:int, param4:int, param5:int = 0, param6:int = 1) : §5$n§
      {
         var _loc7_:§5$n§ = new §5$n§();
         _loc7_.ammoClassName = param1;
         _loc7_.damage = new §&$2§(param2);
         _loc7_.damageRadius = new §&$2§(param3);
         _loc7_.explosionRadius = new §&$2§(param4);
         _loc7_.pushForce = new §&$2§(param5);
         _loc7_.ammosByShot = new §&$2§(param6);
         return _loc7_;
      }
      
      public function set clipClassName(param1:String) : void
      {
         this.ammoClassName = param1;
      }
      
      public function clone() : §5$n§
      {
         var _loc1_:§5$n§ = new §5$n§();
         var _loc2_:§&$2§ = new §&$2§(0);
         _loc1_.ammoClassName = this.ammoClassName;
         _loc1_.damage = this.damage ? new §&$2§(this.damage.value) : _loc2_;
         _loc1_.damageRadius = this.damageRadius ? new §&$2§(this.damageRadius.value) : _loc2_;
         _loc1_.explosionRadius = this.explosionRadius ? new §&$2§(this.explosionRadius.value) : _loc2_;
         _loc1_.pushForce = this.pushForce ? new §&$2§(this.pushForce.value) : _loc2_;
         _loc1_.ammosByShot = new §&$2§(this.ammosByShot ? this.ammosByShot.value : 1);
         return _loc1_;
      }
   }
}

