package §4u§
{
   import §!L§.§+"'§;
   import §#%!§.§%&F§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §?$7§.*;
   import §@!i§.§8%6§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §!!o§ extends §;$H§
   {
      
      protected var label:TextField;
      
      public function §!!o§(param1:String = "")
      {
         super(§6#A§.§!&6§(§+"'§.§ "M§));
         this.label = TextField(getChildByName("itemName"));
         this.label.autoSize = TextFieldAutoSize.LEFT;
         this.initHint(param1);
      }
      
      public function initHint(param1:String) : void
      {
         this.label.text = param1;
         panel.width = this.label.width + 12;
      }
   }
}

