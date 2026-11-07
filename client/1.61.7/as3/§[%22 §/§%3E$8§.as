package §[" §
{
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §>$8§ extends §`&-§
   {
      
      private var bg:DisplayObject;
      
      private var text:TextField;
      
      private var § &+§:MovieClip;
      
      private var §%#Z§:§`&-§;
      
      public function §>$8§(param1:DisplayObject = null)
      {
         super(param1);
         this.§ &+§ = §3!3§.§&%!§();
         this.§ &+§.width = this.§ &+§.height = 35;
         this.§%#Z§ = new §`&-§(this.§ &+§);
         §?!C§(this.§ &+§);
         this.§%#Z§.setQtip(§0$N§.CHRISTMASS_KEY,§;#^§.§[!K§,§+"'§.§3%y§);
         this.bg = getChildByName("keyBG");
         this.§%#Z§.x = this.bg.x + 5;
         this.§%#Z§.y = this.bg.y + (this.bg.height - this.§ &+§.height) * 0.5;
         this.text = §'%s§("text");
         this.text.autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function §64§(param1:uint) : void
      {
         §&$9§.§>&F§(this.text,§"-§.§6"j§,§2"e§.§5%t§(param1));
         this.text.x = this.§%#Z§.x + this.§ &+§.width + 5;
         this.bg.width = this.text.x + this.text.width - 5;
      }
   }
}

