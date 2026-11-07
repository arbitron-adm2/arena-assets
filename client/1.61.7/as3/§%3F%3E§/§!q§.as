package §?>§
{
   import §0%[§.§0%§;
   import §5$]§.§3& §;
   import §@!i§.§<!9§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§]%p§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §!q§ extends §]%p§
   {
      
      public function §!q§(param1:DisplayObjectContainer, param2:§]!V§)
      {
         super(param1,param2);
      }
      
      public function §3!$§(param1:int) : void
      {
         var _loc2_:int = 0;
         _loc2_ = §<!9§.§0r§(param1);
         var _loc3_:String = §0%§.format(§0$N§.CAN_HIRE_AT_LEVEL,{"lvl":_loc2_});
         §7&5§.§>&<§(§'%s§("textLock"),_loc3_);
      }
      
      override protected function onCancel(param1:Event) : void
      {
         if(§'#y§ is §3& §)
         {
            §'#y§.§[#C§(true);
         }
         super.onCancel(param1);
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
   }
}

