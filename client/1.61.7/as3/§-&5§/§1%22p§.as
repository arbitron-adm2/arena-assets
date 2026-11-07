package §-&5§
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §!!i§.§@&&§;
   import §#P§.§`o§;
   import §%"1§.§+#h§;
   import §%"1§.§@%;§;
   import §'"N§.§4&5§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4%_§.§3§;
   import §7$1§.§;$n§;
   import §7$t§.§??§;
   import §;"9§.§;"c§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=&!§.§<$Z§;
   import §?#g§.§&"P§;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!W§.§8!S§;
   import §@!i§.§,! §;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §[$<§.§;"E§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §1"p§ extends §`&-§
   {
      
      protected static const §]&=§:int = 11730944;
      
      protected var §8l§:String = "itemName";
      
      protected var §>$i§:String = "description";
      
      protected var §;$1§:Boolean = true;
      
      protected var §4&D§:TextField;
      
      protected var §^"o§:TextField;
      
      protected var §[&1§:TextField;
      
      protected var §=!T§:TextField;
      
      protected var levelLabel:TextField;
      
      protected var friendsLabel:TextField;
      
      protected var §]e§:TextField;
      
      protected var scenarioLabel:TextField;
      
      protected var §7%&§:TextField;
      
      protected var priceContainer:§8!S§;
      
      protected var §4"J§:int;
      
      protected var §@&=§:int;
      
      protected var §++§:int;
      
      protected var §[!9§:int;
      
      protected var §;!N§:int;
      
      public function §1"p§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§4&D§ = TextField(getChildByName(this.§8l§));
         this.§^"o§ = TextField(getChildByName(this.§>$i§));
         this.§[&1§ = TextField(getChildByName("note"));
         §&$9§.§2!a§(this,"priceLabel",§0$N§.PRICE_LABEL);
         this.priceContainer = new §8!S§(MovieClip(getChildByName("priceContainer")));
         this.priceContainer.§0f§("<b>" + §0$N§.PRICE_OR_LABEL + "</b>");
         this.§7$Q§();
      }
      
      protected function §7$Q§() : void
      {
         this.§=!T§ = TextField(getChildByName("level"));
         this.§=!T§.autoSize = TextFieldAutoSize.LEFT;
         this.§4"J§ = this.§=!T§.textColor;
         this.levelLabel = §&$9§.§2!a§(this,"levelLabel",§0$N§.SHOP_REQUIRED_LEVEL);
         this.levelLabel.autoSize = TextFieldAutoSize.LEFT;
         this.§@&=§ = this.levelLabel.textColor;
         this.§]e§ = TextField(getChildByName("friends"));
         if(this.§]e§)
         {
            this.§++§ = this.§]e§.textColor;
            this.§]e§.autoSize = TextFieldAutoSize.LEFT;
            this.friendsLabel = §&$9§.§2!a§(this,"friendsLabel",§0$N§.SHOP_REQUIRED_FRIENDS);
            this.§[!9§ = this.friendsLabel.textColor;
            this.friendsLabel.autoSize = TextFieldAutoSize.LEFT;
         }
         this.scenarioLabel = TextField(getChildByName("scenarioLabel"));
         if(this.scenarioLabel)
         {
            this.§;!N§ = this.scenarioLabel.textColor;
         }
         this.§7%&§ = TextField(getChildByName("buyForRubies"));
         this.§7%&§.text = §0$N§.SHOP_BUY_FOR_REAL_MONEY;
      }
      
      public function setItem(param1:§??§) : void
      {
         var _loc2_:String = null;
         this.§4&D§.autoSize = TextFieldAutoSize.LEFT;
         this.§4&D§.htmlText = "<b>" + param1.§7%z§() + "</b>";
         this.§^"o§.autoSize = TextFieldAutoSize.LEFT;
         this.§^"o§.text = param1.§]G§();
         §`o§.§1$T§(this.§^"o§,this.§4&D§);
         if(this.§[&1§)
         {
            this.§[&1§.autoSize = TextFieldAutoSize.LEFT;
            this.§[&1§.text = param1.§#6§();
            §`o§.§1$T§(this.§[&1§,this.§^"o§);
         }
         if(§,! §.§&$F§(param1))
         {
            this.§=!T§.textColor = this.§4"J§;
            this.levelLabel.textColor = this.§@&=§;
         }
         else
         {
            this.§=!T§.textColor = §]&=§;
            this.§=!T§.text = param1.§,X§().toString();
         }
         if(this.§]e§)
         {
            if(§,! §.§`n§(param1) && param1.§&&@§())
            {
               this.§]e§.textColor = this.§++§;
               this.friendsLabel.textColor = this.§[!9§;
               this.§]e§.text = param1.§ %D§().toString();
            }
            else
            {
               this.§]e§.textColor = §]&=§;
               this.§]e§.text = param1.§ %D§().toString();
            }
            this.§]e§.visible = this.friendsLabel.visible = param1.§&&@§();
            §`o§.§4%4§(this.§]e§,this.friendsLabel);
         }
         this.§=!T§.text = param1.§,X§().toString();
         this.priceContainer.§8&;§(param1.§%"]§());
         this.§7%&§.visible = Boolean(param1.§4$n§()) && Boolean(param1.getRealPrice()) && !§,! §.§1%q§(param1);
         if(this.scenarioLabel)
         {
            if(param1.§`%n§())
            {
               this.scenarioLabel.visible = true;
               _loc2_ = §6%k§.§7%q§(param1.§`%n§()).§7%z§();
               this.scenarioLabel.text = §0%§.format(§0$N§.SHOP_SCENARIO_REQUIREMENT,{"scenario":_loc2_});
               if(§,! §.§2&;§(param1))
               {
                  this.scenarioLabel.textColor = this.§;!N§;
               }
               else
               {
                  this.scenarioLabel.textColor = §]&=§;
               }
            }
            else
            {
               this.scenarioLabel.visible = false;
            }
         }
         if(this.§]e§)
         {
            §`o§.§1$T§(this.§]e§,this.§=!T§);
            §`o§.§1$T§(this.friendsLabel,this.§=!T§);
         }
         §`o§.§4%4§(this.§=!T§,this.levelLabel);
         if(this.§;$1§)
         {
            if(param1.§&&@§())
            {
               §`o§.§1$T§(this.§7%&§,this.§]e§,-3);
            }
            else if(param1.§`%n§())
            {
               §`o§.§1$T§(this.scenarioLabel,this.levelLabel);
               §`o§.§1$T§(this.§7%&§,this.scenarioLabel,-3);
            }
            else
            {
               §`o§.§1$T§(this.§7%&§,this.§=!T§,-3);
            }
         }
      }
   }
}

