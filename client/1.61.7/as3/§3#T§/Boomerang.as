package §3#T§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§7%f§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.social.Social;
   
   public class Boomerang extends §6#I§
   {
      
      private static const §!#?§:Number = 0.5;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_ONE_180:Number = Math.PI / 180;
      
      private var §,-§:Boolean = false;
      
      private var paramSet:§5$n§;
      
      private var §5"8§:Boolean;
      
      private var knockHat:Boolean;
      
      private var secondHitBonus:uint;
      
      public function Boomerang(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:Boolean, param6:uint, param7:Boolean)
      {
         super(param1,param1.x,param1.y,false);
         §,%S§ = true;
         §6""§ = true;
         this.paramSet = param2;
         this.§5"8§ = param5;
         this.knockHat = param7;
         this.secondHitBonus = param6;
         §@%;§.play(§`!v§.§;$N§);
         initialize(§"$C§(param3,0),param2.ammoClassName);
         this.clip.rotation = param3 * 180 / Math.PI;
         physParams.addForce(§]%G§.§-4§);
         §^"F§(param3,param4);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §5$=§;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:uint = 0;
         var _loc4_:Boolean = false;
         if(this.§,-§)
         {
            if(param1.other == owner && !§8"%§.§?!W§.§4"m§.§[!W§())
            {
               dispatchEvent(new Event(§0%v§.BOOMERANG_CAUGHT));
               disposed = true;
            }
            else if(param1.other == null)
            {
               inflictDamage(param1.other,this.paramSet.damage.value * §!#?§,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
               §1"-§.explode(§;n§.§7q§,x,y,this.paramSet.explosionRadius.value,§`!v§.§2#j§);
               disposed = true;
            }
         }
         else
         {
            _loc2_ = param1.other as §+%]§;
            _loc3_ = this.paramSet.damage.value + (Boolean(_loc2_) && !this.§5"8§ ? this.secondHitBonus : 0);
            inflictDamage(param1.other,_loc3_,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            §1"-§.explode(§;n§.§7q§,x,y,this.paramSet.explosionRadius.value,§`!v§.§2#j§);
            if(this.§5"8§)
            {
               §^"F§(-PI_HALF - §^$y§.sign(speedX) * speed / 2 * PI_ONE_180,speed / 3 * 2);
               this.§,-§ = true;
               if(Boolean(this.knockHat) && Boolean(_loc2_) && _loc2_.attributes.hp.§@#@§() > 0)
               {
                  _loc2_.buffs.place(new §7%f§());
               }
            }
            else
            {
               if(Boolean(this.knockHat) && Boolean(_loc2_) && _loc2_.buffs.hasBuff(§7%f§.NAME))
               {
                  _loc4_ = _loc2_.§=D§(_loc2_.direction * -2,-5);
                  if((_loc4_) && owner.squad.isLocal() && !owner.§+&,§(_loc2_))
                  {
                     §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§6%C§);
                  }
               }
               disposed = true;
            }
            physicModel.stop();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         removeEventListener(§0%v§.§+&=§,this.onCollide);
      }
      
      public function get canBeCaught() : Boolean
      {
         return this.§,-§;
      }
   }
}

