package §=&!§
{
   import §"#x§.§'"$§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"Z§.§+$A§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §2!-§.§-!6§;
   import §2#H§.§!%C§;
   import §3"_§.*;
   import §=!p§.§1e§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §[%§.Dragon;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §4$z§
   {
      
      public var result:§<$Z§;
      
      public var status:§3$z§;
      
      public var reaction:int = 0;
      
      public var rating:int = 0;
      
      public var rankPoints:int = 0;
      
      public var money:int = 0;
      
      public var §;% §:int = 0;
      
      public var realMoney:uint = 0;
      
      public var exp:int = 0;
      
      public var §?#_§:int = 0;
      
      public var §-!K§:§<$!§;
      
      public var weapons:Vector.<§`%g§> = new Vector.<§`%g§>(0);
      
      public var §1"4§:Vector.<§]$X§> = new Vector.<§]$X§>(0);
      
      public var reagents:Vector.<§!%&§> = new Vector.<§!%&§>(0);
      
      public var §"%e§:Vector.<§0%=§> = new Vector.<§0%=§>(0);
      
      public var §8%I§:uint = 0;
      
      public var §<!s§:uint = 0;
      
      public var §`&>§:Vector.<int> = new Vector.<int>(0);
      
      public var totalDamageToPlayer:int = 0;
      
      public var totalDamageToBoss:int = 0;
      
      public var totalUsedItems:Array = [];
      
      public function §4$z§()
      {
         super();
      }
      
      public function toString() : String
      {
         return "BattleResultInfo{" + "result=" + String(this.result) + ",status=" + String(this.status) + ",reaction=" + String(this.reaction) + ",rating=" + String(this.rating) + ",rank points=" + String(this.rankPoints) + ",money=" + String(this.money) + ",bonusMoney=" + String(this.§;% §) + ",exp=" + String(this.exp) + ",bonusExp=" + String(this.§?#_§) + ",missionType=" + String(this.§-!K§) + ",newLevel=" + String(this.§8%I§) + ",moneyForNewLevel=" + String(this.§<!s§) + ",totalDamageToPlayer=" + String(this.totalDamageToPlayer) + ",totalDamageToBoss=" + String(this.totalDamageToBoss) + ",totalUsedItems=" + String(this.totalUsedItems) + "}";
      }
      
      public function copy() : §4$z§
      {
         var _loc1_:§4$z§ = new §4$z§();
         _loc1_.result = this.result;
         _loc1_.status = this.status;
         _loc1_.reaction = this.reaction;
         _loc1_.rating = this.rating;
         _loc1_.rankPoints = this.rankPoints;
         _loc1_.money = this.money;
         _loc1_.§;% § = this.§;% §;
         _loc1_.realMoney = this.realMoney;
         _loc1_.exp = this.exp;
         _loc1_.§?#_§ = this.§?#_§;
         _loc1_.§-!K§ = this.§-!K§;
         _loc1_.weapons = this.weapons.concat();
         _loc1_.§1"4§ = this.§1"4§.concat();
         _loc1_.reagents = this.reagents.concat();
         _loc1_.§`&>§ = this.§`&>§.concat();
         _loc1_.§"%e§ = this.§"%e§.concat();
         _loc1_.§8%I§ = this.§8%I§;
         _loc1_.§<!s§ = this.§<!s§;
         _loc1_.totalDamageToPlayer = this.totalDamageToPlayer;
         _loc1_.totalDamageToBoss = this.totalDamageToBoss;
         return _loc1_;
      }
   }
}

