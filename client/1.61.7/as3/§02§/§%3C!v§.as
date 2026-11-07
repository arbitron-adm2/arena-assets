package §02§
{
   import § "d§.§,!c§;
   import §!!i§.§@&&§;
   import §!$Z§.§"$I§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §+%o§.*;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §5!,§.§?!P§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §?>§.§4#o§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§@$y§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §<!v§ extends §@$y§
   {
      
      private static const §0#@§:String = "ReserveBtnGroup";
      
      private var unlockBar:§<%[§;
      
      public function §<!v§(param1:MovieClip, param2:TeamRoom)
      {
         super(param1,param2);
         this.unlockBar = new §<%[§(§'$a§("unlockBar"),this);
      }
      
      override public function initFromProfile(param1:UserProfile) : void
      {
         this.profile = param1;
         var _loc2_:Array = §0$c§.§^%_§(§""L§.§,"=§(param1.§"]§()),§@&&§.getProfile());
         setData(_loc2_);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§#$%§ = new §#$%§(param1 as DisplayObjectContainer,§0#@§,this);
         _loc2_.tglLight.§[!u§(this.§!"&§);
         return _loc2_;
      }
      
      override public function activate() : void
      {
         super.activate();
         this.unlockBar.setVisible(false);
      }
      
      override protected function §!"&§(param1:Event = null) : void
      {
         var _loc2_:§#$%§ = null;
         var _loc3_:Boolean = false;
         super.§!"&§(param1);
         this.unlockBar.setVisible(false);
         var _loc4_:int = 0;
         var _loc5_:int = int(cells.length);
         while(_loc4_ < _loc5_)
         {
            _loc2_ = cells[_loc4_];
            if(_loc2_.isPressed())
            {
               §?%1§(_loc2_);
               §%f§.§3%,§(_loc2_.getProfile(),_loc2_);
               if(_loc2_.isLocked())
               {
                  _loc3_ = true;
                  lockBar.setVisible(true);
               }
            }
            _loc4_++;
         }
         var _loc6_:Boolean = §%f§.getProfile() != null;
         §%f§.setVisible(_loc6_);
         dispatchEvent(new §4#o§(§4#o§.§80§));
      }
      
      override public function §<'§() : void
      {
         var _loc1_:§#$%§ = null;
         this.unlockBar.setVisible(false);
         for each(_loc1_ in cells)
         {
            _loc1_.tglLight.setPressed(false);
         }
         super.§<'§();
      }
      
      override public function §[!G§(param1:int) : void
      {
         §?%1§(null);
         this.unlockBar.§8&;§(§5&4§.§;"T§[param1]);
         dispatchEvent(new §4#o§(§4#o§.§0%'§));
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.unlockBar.setVisible(false);
      }
      
      override public function destroy() : void
      {
         this.unlockBar.destroy();
         super.destroy();
      }
   }
}

