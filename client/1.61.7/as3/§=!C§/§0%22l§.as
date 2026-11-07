package §=!C§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-@§.*;
   import §0%[§.§1%"§;
   import §1#p§.§2=§;
   import §5%S§.§>&-§;
   import §5%u§.§4"h§;
   import §6%2§.§,x§;
   import §<%E§.§6$=§;
   import §<%J§.RopeRaceGiftMenu;
   import §=&!§.§<$!§;
   import §?$K§.§@$J§;
   import §@!i§.§!m§;
   import §@!i§.§5%8§;
   import §[%'§.§<"G§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   use namespace gestouch_internal;
   
   public class §0"l§ extends §`&-§
   {
      
      private var title:TextField;
      
      private var text:TextField;
      
      public function §0"l§()
      {
         super(§6#A§.§!&6§(§+"'§.§+6§));
      }
      
      public function get message() : String
      {
         return this.text.text;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.title = getChildByName("title") as TextField;
         this.text = getChildByName("text") as TextField;
         this.§ !"§();
      }
      
      public function § !"§(param1:String = null, param2:String = null) : void
      {
         this.title.text = param1 ? param1 : "";
         this.text.textColor = 5631743;
         this.text.text = param2 ? param2 : "";
         this.text.height = this.text.textHeight + 10;
      }
   }
}

