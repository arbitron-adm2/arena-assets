package §@!W§
{
   import § m§.§9!^§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0%z§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9"-§.§?!s§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §?$7§.§!§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   use namespace gestouch_internal;
   
   public class §>4§ extends §4#_§
   {
      
      private var value:TextField;
      
      public function §>4§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.value = TextField(param1.getChildByName("value"));
         this.value.autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function setValue(param1:int) : void
      {
         this.value.text = param1.toString();
      }
   }
}

