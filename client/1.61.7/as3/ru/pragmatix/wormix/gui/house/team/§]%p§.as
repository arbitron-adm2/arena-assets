package ru.pragmatix.wormix.gui.house.team
{
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §7$t§.§2& §;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §?>§.§]!V§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §]%p§ extends §1#g§
   {
      
      protected var btnCancel:§?%>§;
      
      protected var §'#y§:§]!V§;
      
      public function §]%p§(param1:DisplayObjectContainer, param2:§]!V§)
      {
         super(param1);
         this.§'#y§ = param2;
         this.btnCancel = §!&5§.§7#[§(getChildByName("btnCancel"));
         this.btnCancel.§[!u§(this.onCancel);
      }
      
      protected function onCancel(param1:Event) : void
      {
         this.§'#y§.§<'§();
         setVisible(false);
      }
      
      override public function destroy() : void
      {
         this.§'#y§ = null;
         this.btnCancel.destroy();
         super.destroy();
      }
   }
}

