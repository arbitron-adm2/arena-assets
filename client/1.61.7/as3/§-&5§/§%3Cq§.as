package §-&5§
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§2$#§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §4&F§.*;
   import §7!B§.*;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<%k§.*;
   import §?!p§.§;W§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §<q§ extends §`&-§
   {
      
      private var §`#'§:TextField;
      
      public function §<q§(param1:DisplayObject = null)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§`#'§ = §'%s§("rubies");
         §'%s§("compensation").htmlText = "<b>" + §0$N§.BUNDLE_PART_COMPENSATION + "</b>";
      }
      
      public function setValue(param1:int) : void
      {
         §7&5§.§?$k§(this.§`#'§,"+" + param1.toString());
         setVisible(param1 > 0);
      }
   }
}

