package §-&5§
{
   import § L§.§`T§;
   import §0%[§.§0%§;
   import §4%_§.§3§;
   import §7$1§.§3&G§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §9%k§.§?%o§;
   import §;!J§.*;
   import §<%E§.§6$=§;
   import §?$7§.§6%k§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §@$K§ extends §`&-§
   {
      
      private var §4!2§:TextField;
      
      public function §@$K§(param1:DisplayObject = null)
      {
         super(param1);
         if(getChildByName("requirements"))
         {
            this.§4!2§ = §'%s§("requirements");
         }
         if(this.§4!2§)
         {
            this.§4!2§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      public function update(param1:§??§) : void
      {
         var _loc5_:String = null;
         var _loc7_:§,&F§ = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc2_:String = "";
         var _loc3_:String = "#B30000";
         var _loc4_:String = "#538E06";
         var _loc6_:§=?§ = param1 as §=?§;
         if(_loc6_)
         {
            _loc7_ = §?%o§.§0%L§(_loc6_.getId());
            if(_loc7_)
            {
               _loc8_ = §0%§.format(§0$N§.§%! §("ITEM_TOBE_PRESENT"),{"level":_loc7_.getLevel()});
               _loc2_ += "<b>" + _loc8_ + "</font></b><br/>";
            }
         }
         if(Boolean(_loc6_) && _loc6_.getRequiredRating() > 0)
         {
            if(§,! §.§1#C§(_loc6_))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ = _loc3_;
            }
            _loc2_ += "<b>" + §0$N§.SHOP_REQUIRED_RATING + ": ";
            _loc2_ += "<font color=\'" + _loc5_ + "\'> " + _loc6_.getRequiredRating() + "</font></b><br/>";
         }
         if(param1.§,X§() > 1)
         {
            _loc2_ += "<b>" + §0$N§.SHOP_REQUIRED_LEVEL + ": ";
            if(§,! §.§&$F§(param1))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ = _loc3_;
            }
            _loc2_ += "<font color=\'" + _loc5_ + "\'> " + param1.§,X§().toString() + "</b><br/>";
         }
         if(param1.§&&@§())
         {
            if(§,! §.§`n§(param1))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ = _loc3_;
            }
            _loc2_ += "<b><font color=\'#524336\'>" + §0$N§.SHOP_REQUIRED_FRIENDS + ": " + "</font>" + "<font color =\'" + _loc5_ + "\'>" + param1.§ %D§().toString() + "</font></b><br/>";
         }
         if(param1.§`%n§())
         {
            if(§,! §.§2&;§(param1))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ = _loc3_;
            }
            _loc9_ = §6%k§.§7%q§(param1.§`%n§()).§7%z§();
            _loc2_ += "<b><font color=\'#524336\'>" + §0$N§.SHOP_SCENARIO_REQUIREMENT + "</font>" + "<font color =\'" + _loc5_ + "\'>" + " " + _loc9_ + "</b></font><br/>";
         }
         if(Boolean(param1.§4$n§()) && Boolean(param1.getRealPrice()) && !§,! §.§1%q§(param1))
         {
            _loc2_ += "<b><font color =\'" + _loc4_ + "\'>" + §0$N§.SHOP_BUY_FOR_REAL_MONEY + "</b></font><br/>";
         }
         if(this.§4!2§)
         {
            this.§4!2§.htmlText = _loc2_;
         }
      }
      
      public function get requirements() : TextField
      {
         return this.§4!2§;
      }
   }
}

