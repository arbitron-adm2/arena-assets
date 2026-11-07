package §[" §
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §0%[§.Cookie;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §7"Q§.§"&=§;
   import §7$t§.§^$E§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.TimerEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §1&@§ extends §"&=§
   {
      
      private var icon:§3U§;
      
      public function §1&@§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
         this.icon = new §3U§(getChildByName("icon"),true);
         this.icon.§1&!§(0.9);
      }
      
      override public function setSelected(param1:Boolean) : void
      {
         super.setSelected(param1);
         getChildByName("bg").visible = !param1;
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc3_:§^$E§ = null;
         super.setItem(param1);
         var _loc2_:§&"T§ = §&"T§(param1);
         if(_loc2_ is §>"D§)
         {
            _loc3_ = §<$c§.§^&1§(§>"D§(_loc2_).hatId,§8"%§.§?!W§.§4"m§.activeUnit.record.getRace());
            this.icon.setItem(_loc3_);
         }
         else if(_loc2_ is §6#I§)
         {
            this.icon.§>&6§(_loc2_);
         }
         else if(_loc2_ is §+%]§)
         {
            this.icon.§<!b§(§+%]§(_loc2_));
         }
         setDisabled(false);
         §;b§(true);
      }
      
      override public function destroy() : void
      {
         this.icon.destroy();
         super.destroy();
      }
   }
}

