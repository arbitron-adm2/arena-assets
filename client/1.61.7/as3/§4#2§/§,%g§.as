package §4#2§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §##j§.§7,§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.Helicopter;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §9"-§.AnchorTeleportMark;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>"l§.§#!Y§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,%g§ extends §"&=§
   {
      
      private var itemIcon:§,$8§;
      
      private var §8!v§:Boolean = false;
      
      private var §5y§:Boolean = false;
      
      private var count:TextField;
      
      private var hotKey:TextField;
      
      private var shotsPanel:§#!Y§;
      
      private var cooldownIcon:§`&-§;
      
      private var §9!u§:§`&-§;
      
      private var §+"V§:§`&-§;
      
      private var §`$p§:§`&-§;
      
      private var §@!8§:§`&-§;
      
      public function §,%g§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.§^&=§);
         param1.addEventListener(MouseEvent.MOUSE_UP,this.§ !;§);
         param1.addEventListener(MouseEvent.MOUSE_MOVE,this.§4%i§);
         MovieClip(param1).doubleClickEnabled = true;
         param1.addEventListener(MouseEvent.DOUBLE_CLICK,this.§9"!§);
         Application.instance.stage.addEventListener(MouseEvent.MOUSE_UP,this.§]"%§);
         this.itemIcon = new §,$8§(getChildByName("icon"),true);
         this.count = §'%s§("count");
         this.count.mouseEnabled = false;
         this.count.text = "";
         this.hotKey = §'%s§("hotKey");
         this.hotKey.mouseEnabled = false;
         this.hotKey.text = "";
         getChildByName("season").visible = false;
         this.shotsPanel = new §#!Y§(getChildByName("shotsPanel"));
         this.cooldownIcon = new §`&-§(getChildByName("cooldownIcon"));
      }
      
      override public function destroy() : void
      {
         container.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^&=§);
         container.removeEventListener(MouseEvent.MOUSE_UP,this.§ !;§);
         container.removeEventListener(MouseEvent.MOUSE_MOVE,this.§4%i§);
         MovieClip(container).doubleClickEnabled = true;
         container.removeEventListener(MouseEvent.DOUBLE_CLICK,this.§9"!§);
         Application.instance.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§]"%§);
         super.destroy();
      }
      
      public function §4!d§() : §,$8§
      {
         return this.itemIcon;
      }
      
      private function §9"!§(param1:MouseEvent) : void
      {
         if(item)
         {
            dispatchEvent(new §6$,§(§6$,§.SWAP_ITEM,this));
         }
         this.§5y§ = false;
      }
      
      private function §]"%§(param1:MouseEvent) : void
      {
         this.§8!v§ = false;
      }
      
      private function §4%i§(param1:MouseEvent) : void
      {
         if(this.§8!v§)
         {
            dispatchEvent(new §6$,§(§6$,§.GET_ITEM,this));
            this.§5y§ = true;
         }
         dispatchEvent(new §6$,§(§6$,§.ITEM_MOUSE_MOVE,this));
      }
      
      private function §^&=§(param1:MouseEvent) : void
      {
         if(item)
         {
            this.§8!v§ = true;
            dispatchEvent(new SelectObjectEvent(SelectObjectEvent.NAME));
         }
      }
      
      private function § !;§(param1:MouseEvent) : void
      {
         this.§8!v§ = false;
         dispatchEvent(new §6$,§(§6$,§.PUT_ITEM,this));
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:§;#_§ = null;
         super.setItem(param1);
         setDisabled(false);
         this.cooldownIcon.setVisible(false);
         if(param1)
         {
            _loc2_ = BackpackItem(param1);
            _loc3_ = §;#_§(_loc2_.getRecord());
            this.shotsPanel.setVisible(§8"%§.§&S§.§'`§());
            this.shotsPanel.§4%3§(_loc3_.§]!C§(),_loc2_.§]!C§());
            if(_loc3_.firstShotDelay > 0 || _loc3_.cooldown > 0)
            {
               this.§+[§(_loc3_.firstShotDelay,_loc3_.cooldown);
            }
            if(_loc2_.isInfinite())
            {
               this.count.visible = false;
            }
            else
            {
               this.count.visible = true;
               §&$9§.§>&F§(this.count,§"-§.§6"j§,_loc2_.getCount().toString());
            }
            getChildByName("season").visible = _loc3_.§-%g§();
            this.itemIcon.setItem(_loc3_);
            if(_loc3_.isComplex() && !_loc2_.§8"I§())
            {
               this.itemIcon.setLevel(_loc2_.getLevel());
            }
            §;b§(true);
            Sprite(container).buttonMode = true;
            if(this.§@!8§)
            {
               this.§@!8§.setVisible(Boolean(_loc3_.property["consumable"]) || Boolean(_loc3_.property["seasonal"]));
            }
         }
         else
         {
            §;b§(false);
            Sprite(container).buttonMode = false;
            this.itemIcon.setItem(null);
            this.shotsPanel.setVisible(false);
            this.count.visible = false;
            this.count.text = "";
            getChildByName("season").visible = false;
            if(this.§@!8§)
            {
               this.§@!8§.setVisible(false);
            }
         }
      }
      
      public function §%"f§() : void
      {
         this.hotKey.text = "";
      }
      
      public function §,%Z§(param1:String) : void
      {
         §&$9§.§>&F§(this.hotKey,§"-§.§+$m§,"[" + param1 + "]");
      }
      
      private function §+[§(param1:int, param2:int) : void
      {
         this.cooldownIcon.setVisible(§8"%§.§&S§.§'`§());
         var _loc3_:int = param1 > 0 ? param1 : (param2 > 0 ? param2 : 0);
         §&$9§.§>&F§(this.cooldownIcon.getChildByName("delayText") as TextField,§"-§.§6"j§,_loc3_.toString());
         var _loc4_:String = Social.§-%c§.§4!]§(param1,§0$N§.TURN_PLURALS);
         var _loc5_:String = "";
         if(param1 > 0)
         {
            _loc5_ = §0%§.format(§0$N§.WEAPON_FIRST_DELAY,{
               "value":param1,
               "turns":_loc4_
            });
         }
         var _loc6_:String = Social.§-%c§.§4!]§(param2,§0$N§.TURN_PLURALS);
         var _loc7_:String = "";
         if(param2 > 0)
         {
            _loc7_ = §0%§.format(§0$N§.WEAPON_COOLDOWN_BETWEEN,{
               "value":param2,
               "turns":_loc6_
            });
         }
         this.cooldownIcon.setQtip(_loc5_ + (Boolean(_loc5_) && Boolean(_loc7_) ? ". " : "") + _loc7_,§;#^§.§4!f§);
      }
      
      public function §<$3§() : void
      {
         this.§+"V§ = new §`&-§(§6#A§.§!&6§(§+"'§.§[%H§));
         addChild(this.§+"V§);
         this.§+"V§.setQtip(§0$N§.ARSENAL_CELL_OVERFLOW,§;#^§.§4!f§,§+"'§.§9%>§);
         this.§+"V§.getContainer().parent.setChildIndex(this.§+"V§.getContainer(),0);
         this.§+"V§.x = (getContainer().width - this.§+"V§.width) * 0.5;
         this.§9!u§ = new §`&-§(§6#A§.§!&6§(§+"'§.§ $U§));
         addChild(this.§9!u§);
         this.§9!u§.setQtip(§0$N§.ARSENAL_CELL_OVERFLOW,§;#^§.§4!f§,§+"'§.§9%>§);
         this.§9!u§.getContainer().parent.setChildIndex(this.§9!u§.getContainer(),0);
         this.§9!u§.x = (getContainer().width - this.§9!u§.width) * 0.5;
         this.§`$p§ = new §`&-§(§6#A§.§!&6§(§+"'§.§^!'§));
         addChild(this.§`$p§);
         this.§`$p§.setQtip(§0$N§.ARSENAL_CELL_FREE,§;#^§.§4!f§,§+"'§.§9%>§);
         this.§`$p§.getContainer().parent.setChildIndex(this.§`$p§.getContainer(),0);
         this.§`$p§.x = (getContainer().width - this.§`$p§.width) * 0.5;
         this.§@!8§ = new §`&-§(§6#A§.§!&6§(§+"'§.§?%[§));
         addChild(this.§@!8§);
         this.§@!8§.setQtip(§0$N§.ARSENAL_CELL_CONSUMABLE,§;#^§.§4!f§,§+"'§.§9%>§);
         this.§@!8§.getContainer().parent.setChildIndex(this.§@!8§.getContainer(),0);
         this.§@!8§.x = (getContainer().width - this.§@!8§.width) * 0.5;
      }
      
      public function §+%A§() : void
      {
         this.§+"V§.setVisible(item != null);
         this.§9!u§.setVisible(item == null);
         this.§`$p§.setVisible(false);
      }
      
      public function §9#4§() : void
      {
         this.§+"V§.setVisible(false);
         this.§9!u§.setVisible(false);
         this.§`$p§.setVisible(true);
      }
      
      public function §<#z§() : void
      {
         this.§+"V§.setVisible(false);
         this.§9!u§.setVisible(false);
         this.§`$p§.setVisible(false);
      }
      
      public function update() : void
      {
         if(this.§+"V§)
         {
            this.§+"V§.§#!`§().mouseEnabled = §8"%§.§&S§.§'`§();
         }
         if(this.§`$p§)
         {
            this.§`$p§.§#!`§().mouseEnabled = §8"%§.§&S§.§'`§();
         }
         if(this.§@!8§)
         {
            this.§@!8§.§#!`§().mouseEnabled = §8"%§.§&S§.§'`§();
         }
      }
   }
}

