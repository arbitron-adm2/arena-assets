package §[" §
{
   import § #m§.§;#^§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §-G§.§&"7§;
   import §2#V§.§-#U§;
   import §4!!§.§76§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class § #a§ extends §`&-§
   {
      
      private var btnOn:§?%>§;
      
      private var btnOff:§?%>§;
      
      public function § #a§(param1:DisplayObject, param2:DisplayObject, param3:String = null)
      {
         super();
         this.btnOn = §!&5§.§7#[§(param1);
         this.btnOff = §!&5§.§7#[§(param2);
         this.btnOn.§[!u§(this.§4"B§);
         this.btnOff.§[!u§(this.§4"B§);
         this.btnOn.setQtip(§0$N§.§%! §("FULLSCREEN_MODE_ON"),§;#^§.LEFT,param3);
         this.btnOff.setQtip(§0$N§.§%! §("FULLSCREEN_MODE_OFF"),§;#^§.LEFT,param3);
      }
      
      public function §6$i§() : void
      {
         if(this.btnOn)
         {
            this.btnOn.setVisible(!§8"%§.§^%W§.§5!3§());
         }
         if(this.btnOff)
         {
            this.btnOff.setVisible(§8"%§.§^%W§.§5!3§());
         }
      }
      
      public function §4"B§(param1:MouseEvent = null) : void
      {
         this.§6$i§();
         §8"%§.§^%W§.§5$q§();
      }
      
      override public function set x(param1:Number) : void
      {
         if(this.btnOn)
         {
            this.btnOn.x = param1;
         }
         if(this.btnOff)
         {
            this.btnOff.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(this.btnOn)
         {
            this.btnOn.y = param1;
         }
         if(this.btnOff)
         {
            this.btnOff.y = param1;
         }
      }
      
      override public function get x() : Number
      {
         return this.btnOn ? Number(this.btnOn.x) : 0;
      }
      
      override public function get y() : Number
      {
         return this.btnOn ? Number(this.btnOn.y) : 0;
      }
      
      override public function get height() : Number
      {
         return this.btnOn ? Number(this.btnOn.height) : 0;
      }
      
      override public function get width() : Number
      {
         return this.btnOn ? Number(this.btnOn.width) : 0;
      }
      
      override public function destroy() : void
      {
         this.btnOn.removeHandler(this.§6$i§);
         this.btnOff.removeHandler(this.§6$i§);
         this.btnOn = null;
         this.btnOff = null;
      }
   }
}

