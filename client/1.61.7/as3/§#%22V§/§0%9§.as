package §#"V§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#5§.*;
   import §#P§.§`o§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §2"L§.§;#L§;
   import §2#x§.*;
   import §3#T§.*;
   import §4$b§.§6!G§;
   import §5"J§.*;
   import §5$]§.§3& §;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;$%§.§'%W§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§8%6§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.net.*;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §0%9§ extends §4#_§ implements §?%>§
   {
      
      protected var downState:DisplayObject;
      
      protected var upState:DisplayObject;
      
      protected var overState:DisplayObject;
      
      public function §0%9§(param1:SimpleButton)
      {
         super(param1);
         this.downState = param1.downState;
         this.upState = param1.upState;
         this.overState = param1.overState;
         param1.tabEnabled = false;
         §0A§(MouseEvent.CLICK,this.§'$9§);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §@$j§ = § "N§.§,M§;
         §-%m§ = § "N§.§=%b§;
      }
      
      private function §4$]§(param1:DisplayObjectContainer) : TextField
      {
         var _loc2_:uint = 0;
         while(_loc2_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc2_) is TextField)
            {
               return param1.getChildAt(_loc2_) as TextField;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[!u§(param1:Function, param2:int = 0) : void
      {
         addEventListener(MouseEvent.CLICK,param1,false,param2);
      }
      
      public function removeHandler(param1:Function) : void
      {
         removeEventListener(MouseEvent.CLICK,param1);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         super.setDisabled(param1);
         if(param1)
         {
            §;#L§.setDisabled(container);
         }
         else
         {
            §;#L§.§=#H§(container);
         }
         this.§&$4§().mouseEnabled = !param1;
      }
      
      protected function §&$4§() : SimpleButton
      {
         return container as SimpleButton;
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         §<$=§();
         dispatchEvent(param1);
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      protected function §7"?§() : SimpleButton
      {
         return container as SimpleButton;
      }
      
      public function setText(param1:String, param2:TextFormat = null, param3:String = "text") : void
      {
         var _loc4_:TextField = TextField(§`o§.getChildByName(this.upState as DisplayObjectContainer,param3));
         var _loc5_:TextField = TextField(§`o§.getChildByName(this.downState as DisplayObjectContainer,param3));
         var _loc6_:TextField = TextField(§`o§.getChildByName(this.overState as DisplayObjectContainer,param3));
         if(param2)
         {
            if(_loc4_)
            {
               §&$9§.§>&F§(_loc4_,param2);
            }
            if(_loc6_)
            {
               §&$9§.§>&F§(_loc6_,param2);
            }
            if(_loc5_)
            {
               §&$9§.§>&F§(_loc5_,param2);
            }
         }
         if(_loc4_)
         {
            _loc4_.antiAliasType = AntiAliasType.NORMAL;
         }
         if(_loc6_)
         {
            _loc6_.antiAliasType = AntiAliasType.NORMAL;
         }
         if(_loc5_)
         {
            _loc5_.antiAliasType = AntiAliasType.NORMAL;
         }
         if(_loc4_)
         {
            _loc4_.text = param1;
         }
         if(_loc6_)
         {
            _loc6_.text = param1;
         }
         if(_loc5_)
         {
            _loc5_.text = param1;
         }
      }
      
      public function get simpleButton() : SimpleButton
      {
         return container as SimpleButton;
      }
   }
}

