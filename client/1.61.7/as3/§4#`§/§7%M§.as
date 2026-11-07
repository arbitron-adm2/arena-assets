package §4#`§
{
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#o§.*;
   import §1#p§.*;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §<%E§.§'$g§;
   import §<%E§.§,$2§;
   import §<K§.*;
   import §=!p§.§'%#§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §`"x§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §7%M§ extends §`&-§
   {
      
      private var field:TextField;
      
      public function §7%M§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.field = §'%s§("text");
         this.field.mouseEnabled = false;
      }
      
      public function setValue(param1:int) : void
      {
         §&$9§.§>&F§(this.field,§"-§.§6"j§,param1.toString());
      }
   }
}

