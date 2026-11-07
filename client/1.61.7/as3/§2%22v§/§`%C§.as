package §2"v§
{
   import § $q§.§3U§;
   import §##j§.§9x§;
   import §&#h§.*;
   import §4u§.ReagentHint;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§>#r§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §`%C§ extends §>#r§
   {
      
      private var §2%k§:TextField;
      
      public var §3$P§:TextField;
      
      private var itemIcon:§3U§;
      
      public function §`%C§(param1:MovieClip, param2:§&!e§)
      {
         this.§2%k§ = param1["title"];
         this.§3$P§ = param1["quantity"];
         this.itemIcon = new §3U§(param1["icon"],true);
         this.itemIcon.setItem(param2,new ReagentHint(param2));
         §&$9§.§>&F§(this.§2%k§,§"-§.§+$m§);
         this.§2%k§.autoSize = TextFieldAutoSize.CENTER;
         this.§2%k§.multiline = true;
         this.§3$P§ = new TextField();
         this.§3$P§.width = 78;
         this.§3$P§.x = 2;
         this.§3$P§.y = 125;
         this.§3$P§.selectable = false;
         this.§3$P§.multiline = false;
         this.§3$P§.autoSize = TextFieldAutoSize.CENTER;
         var _loc3_:TextFormat = new TextFormat(§"-§.§6"j§.font,16);
         _loc3_.align = TextFormatAlign.CENTER;
         §&$9§.§>&F§(this.§3$P§,_loc3_);
         param1.addChild(this.§3$P§);
         super(param1);
      }
      
      public function §>$;§(param1:String) : void
      {
         this.§2%k§.text = param1;
      }
      
      public function §&"&§(param1:String) : void
      {
         this.§3$P§.htmlText = param1;
      }
   }
}

