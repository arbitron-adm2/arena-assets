package §3%J§
{
   import § #m§.§[&H§;
   import § %f§.*;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"&?§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%E§.§2§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §+$=§.§9"%§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §6",§.§[%w§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §8$V§.*;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §>%S§.§^!V§;
   import §>1§.§^"&§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §]$v§.§]%_§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SpecialDealWindow extends §@& §
   {
      
      public static const LOG:§&`§ = new §&`§(SpecialDealWindow);
      
      private var §1z§:Function;
      
      private var §]l§:Function;
      
      private var §8$<§:Number = 0;
      
      public function SpecialDealWindow()
      {
         super(null);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         if(!§2#4§.§7"&§)
         {
            return;
         }
         if(!getContainer())
         {
            §[&G§.§8"&§.show();
            §6#A§.§0M§("specialDeal",§1%"§.§]$<§(this.§[Y§,this,[this,this.show]),this.§=%m§);
            LOG.info(" --> OFFER WINDOW LOADING");
            return;
         }
         LOG.info(" --> OFFER WINDOW SHOW");
         super.show(param1);
      }
      
      private function §[Y§(param1:§@& §, param2:Function = null) : void
      {
         param1.§@"o§(§6#A§.§!&6§(§+"'§.§?&-§));
         §[&G§.§8"&§.hide();
         if(param2 != null)
         {
            param2();
         }
      }
      
      private function §=%m§(param1:§9"%§) : void
      {
         §[&G§.§8"&§.hide();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var title:TextField;
         var subTitle:TextField;
         var isRu:Boolean;
         var titleRu:MovieClip;
         var titleEn:MovieClip;
         var weapon:§;#_§;
         var equip:§=?§;
         var price:int;
         var saleDelta:TextField;
         var priceOld:TextField;
         var description:TextField;
         var damage:TextField;
         var itemName:TextField;
         var itemBack:MovieClip;
         var itemClip:MovieClip;
         var icon:MovieClip;
         var menuIcon:MovieClip;
         var lang:String = null;
         var item:§&!e§ = null;
         var bonuses:Array = null;
         var bonusText:String = null;
         var container:DisplayObject = param1;
         super.§@"o§(container);
         id = "SpecialDeal";
         §>!-§.setText(§2#4§.§9"f§.toString(),§"-§.§6"j§,"price");
         §>!-§.setText(§0$N§.§%! §("OFFER_SALE_BUY"),§"-§.§+$m§);
         §4"0§.§;#f§(§>!-§);
         §!S§.setText(§0$N§.BUTTON_REJECT,§"-§.§+$m§);
         §!S§.removeHandler(§0!j§);
         §!S§.§[!u§(this.§'&0§);
         §=%1§ = §5!r§.§<![§;
         title = §'%s§("title");
         subTitle = §'%s§("subTitle");
         §&$9§.§>&F§(title,§"-§.§+$m§,§0$N§.§%! §("OFFER_SALE_NOW"));
         §&$9§.§>&F§(subTitle,§"-§.§+$m§,§0$N§.§%! §("OFFER_SALE_WEAPON"));
         lang = Social.settings.§@"G§().toString();
         isRu = lang == "ru" || lang == "ua";
         titleRu = §'$a§("titleRU");
         titleEn = §'$a§("titleEN");
         if(isRu)
         {
            if(titleEn)
            {
               titleEn.visible = false;
            }
         }
         else if(titleRu)
         {
            titleRu.visible = false;
         }
         item = §<$c§.§8&E§(§2#4§.§0&6§,Application.userProfile.getRace());
         weapon = item is §;#_§ ? §;#_§(item) : null;
         equip = item is §=?§ ? §=?§(item) : null;
         price = int(item.getRealPrice());
         saleDelta = §'%s§("saleLabel.saleDelta");
         priceOld = §'%s§("priceOld");
         description = §'%s§("description");
         damage = §'%s§("damage");
         itemName = §'%s§("itemName");
         §&$9§.§>&F§(itemName,§"-§.§+$m§,item.§7%z§());
         this.§8$<§ = description.y;
         this.§`b§(item.§]G§() != "",item.§]G§(),"description");
         this.§`b§(item.§#6§() != "",item.§#6§(),"note");
         if(weapon)
         {
            damage.visible = true;
            this.§`b§(weapon.§-$O§() != null && weapon.§-$O§() != "",§0$N§.DAMAGE + ": " + weapon.§-$O§(),"damage");
         }
         else
         {
            damage.visible = false;
            if(equip)
            {
               bonuses = §""L§.§,"=§(equip.getBonusList().§<%i§());
               bonusText = bonuses.map(function(param1:§@"I§, ... rest):String
               {
                  return param1.§@$+§() + (param1.§'$o§() ? ": " + param1.§'$o§() : ", ");
               }).join("\n");
               this.§`b§(true,bonusText,"description");
               description.x = itemName.x + itemName.width * 0.25;
               description.width = itemName.width * 0.6;
               description.height = description.y + damage.y + damage.height;
            }
         }
         §&$9§.§>&F§(priceOld,§"-§.§6"j§,price.toString());
         §&$9§.§>&F§(saleDelta,§"-§.§6"j§,"-" + String(price - §2#4§.§9"f§));
         itemBack = §'$a§("itemBack");
         itemClip = §'$a§("item");
         icon = new MovieClip();
         _removeChild(itemClip);
         §?!C§(icon);
         menuIcon = §'+§.getMenuIcon(item);
         icon.addChild(menuIcon);
         icon.width = 100;
         icon.scaleY = icon.scaleX;
         icon.x = itemBack.x + itemBack.width * 0.5 - icon.width * 0.5;
         icon.y = itemBack.y + itemBack.height * 0.5 - icon.height * 0.5;
      }
      
      protected function §`b§(param1:Boolean, param2:String, param3:String, param4:String = "", param5:String = "") : void
      {
         var _loc7_:TextField = null;
         var _loc6_:TextField = §'%s§(param3);
         _loc6_.text = param2;
         _loc6_.visible = param1;
         _loc6_.y = this.§8$<§;
         if(param4 != "" && param5 != "")
         {
            _loc7_ = §&$9§.§<#§(this,param4,param5);
            _loc7_.visible = param1;
            _loc7_.y = this.§8$<§;
         }
         else
         {
            _loc6_.autoSize = TextFieldAutoSize.LEFT;
         }
         if(param1)
         {
            this.§8$<§ = _loc6_.y + _loc6_.height;
         }
      }
      
      override public function hide() : void
      {
         this.§1z§ = null;
         super.hide();
      }
      
      override protected function okAction() : void
      {
         if(this.§1z§ != null)
         {
            this.§1z§();
         }
         else
         {
            super.okAction();
         }
      }
      
      private function §'&0§(param1:Event = null) : void
      {
         var event:Event = param1;
         var msgBox:§,#W§ = §,#W§.§=$"§(null,§0$N§.§%! §("TITLE_ATTENTION"),§0$N§.§%! §("OFFER_SALE_CANCEL_MESSAGE"),§,#W§.§7"d§,null,function(param1:Event = null):void
         {
            if(§]l§ != null)
            {
               §]l§();
               §]l§ = null;
            }
            hide();
         });
         msgBox.§##b§(§0$N§.§%! §("OFFER_SALE_CANCEL_REJECT"));
         msgBox.§'"w§(§0$N§.§%! §("BUTTON_REJECT"));
         msgBox.show();
      }
      
      public function setCancelFunction(param1:Function) : void
      {
         this.§]l§ = param1;
      }
      
      public function setOkFunction(param1:Function) : void
      {
         this.§1z§ = param1;
      }
   }
}

