package §7$t§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §##y§.CollisionEvent;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §%L§.§%%w§;
   import §'$Z§.§2#f§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#V§.§-#U§;
   import §3"@§.§#$O§;
   import §4#`§.BattleInterface;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §8$V§.§1!q§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §=7§.*;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§]%_§;
   import §^"y§.§!n§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&!e§ extends §??§ implements §!n§
   {
      
      protected var clipClassName:String;
      
      protected var menuIcon:String;
      
      protected var alignMenuIcon:Boolean;
      
      protected var infinite:Boolean;
      
      private var §"!]§:§&$2§;
      
      protected var duration:uint;
      
      public function §&!e§()
      {
         super();
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         super.initFromConfig(param1);
         if(param1.id)
         {
            §-!W§(param1.id);
         }
         if(param1.weight)
         {
            §9p§(param1.weight);
         }
         if(param1.name)
         {
            § %0§(§0$N§.§<N§(param1.name));
         }
         if(param1.description)
         {
            §&!U§(§0$N§.§<N§(param1.description));
         }
         if(Boolean(param1.note) || param1.note == "")
         {
            § # §(§0$N§.§<N§(param1.note));
         }
         if(param1.iconClassName)
         {
            this.§""y§(param1.iconClassName);
         }
         if(param1.menuIcon)
         {
            this.§#!h§(param1.menuIcon);
         }
         if(param1.alignMenuIcon)
         {
            this.§ $H§(true);
         }
         if(param1.requiredFriends)
         {
            §"$i§(param1.requiredFriends);
         }
         if(param1.requiredLevel)
         {
            §6$O§(param1.requiredLevel);
         }
         if(param1.requiredScenario)
         {
            requiredScenario = param1.requiredScenario;
         }
         if(param1.hideInShop)
         {
            §%!U§(param1.hideInShop);
         }
         if(param1.requiredRating)
         {
            this.§"!]§ = new §&$2§(param1.requiredRating);
         }
         if(param1.isNew)
         {
            setState(§^"p§.§9%t§);
         }
         if(param1.isSale)
         {
            setState(§^"p§.SALE_PRICE,param1.isSale);
         }
         if(param1.isSpecial)
         {
            setState(§^"p§.SPECIAL_PRICE);
         }
         if(param1.isPowered)
         {
            setState(§^"p§.POWERED);
         }
         if(param1.shopState)
         {
            setState(param1.shopState);
         }
         this.§"$d§(param1.infinite);
         if(param1.duration)
         {
            this.duration = param1.duration;
         }
      }
      
      public function getMenuIcon() : String
      {
         return this.menuIcon;
      }
      
      public function §-9§() : Boolean
      {
         return this.alignMenuIcon;
      }
      
      public function § $H§(param1:Boolean) : void
      {
         this.alignMenuIcon = param1;
      }
      
      public function §#!h§(param1:String) : void
      {
         this.menuIcon = param1;
      }
      
      public function getClipClassName() : String
      {
         return this.clipClassName;
      }
      
      public function §""y§(param1:String) : void
      {
         this.clipClassName = param1;
      }
      
      public function getInfinite() : Boolean
      {
         return this.infinite;
      }
      
      public function getRequiredRating() : uint
      {
         return this.§"!]§ ? uint(this.§"!]§.value) : 0;
      }
      
      public function §"$d§(param1:Boolean) : void
      {
         this.infinite = param1;
      }
      
      public function toString() : String
      {
         return "ItemRecord{id=" + String(getId()) + ",name=" + String(name) + ",description=" + String(§]G§()) + ",iconClass=" + this.clipClassName + ",price=" + String(§%"]§() ? §4$n§() : "-") + ",realprice=" + String(§%"]§() ? getRealPrice() : "-") + ",requiredLevel=" + String(§,X§()) + "}";
      }
      
      public function §8!t§() : uint
      {
         return this.duration;
      }
      
      public function setDuration(param1:int) : void
      {
         this.duration = param1;
      }
      
      public function § #W§(param1:§&!e§) : void
      {
         §%"5§(param1);
         param1.clipClassName = this.clipClassName;
         param1.menuIcon = this.menuIcon;
         param1.alignMenuIcon = this.alignMenuIcon;
         param1.infinite = this.infinite;
         param1.§"!]§ = this.§"!]§;
         param1.duration = this.duration;
      }
   }
}

