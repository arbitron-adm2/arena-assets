package §5$]§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §4#2§.*;
   import §7"Q§.§"&=§;
   import §9"^§.§,Q§;
   import §<$q§.§,%3§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §<%f§ extends §"&=§
   {
      
      private var §<S§:Vector.<MovieClip>;
      
      private var §%"d§:MovieClip;
      
      private var §7$Z§:MovieClip;
      
      public function §<%f§(param1:DisplayObjectContainer)
      {
         var _loc2_:MovieClip = null;
         super(param1);
         this.§%"d§ = §'$a§("yellow");
         this.§7$Z§ = §'$a§("green");
         this.§<S§ = new <MovieClip>[§'$a§("yellow.light"),§'$a§("green.light")];
         §§push(param1);
         var _loc3_:Boolean;
         param1.mouseChildren = _loc3_ = false;
         §§pop().mouseEnabled = _loc3_;
         this.§%"d§.mouseEnabled = this.§%"d§.mouseChildren = false;
         this.§7$Z§.mouseEnabled = this.§7$Z§.mouseChildren = false;
         for each(_loc2_ in this.§<S§)
         {
            _loc2_.mouseEnabled = _loc2_.mouseChildren = false;
         }
      }
      
      public function reset() : void
      {
         this.§7$Z§.visible = false;
         this.§%"d§.visible = true;
      }
      
      public function §!"&§() : void
      {
         this.§7$Z§.visible = true;
         this.§%"d§.visible = false;
      }
   }
}

