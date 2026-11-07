package §,%$§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §0%[§.§0%§;
   import §1#p§.§"Z§;
   import §5#`§.*;
   import §6"'§.§=$@§;
   import §7!B§.§&"T§;
   import §7$t§.*;
   import §<$q§.§,%3§;
   import §<%E§.§;!y§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §'§
   {
      
      private var mapId:uint;
      
      private var §'F§:Vector.<Vector.<§0>§>>;
      
      public function §'§()
      {
         super();
      }
      
      public function §'#C§(param1:uint) : void
      {
         this.mapId = param1;
      }
      
      public function §3"C§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:Vector.<§0>§> = null;
         var _loc4_:§+%]§ = null;
         this.§'F§ = new Vector.<Vector.<§0>§>>(0);
         for each(_loc2_ in param1)
         {
            _loc3_ = new Vector.<§0>§>(0);
            for each(_loc4_ in _loc2_.§1!n§())
            {
               _loc3_.push(§=#'§.§&%A§(_loc4_));
            }
            this.§'F§.push(_loc3_);
         }
      }
   }
}

