package §9"-§
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class §?!s§ extends §&"T§
   {
      
      private var owner:§+%]§;
      
      private var paramSet:§5$n§;
      
      private var x0:int;
      
      private var y0:int;
      
      public var vx:Number;
      
      public var vy:Number;
      
      private var isFake:Boolean;
      
      private var §;a§:uint;
      
      private var alertId:int;
      
      public function §?!s§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:Number, param8:Number, param9:Boolean)
      {
         this.owner = param1;
         this.paramSet = param2;
         this.x0 = param5;
         this.y0 = param6;
         this.vx = param7;
         this.vy = param8;
         this.isFake = param9;
         super();
         this.§ %o§ = false;
         clip = §6#A§.§!&6§(§+"'§.§-"J§);
         §@%;§.play(§`!v§.§5$e§);
         stable = true;
         this.x = param3;
         this.y = param4;
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.SOT,this.§^% §);
         this.§;a§ = param1.squad.getNumber();
         this.alertId = Application.scene.§7#o§.§1"§.§<#-§(§2%o§.§"%y§,§0$N§.NUCLEAR_LAUNCH_DETECTED);
      }
      
      private function §^% §(param1:Event) : void
      {
         var _loc2_:§;#X§ = null;
         var _loc3_:BackpackItem = null;
         if(!§8"%§.§?!W§.§4"m§.activeUnit.disposed && §8"%§.§?!W§.§4"m§.activeUnit.squad.getNumber() == this.§;a§)
         {
            new AtomBomb(this.owner,this.paramSet,this.x0,this.y0,this.vx,this.vy,this.isFake);
            disposed = true;
            _loc2_ = this.owner.squad.§?"#§().getBattleBackpack();
            _loc3_ = _loc2_.§8&E§(this.isFake ? §+%z§.§!%D§ : int(§+%z§.§5-§));
            if(_loc3_)
            {
               _loc3_.§-&H§ = true;
            }
         }
         else if(this.owner.squad.§'"H§() == 0)
         {
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.owner = null;
         this.paramSet = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§^% §);
         Application.scene.§7#o§.§1"§.§]& §(this.alertId);
         super.§[$u§(param1);
      }
      
      public function §^M§() : int
      {
         return this.x0 + 10 * §^$y§.sign(this.vx);
      }
   }
}

