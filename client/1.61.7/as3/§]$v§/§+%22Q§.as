package §]$v§
{
   import §"$+§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%$n§.§?,§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.PumpReactionRatesResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §+"Q§ extends §?,§
   {
      
      private static const §+!L§:uint = 8;
      
      private static const §5_§:uint = 2;
      
      private static const §-!B§:§&$2§ = new §&$2§(3);
      
      private var paramSetEx:§5$n§;
      
      private var §!$G§:Number;
      
      private var §;G§:Vector.<Number> = new Vector.<Number>();
      
      private var §06§:Vector.<§+%]§> = new Vector.<§+%]§>();
      
      private var §]a§:Vector.<uint> = new Vector.<uint>();
      
      private var §2%'§:Vector.<§9"§> = new Vector.<§9"§>();
      
      public function §+"Q§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:§5$n§)
      {
         super(param1,param2,param3,param4);
         _damageType = §&!E§.COLD;
         this.paramSetEx = param5;
         §`4§ = §]$S§;
         this.§'% §(param4);
      }
      
      private function §'% §(param1:uint) : void
      {
         this.§!$G§ = 0.8 * param1;
         var _loc2_:Number = Math.PI / 3;
         this.§;G§[0] = _loc2_;
         var _loc3_:uint = 1;
         while(_loc3_ < 6)
         {
            this.§;G§[_loc3_] = this.§;G§[_loc3_ - 1] + _loc2_;
            _loc3_++;
         }
      }
      
      override protected function explode(param1:§&"T§) : void
      {
         if(param1 != null && param1 is §+%]§)
         {
            §+%]§(param1).buffs.place(new §+m§(owner));
         }
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.MEDIUM,x,y,paramSet.damage.value,§`!v§.§ !h§);
         inflictDamage(param1,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % §+!L§ == 0)
         {
            this.§-!D§();
         }
      }
      
      private function §-!D§() : void
      {
         var _loc1_:uint = this.§2%'§.length;
         var _loc2_:uint = 0;
         while(_loc2_ < this.§;G§.length)
         {
            this.§2%'§[_loc1_ + _loc2_] = new §9"§(owner,x,y,this.paramSetEx,this.§;G§[_loc2_],this.§!$G§);
            this.§2%'§[_loc1_ + _loc2_].addEventListener(§0%v§.§+&=§,this.§"B§,false,0,true);
            this.§;G§[_loc2_] += Math.PI / 4;
            _loc2_++;
         }
         §@%;§.play(§`!v§.§>#+§);
      }
      
      private function §"B§(param1:CollisionEvent) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:int = 0;
         if(param1.other is §+%]§)
         {
            _loc3_ = §+%]§(param1.other);
            if(_loc3_.squad.getTeamId() != owner.squad.getTeamId())
            {
               _loc4_ = this.§06§.indexOf(_loc3_);
               if(_loc4_ == -1)
               {
                  _loc4_ = int(this.§06§.length);
                  this.§06§[_loc4_] = _loc3_;
                  this.§]a§[_loc4_] = 0;
               }
               this.§=#9§(_loc4_);
            }
         }
         param1.currentTarget.removeEventListener(§0%v§.§+&=§,this.§"B§);
         var _loc2_:int = 0;
         while(_loc2_ < this.§2%'§.length)
         {
            if(§9"§(param1.currentTarget) == this.§2%'§[_loc2_])
            {
               this.§2%'§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
         if(this.§2%'§.length == 0)
         {
            this.§06§.length = 0;
            this.§]a§.length = 0;
         }
      }
      
      private function §=#9§(param1:uint) : void
      {
         var _loc2_:Vector.<uint> = this.§]a§;
         var _loc3_:uint;
         var _loc4_:Number = _loc2_[_loc3_ = param1] + 1;
         _loc2_[_loc3_] = _loc4_;
         if(this.§]a§[param1] == §5_§)
         {
            this.§06§[param1].buffs.place(new §[&;§(§-!B§.value));
         }
      }
   }
}

