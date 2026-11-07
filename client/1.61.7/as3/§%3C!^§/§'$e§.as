package §<!^§
{
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §'$e§ extends §["l§ implements §2%F§
   {
      
      private var duration:§&$2§;
      
      private var §6"w§:Boolean = false;
      
      private var setup:Boolean = false;
      
      public function §'$e§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§, param7:Number = 1, param8:Boolean = true, param9:uint = 5)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,-1);
         §§push(§§findproperty(§,q§));
         var _temp_2:* = new <§-&§>[§-&§.IGNORE_MAGNET,§-&§.CAPTURABLE];
         §§pop().§,q§ = new <§-&§>[§-&§.IGNORE_MAGNET,§-&§.CAPTURABLE];
         §##[§ = -1;
         canBeDamaged = true;
         §`4§ = §5$=§;
         this.duration = new §&$2§(param9);
         Application.scene.addEventListener(§0%v§.SOT,this.onNextTurn);
         if(physicModel.§2"[§(x,y))
         {
            explode(null);
         }
      }
      
      private function onNextTurn(param1:Event) : void
      {
         if(this.§6"w§)
         {
            §1"-§.explode(§;n§.§7q§,x,y,12);
            disposed = true;
         }
         if(§8"%§.§?!W§.§4"m§.activeSquad == owner.squad)
         {
            this.§6"w§ = true;
         }
      }
      
      override protected function onCollision(param1:CollisionEvent) : void
      {
         if(!this.setup && param1.other != null)
         {
            explode(param1.other);
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new § "H§(physParams,0.3,0);
         physicModel.addEventListener(§9#1§.§@"-§,this.§^$e§);
      }
      
      protected function §^$e§(param1:Event) : void
      {
         stable = true;
         this.setup = true;
         if(§]$I§)
         {
            if(§]$I§ is §;"E§)
            {
               §;"E§(§]$I§).remove();
            }
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!§+!x§)
         {
            this.checkTargets();
         }
      }
      
      private function checkTargets() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(this.setup)
         {
            _loc1_ = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
            for each(_loc2_ in _loc1_)
            {
               if(!_loc2_.disposed)
               {
                  explode(_loc2_);
                  break;
               }
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.onNextTurn);
         physicModel.removeEventListener(§9#1§.§@"-§,this.§^$e§);
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return paramSet.damageRadius.value + 5;
      }
   }
}

