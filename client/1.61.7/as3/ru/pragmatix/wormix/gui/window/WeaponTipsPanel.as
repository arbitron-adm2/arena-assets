package ru.pragmatix.wormix.gui.window
{
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.ChooseFriendMenu;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§!!q§;
   import §&#h§.§!"b§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§,'§;
   import §3"@§.§""m§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §<"?§.*;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=&!§.§4$z§;
   import §?"[§.*;
   import §@!N§.§""L§;
   import §@!i§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class WeaponTipsPanel extends §@& §
   {
      
      private var textField:TextField = null;
      
      private var §+]§:TextField = null;
      
      private var §!&'§:Boolean = false;
      
      private var back:DisplayObject;
      
      private var indent:int = 25;
      
      public function WeaponTipsPanel()
      {
         super(§6#A§.§!&6§(§+"'§.§-#j§));
         this.textField = §'%s§("weaponTips");
         this.textField.text = "";
         this.back = getChildByName("backPanel");
         §0#P§ = false;
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         hide();
         super.§0!j§(param1);
      }
      
      public function §[$9§(param1:String) : void
      {
         if(this.§+]§ != null || !param1)
         {
            this.§+]§ = null;
            hide();
         }
         else
         {
            this.§+]§ = this.§#$V§(param1);
            show(false);
         }
         this.§#K§();
      }
      
      public function §^f§() : void
      {
         if(this.§+]§ != null)
         {
            hide();
            this.§!&'§ = true;
            this.§+]§ = null;
         }
      }
      
      public function §>#u§(param1:Boolean) : void
      {
         this.§!&'§ = param1;
         setVisible(!param1);
      }
      
      public function §#$V§(param1:String) : TextField
      {
         this.textField.htmlText = param1;
         this.textField.autoSize = TextFieldAutoSize.CENTER;
         return this.textField;
      }
      
      public function §#K§() : void
      {
         this.back.height = this.textField.height + this.indent;
         y = Application.scene.height - height - (Application.scene.height - Application.scene.§7#o§.§0#l§.getContainer().y - Application.scene.§7#o§.§0#l§.getContainer().height);
      }
      
      override public function destroy() : void
      {
         §8"%§.§&S§.§<#K§(!this.§!&'§,false);
         super.destroy();
      }
   }
}

