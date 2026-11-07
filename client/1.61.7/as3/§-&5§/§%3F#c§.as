package §-&5§
{
   import §!$d§.§<$c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §0%[§.§0%§;
   import §2#i§.§+%z§;
   import §4$b§.§2m§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%k§.§?%o§;
   import §<%k§.§`!v§;
   import §?$7§.§!§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!W§.§8!S§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §?#c§ extends §`&-§
   {
      
      private var §>8§:TextField;
      
      private var §7%F§:TextField;
      
      private var orLabel:TextField;
      
      private var §3%l§:TextField;
      
      private var § $[§:TextField;
      
      private var §=!T§:TextField;
      
      private var freeText:TextField;
      
      private var text:TextField;
      
      private var icon:DisplayObject;
      
      private var §=$i§:DisplayObject;
      
      private var §;%E§:DisplayObject;
      
      private var §%$=§:int;
      
      private var priceContainer:§8!S§;
      
      public function §?#c§(param1:DisplayObject = null)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.priceContainer = new §8!S§(§'$a§("priceContainer"));
         this.priceContainer.§0f§("<b>" + §0$N§.PRICE_OR_LABEL + "</b>");
         this.§=$i§ = this.priceContainer.getChildByName("price");
         this.§;%E§ = this.priceContainer.getChildByName("realPrice");
         this.§%$=§ = this.§;%E§.x;
         this.§7%F§ = this.priceContainer.§'%s§("price.value");
         this.§>8§ = this.priceContainer.§'%s§("realPrice.value");
         this.orLabel = this.priceContainer.§'%s§("orLabel");
         this.§3%l§ = §'%s§("fullPriceText");
         this.§ $[§ = §'%s§("levelLabel");
         this.§=!T§ = §'%s§("level");
         this.freeText = §'%s§("freeText");
         this.text = §'%s§("text");
         this.text.autoSize = TextFieldAutoSize.LEFT;
         this.icon = getChildByName("icon");
         §7&5§.§>&<§(this.freeText,§0$N§.GET_FREE);
         §7&5§.§>&<§(this.§ $[§,§0$N§.LEVEL_LABEL);
      }
      
      public function update(param1:§;#_§, param2:int) : void
      {
         var _loc5_:BackpackItem = null;
         var _loc7_:uint = 0;
         var _loc11_:§,&F§ = null;
         var _loc12_:Vector.<§#$s§> = null;
         var _loc3_:String = "#524336";
         var _loc4_:String = "";
         _loc5_ = Application.userProfile.§3%^§().§8&E§(param1.getId());
         var _loc6_:Boolean = (Boolean(_loc5_)) && _loc5_.isInfinite();
         if(!_loc6_)
         {
            _loc11_ = §?%o§.§7#q§(param1.getId());
            if((Boolean(_loc11_)) && Application.userProfile.getLevel() < _loc11_.getLevel())
            {
               _loc4_ = §0%§.format(§0$N§.NEED_LEVEL,{"n":_loc11_.getLevel()});
               this.text.visible = this.freeText.visible = true;
               this.text.x = this.freeText.x;
               §`o§.§1$T§(this.text,this.freeText,-5);
            }
            else
            {
               this.text.visible = this.freeText.visible = false;
            }
            this.icon.visible = this.§=!T§.visible = this.§ $[§.visible = false;
         }
         else if(param2 > 0 && param2 < param1.getMaxLevel())
         {
            §7&5§.§?$k§(this.§=!T§,String(param2 + 1));
            _loc4_ = §0$N§.COUNT_LABEL + ": " + §7%g§.§4!&§(param1,param2 + 1);
            _loc12_ = new Vector.<§#$s§>(0);
            §1!S§.§]%q§(param1.getId(),_loc12_);
            if(param2 + 1 == param1.getMaxLevel() && _loc12_.length > 0)
            {
               _loc4_ += "\n" + §0$N§.OPEN_UPGRADES;
            }
            this.freeText.visible = false;
            this.text.visible = true;
            this.icon.visible = this.§=!T§.visible = this.§ $[§.visible = true;
            this.text.x = this.icon.x + this.icon.width + 5;
            _loc3_ = "#538E06";
            §`o§.§1$T§(this.icon,this.priceContainer.getContainer(),10);
            §`o§.§1$T§(this.text,this.priceContainer.getContainer(),13);
            §`o§.§1$T§(this.§=!T§,this.priceContainer.getContainer(),18);
            §`o§.§1$T§(this.§ $[§,this.priceContainer.getContainer(),45);
         }
         _loc7_ = §<$c§.§ !=§(param1.getId()).getMaxLevel();
         var _loc8_:uint = param1.§4$n§() * _loc7_;
         var _loc9_:uint = param1.getRealPrice() * _loc7_;
         this.§7%F§.htmlText = "<b>" + _loc8_.toString() + "</b>";
         this.§>8§.htmlText = "<b>" + _loc9_.toString() + "</b>";
         this.orLabel.visible = this.§=$i§.visible = param1.§4$n§() > 0;
         this.§;%E§.x = param1.§4$n§() > 0 ? this.§%$=§ : this.§=$i§.x;
         var _loc10_:String = Social.§-%c§.§4!]§(_loc7_,§0$N§.LEVELS_PLURALS);
         this.§3%l§.htmlText = "<b>" + §0%§.format(§0$N§.FULL_PRICE_WEAPON_IMPROVE,{
            "max":param1.getMaxLevel(),
            "levels":_loc10_
         }) + "</b>";
         this.text.htmlText = "<b><font color =\'" + _loc3_ + "\'>" + _loc4_ + "</font></b>";
         setVisible(Boolean(param1) && param1.isComplex());
      }
   }
}

