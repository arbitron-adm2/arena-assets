package §[!O§
{
   import § !P§.*;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&%X§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §,"v§.§9%d§;
   import §0!Y§.§!$%§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#x§.§[#Z§;
   import §3"_§.*;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!!§.§2&F§;
   import §4!K§.*;
   import §4#`§.*;
   import §4f§.§-&§;
   import §5%S§.§>&-§;
   import §6#Z§.§&!Z§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9![§.§^§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<!W§.§9%,§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6!u§
   {
      
      protected var §?!'§:uint = 0;
      
      protected var §^%s§:uint = 0;
      
      protected var §,$>§:Object = {};
      
      public function §6!u§()
      {
         super();
      }
      
      public function § #w§(param1:uint, param2:Array) : void
      {
         var _loc3_:Array = null;
         if(param1 >= this.§?!'§)
         {
            if(param2 != null && param2.length > 0)
            {
               _loc3_ = this.§,$>§[param1] ? (this.§,$>§[param1] as Array).concat(param2) : param2;
               this.§,$>§[param1] = §3#N§.apply(_loc3_);
            }
            this.§?!'§ = param1;
         }
      }
      
      public function reset() : void
      {
         this.§^%s§ = 0;
         this.§?!'§ = 0;
         this.§,$>§ = {};
      }
      
      public function run() : void
      {
         Application.scene.addEventListener(§!$%§.ACTION,this.§&=§);
      }
      
      public function stop() : void
      {
         Application.scene.removeEventListener(§!$%§.ACTION,this.§&=§);
      }
      
      protected function §&=§(param1:§!$%§) : void
      {
         this.§ #w§(param1.frame,param1.actions);
      }
      
      public function §<#Q§(param1:uint) : void
      {
         if(param1 > this.§?!'§)
         {
            this.§?!'§ = param1;
         }
      }
      
      public function §7#k§() : int
      {
         return this.§?!'§;
      }
   }
}

