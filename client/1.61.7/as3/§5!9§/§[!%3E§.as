package §5!9§
{
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §"%H§.§1! §;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §+%S§.§2&>§;
   import §+%o§.*;
   import §0%[§.§0%§;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §4#2§.§,%g§;
   import §4#2§.§2&@§;
   import §4#2§.§^S§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§`%u§;
   import §?$L§.§0"-§;
   import §@!N§.§'+§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §[!>§
   {
      
      private var icon:MovieClip;
      
      private var §2%-§:§2&@§;
      
      private var battleBackpackPanel:§^S§;
      
      private var §8&9§:§,%g§;
      
      private var §+&'§:Boolean = false;
      
      private var §5y§:Boolean = false;
      
      public function §[!>§(param1:§2&@§, param2:§^S§)
      {
         super();
         this.§2%-§ = param1;
         this.battleBackpackPanel = param2;
         param1.addEventListener(§6$,§.GET_ITEM,this.§8!>§);
         param1.addEventListener(§6$,§.SWAP_ITEM,this.§1$u§);
         param2.addEventListener(§6$,§.GET_ITEM,this.§=#T§);
         param2.addEventListener(§6$,§.SWAP_ITEM,this.§5"P§);
      }
      
      private static function §3$q§(param1:§,%g§) : void
      {
         §@&&§.getProfile().§3%^§().§ %7§().remove(param1.getItem().getId());
      }
      
      private function §8!>§(param1:§6$,§) : void
      {
         this.§8&9§ = param1.getItem();
         this.§+&'§ = false;
         this.§,#!§(param1);
         this.battleBackpackPanel.addEventListener(§6$,§.PUT_ITEM,this.§]H§);
         this.§2%-§.getContainer().addEventListener(MouseEvent.MOUSE_UP,this.§]#S§);
      }
      
      private function §]#S§(param1:MouseEvent) : void
      {
         this.§2%-§.getContainer().removeEventListener(MouseEvent.MOUSE_UP,this.§]#S§);
         this.battleBackpackPanel.removeEventListener(§6$,§.PUT_ITEM,this.§]H§);
      }
      
      private function §-A§(param1:§6$,§) : void
      {
         §3$q§(this.§8&9§);
         this.§2"<§();
         this.update();
         this.§2%-§.removeEventListener(§6$,§.PUT_ITEM,this.§-A§);
      }
      
      private function §1$u§(param1:§6$,§) : void
      {
         this.§##V§(param1.getItem());
      }
      
      private function §]H§(param1:§6$,§) : void
      {
         var _loc2_:BackpackItem = param1.getItem().getItem() as BackpackItem;
         var _loc3_:BackpackItem = this.§8&9§.getItem() as BackpackItem;
         if(this.§+&'§)
         {
            if(_loc2_)
            {
               if(this.§8&9§ != param1.getItem())
               {
                  this.§`!N§(_loc2_,_loc3_);
               }
            }
            else
            {
               this.§'"d§(param1.getItem().getCellIndex(),_loc3_);
            }
         }
         else
         {
            this.§##V§(this.§8&9§,param1.getItem().getCellIndex());
         }
         this.§2"<§();
         this.battleBackpackPanel.removeEventListener(§6$,§.PUT_ITEM,this.§]H§);
      }
      
      private function §=#T§(param1:§6$,§) : void
      {
         this.§8&9§ = param1.getItem();
         this.§+&'§ = true;
         this.§,#!§(param1);
         this.§2%-§.addEventListener(§6$,§.PUT_ITEM,this.§-A§);
         this.§2%-§.getContainer().addEventListener(MouseEvent.MOUSE_UP,this.§]#S§);
         this.battleBackpackPanel.addEventListener(§6$,§.PUT_ITEM,this.§]H§);
         this.battleBackpackPanel.getContainer().addEventListener(MouseEvent.MOUSE_UP,this.§ ";§);
      }
      
      private function § ";§(param1:MouseEvent) : void
      {
         this.§2%-§.removeEventListener(§6$,§.PUT_ITEM,this.§-A§);
         this.battleBackpackPanel.getContainer().removeEventListener(MouseEvent.MOUSE_UP,this.§ ";§);
      }
      
      private function §5"P§(param1:§6$,§) : void
      {
         §3$q§(param1.getItem());
         this.update();
      }
      
      private function §,#!§(param1:§6$,§) : void
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:uint = 0;
         if(!this.§5y§)
         {
            _loc2_ = BackpackItem(param1.getItem().getItem());
            this.icon = §'+§.getMenuIcon(_loc2_.getRecord());
            this.icon.mouseEnabled = false;
            this.icon.mouseChildren = false;
            this.icon.alpha = 0.6;
            this.icon.x = Application.instance.stage.mouseX - this.icon.width / 2;
            this.icon.y = Application.instance.stage.mouseY - this.icon.height / 2;
            _loc3_ = 55;
            §`o§.§7!S§(this.icon,_loc3_,_loc3_);
            Application.instance.stage.addChild(this.icon);
            Application.instance.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§4%i§);
            Application.instance.stage.addEventListener(MouseEvent.MOUSE_UP,this.§]"%§);
            this.§5y§ = true;
         }
      }
      
      private function §]"%§(param1:MouseEvent) : void
      {
         this.§2"<§();
      }
      
      private function §2"<§() : void
      {
         if(this.icon)
         {
            Application.instance.stage.removeChild(this.icon);
            this.icon = null;
         }
         this.§5y§ = false;
         Application.instance.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§4%i§);
      }
      
      private function §4%i§(param1:MouseEvent) : void
      {
         this.icon.x = param1.stageX - this.icon.width / 2;
         this.icon.y = param1.stageY - this.icon.height / 2;
      }
      
      private function update() : void
      {
         this.§2%-§.§<"X§();
         this.battleBackpackPanel.§<"X§();
      }
      
      private function §##V§(param1:§,%g§, param2:int = -1) : void
      {
         var _loc3_:§'"-§ = null;
         var _loc6_:int = 0;
         _loc3_ = §@&&§.getProfile().§3%^§();
         var _loc4_:§#$R§ = _loc3_.§ %7§();
         var _loc5_:int = int(param1.getItem().getId());
         if(param2 == -1)
         {
            _loc6_ = _loc3_.§]K§();
            if(_loc6_ > 0)
            {
               _loc4_.push(_loc5_);
            }
            else
            {
               §,#W§.§[#r§(§0"-§.TITLE_ATTENTION,§<"G§.§%! §("ERROR_ON_ADDING_WEAPON_TO_BATTLE_BACKPACK"));
            }
         }
         else
         {
            _loc4_.§9$]§(_loc5_,param2);
         }
         this.update();
      }
      
      private function §`!N§(param1:BackpackItem, param2:BackpackItem) : void
      {
         var _loc3_:§#$R§ = §@&&§.getProfile().§3%^§().§ %7§();
         _loc3_.swap(param1.getId(),param2.getId());
         this.update();
      }
      
      private function §'"d§(param1:uint, param2:BackpackItem) : void
      {
         var _loc3_:§#$R§ = §@&&§.getProfile().§3%^§().§ %7§();
         _loc3_.remove(param2.getId());
         _loc3_.§9$]§(param2.getId(),param1);
         this.update();
      }
      
      public function §@%U§(param1:int) : void
      {
      }
   }
}

