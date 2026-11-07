package §#",§
{
   import § $q§.§-%f§;
   import § $q§.§1$Y§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ChooseFriendMenu extends §1$Y§
   {
      
      private var §=$T§:Function;
      
      private var §4#L§:Function;
      
      public function ChooseFriendMenu(param1:Function, param2:Function = null, param3:String = null)
      {
         super(§6#A§.§!&6§(§+"'§.§'#M§));
         this.§=$T§ = param1;
         this.store = new §?#8§(§4#B§.numChildren);
         §'%s§("msg").visible = false;
         if(!param3)
         {
            param3 = §0$N§.CALL_FRIEND_ON_PVP_MENU_TITLE;
         }
         §#7§(§0$N§.§<N§(param3));
         var _loc4_:§?%>§ = §!&5§.§7#[§(getChildByName("selectAll"));
         if(param2 != null)
         {
            this.§4#L§ = param2;
            _loc4_.setText(§0$N§.SOLO_HOTSEAT_BTN_NAME,§"-§.§+$m§);
            _loc4_.§[!u§(this.§46§);
            §>!-§.x = width / 2 - §>!-§.width - 5;
         }
         else
         {
            _loc4_.setVisible(false);
         }
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
      }
      
      override protected function §%&9§() : void
      {
         §=#h§ = §0$N§.BUTTON_OK;
         §7%c§ = true;
         super.§%&9§();
      }
      
      override protected function okAction() : void
      {
         var _loc1_:UserProfile = null;
         if(getSelected())
         {
            _loc1_ = getSelected() as UserProfile;
            if(_loc1_)
            {
               this.§=$T§(_loc1_);
               hide();
            }
         }
      }
      
      private function §46§(param1:Event = null) : void
      {
         this.§4#L§();
         hide();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §-%f§(param1 as MovieClip,null,true);
      }
   }
}

