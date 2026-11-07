package §["3§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.§%#F§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&"c§.§!!q§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §4u§.ReagentHint;
   import §6_§.*;
   import §7"Q§.§%!o§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§-!Y§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class CraftEquipInfoHint extends §%!o§
   {
      
      private var backPanel:DisplayObject;
      
      private var description:TextField;
      
      private var title:TextField;
      
      private var §7$&§:TextFormat;
      
      public function CraftEquipInfoHint()
      {
         super(§6#A§.§!&6§(§+"'§.§8g§));
         this.title = §'%s§("title");
         this.title.text = §<"G§.§%! §("TRY_YOUR_LUCK");
         this.§7$&§ = new TextFormat();
         this.§7$&§.bold = true;
         this.title.setTextFormat(this.§7$&§);
         this.backPanel = getChildByName("backPanel");
         this.description = §'%s§("description");
         this.setText(§<"G§.§%! §("CRAFT_VARIATION_HINT"));
      }
      
      public function setText(param1:String) : void
      {
         this.description.text = param1;
         this.description.height = 20 * this.description.numLines;
         this.backPanel.height = this.description.y + this.description.height + 20;
      }
      
      public function §#7§(param1:String) : void
      {
         this.title.text = param1;
         this.title.setTextFormat(this.§7$&§);
      }
   }
}

