package §&§
{
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=$#§.§1!$§;
   import §?$7§.§8"e§;
   import §?>§.§]!V§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§>%a§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<!U§ extends §@& §
   {
      
      protected var ingamePriceBtn:§?%>§;
      
      protected var realPriceBtn:§?%>§;
      
      protected var askAFriendBtn:§?%>§;
      
      protected var fieldRequirements:TextField;
      
      protected var backPanel:MovieClip;
      
      protected var §7"x§:String;
      
      protected var price:§'$2§;
      
      protected var message:TextField;
      
      protected var submessage:TextField;
      
      public function §<!U§(param1:DisplayObjectContainer = null)
      {
         super(param1 ? param1 : §6#A§.§!&6§(§+"'§.§+!P§));
         this.backPanel = §'$a§("backPanel");
         this.ingamePriceBtn = §!&5§.§7#[§(getChildByName("ingamePriceBtn"));
         this.realPriceBtn = §!&5§.§7#[§(getChildByName("realPriceBtn"));
         if(getChildByName("askAFriendBtn"))
         {
            this.askAFriendBtn = §!&5§.§7#[§(getChildByName("askAFriendBtn"));
            this.askAFriendBtn.setVisible(false);
         }
         if(§'%s§("fieldRequirements"))
         {
            this.fieldRequirements = §'%s§("fieldRequirements");
            this.fieldRequirements.width = this.backPanel.width - 20;
            this.fieldRequirements.x = this.backPanel.x + 10;
            this.fieldRequirements.visible = false;
         }
         this.ingamePriceBtn.§[!u§(this.§`&1§);
         this.ingamePriceBtn.§00§(§`!v§.§=#2§);
         this.realPriceBtn.§[!u§(this.§'"F§);
         this.realPriceBtn.§00§(§`!v§.§=#2§);
         if(§'%s§("message"))
         {
            this.message = §'%s§("message");
         }
         if(§'%s§("submessage"))
         {
            this.submessage = §'%s§("submessage");
            this.submessage.visible = false;
         }
      }
      
      override protected function §%&9§() : void
      {
         if(!this.§7"x§)
         {
            this.§7"x§ = §0$N§.BUTTON_BUY;
         }
         §=%1§ = §5!r§.§<![§;
         §<"b§ = true;
         super.§%&9§();
      }
      
      private function §'"F§(param1:Event) : void
      {
         this.§!!K§(§+$A§.REAL);
      }
      
      protected function §`&1§(param1:Event) : void
      {
         this.§!!K§(§+$A§.INGAME);
      }
      
      protected function §!!K§(param1:§+$A§) : void
      {
         if(§4! §.§7"-§(Application.userProfile,param1,this.price))
         {
            this.buy(param1);
         }
         else
         {
            hide();
         }
      }
      
      protected function buy(param1:§+$A§) : void
      {
         throw new IllegalOperationError();
      }
      
      override public function destroy() : void
      {
         this.ingamePriceBtn.destroy();
         this.realPriceBtn.destroy();
         super.destroy();
      }
      
      public function §8&;§(param1:§'$2§, param2:Boolean = true) : void
      {
         if(param1.ingamePrice == 0 && param2)
         {
            §`o§.§^#c§(this.realPriceBtn.getContainer(),this.backPanel);
         }
         else
         {
            this.realPriceBtn.x = this.backPanel.x + this.backPanel.width * 0.5 + 5;
         }
         if(param1.realPrice == 0 && param2)
         {
            §`o§.§^#c§(this.ingamePriceBtn.getContainer(),this.backPanel);
         }
         else
         {
            this.ingamePriceBtn.x = this.backPanel.x + this.backPanel.width * 0.5 - this.ingamePriceBtn.width - 5;
         }
         this.ingamePriceBtn.setVisible(param1.ingamePrice > 0 || !param2);
         this.realPriceBtn.setVisible(param1.realPrice > 0 || !param2);
         this.ingamePriceBtn.setText(String(param1.ingamePrice),§"-§.§6"j§);
         this.realPriceBtn.setText(String(param1.realPrice),§"-§.§6"j§);
         §4"0§.§@"T§(this.ingamePriceBtn);
         §4"0§.§@"T§(this.realPriceBtn);
         var _loc3_:DisplayObjectContainer = (getChildByName("ingamePriceBtn") as DisplayObjectContainer).getChildByName("disabled") as DisplayObjectContainer;
         var _loc4_:DisplayObjectContainer = (getChildByName("realPriceBtn") as DisplayObjectContainer).getChildByName("disabled") as DisplayObjectContainer;
         §4"0§.§5%o§(_loc3_);
         §4"0§.§5%o§(_loc4_);
         this.price = param1;
      }
      
      protected function §'!`§(param1:uint, param2:uint) : void
      {
         this.§8&;§(new §'$2§(param1,param2));
      }
      
      public function §%"]§() : §'$2§
      {
         return this.price;
      }
   }
}

