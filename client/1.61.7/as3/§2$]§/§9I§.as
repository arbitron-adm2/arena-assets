package §2$]§
{
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § $q§.§3U§;
   import § %?§.§4s§;
   import §#"V§.§!&5§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §7$t§.§2"y§;
   import §<%k§.§`!v§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §["3§.CraftEquipCompleteDialog;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §9I§ extends §`&-§ implements §?A§
   {
      
      private static const §5%z§:uint = 6;
      
      private var record:§2"y§;
      
      private var hint:MovieClip;
      
      private var back:DisplayObject;
      
      private var nameField:TextField;
      
      private var expireLabel:TextField;
      
      private var §5"X§:TextField;
      
      private var § 5§:int;
      
      public function §9I§(param1:§2"y§)
      {
         var _loc2_:String = null;
         var _loc5_:TextField = null;
         this.record = param1;
         _loc2_ = param1.getClipClassName();
         var _loc3_:String = _loc2_ + (_loc2_.indexOf("Vip") == 0 ? "" : "MenuIcon");
         var _loc4_:MovieClip = §6#A§.§!&6§(_loc3_);
         super(_loc4_);
         this.hint = §6#A§.§!&6§("BoosterMenuHint");
         this.back = this.hint.getChildByName("back");
         this.nameField = TextField(this.hint.getChildByName("nameField"));
         this.nameField.text = param1.§7%z§();
         this.nameField.autoSize = TextFieldAutoSize.LEFT;
         this.§ 5§ = this.nameField.x * 2 + this.nameField.width;
         _loc5_ = TextField(this.hint.getChildByName("description"));
         _loc5_.autoSize = TextFieldAutoSize.LEFT;
         this.expireLabel = TextField(this.hint.getChildByName("expireLabel"));
         this.expireLabel.autoSize = TextFieldAutoSize.LEFT;
         this.expireLabel.text = §<"G§.§%! §("BOOSTER_HINT_REMAINING_TIME_LABEL");
         this.§5"X§ = TextField(this.hint.getChildByName("expireField"));
         this.§5"X§.autoSize = TextFieldAutoSize.LEFT;
         this.§5"X§.x = §5%z§ + this.expireLabel.width;
         this.§5"X§.y = this.expireLabel.y = _loc5_.y + _loc5_.height + 3;
         this.back.height = this.expireLabel.y + this.expireLabel.height + this.nameField.y + 4;
         var _loc6_:§[&H§ = new §[&H§(container);
         _loc6_.§@!y§(this,§2#P§.§<%T§(§;#^§.RIGHT));
         if(getChildByName("dark"))
         {
            getChildByName("dark").visible = !§0#2§.§0%Y§();
         }
         if(getChildByName("light"))
         {
            getChildByName("light").visible = §0#2§.§0%Y§();
         }
      }
      
      public function §&k§() : DisplayObject
      {
         var _loc1_:int = Application.userProfile.§,%o§().§6# §(this.record.getId());
         this.§5"X§.text = §0#2§.§'!5§(§0#2§.§`"r§(_loc1_));
         this.back.width = Math.max(this.§ 5§,this.expireLabel.x * 2 + this.expireLabel.width + this.§5"X§.width);
         return this.hint;
      }
   }
}

