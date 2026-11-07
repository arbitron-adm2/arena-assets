package §1#o§
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §,"v§.§9%d§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#s§.§7"N§;
   import §4$b§.§6!G§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%E§.§'$g§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §[$<§.§>"9§;
   import §[%'§.§<"G§;
   import §]#[§.§2%o§;
   import §`"x§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §-#d§ extends §+!h§
   {
      
      private var loading:MovieClip;
      
      private var §%$?§:§`&-§;
      
      private var §;!z§:§`&-§;
      
      private var §>$j§:§`&-§;
      
      private var §%%^§:§3U§;
      
      private var §?R§:§3U§;
      
      private var §?#'§:§6!G§;
      
      private var profile:UserProfile;
      
      private var addBtnOver:DisplayObject;
      
      public function §-#d§(param1:MovieClip)
      {
         super(param1);
         this.§&%E§ = false;
         §!=§(§+"'§.§?-§);
         this.loading = getChildByName("loading") as MovieClip;
         this.§%$?§ = new §`&-§(getChildByName("artifact"));
         this.§;!z§ = new §`&-§(getChildByName("hat"));
         this.§>$j§ = new §`&-§(getChildByName("stats"));
         this.§%%^§ = new §3U§(this.§%$?§.getChildByName("icon"),true);
         this.§?R§ = new §3U§(this.§;!z§.getChildByName("icon"),true);
         this.addBtnOver = getChildByName("addBtnOver");
         this.addBtnOver.visible = false;
         §^"P§(getContainer(),MouseEvent.CLICK,this.§=&F§);
         §^"P§(getContainer(),MouseEvent.MOUSE_OVER,this.§-$l§);
         §^"P§(getContainer(),MouseEvent.MOUSE_OUT,this.§6"x§);
      }
      
      private function §6"x§(param1:MouseEvent) : void
      {
         this.addBtnOver.visible = DisplayObject(param1.currentTarget).name.indexOf("char") == -1;
      }
      
      private function §-$l§(param1:MouseEvent) : void
      {
         this.addBtnOver.visible = true;
      }
      
      private function §=&F§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.profile)
         {
            _loc2_ = param1.currentTarget.name.replace("char","") - 1;
            §8"%§.§%$r§.§9&$§(_loc2_);
         }
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:UserProfile = null;
         var _loc3_:§^%%§ = null;
         var _loc4_:§^$E§ = null;
         if(param1)
         {
            this.loading.visible = false;
            this.loading.stop();
            this.profile = UserProfile(param1);
            _loc2_ = this.profile.§`!D§();
            _loc3_ = _loc2_.§+!b§();
            _loc4_ = _loc2_.§2u§();
            _loc2_.§;"U§(null);
            _loc2_.§7"i§(null);
            avatar.§3%,§(_loc2_);
            avatar.setVisible(true);
            this.§%%^§.setItem(_loc3_);
            this.§?R§.setItem(_loc4_);
            this.§>$j§.§'%s§("attack").text = §4! §.§@#F§(this.profile.stats.§'$Q§.value,this.profile.stats.§>%Y§.value);
            this.§>$j§.§'%s§("armor").text = §4! §.§@#F§(this.profile.stats.§+#+§.value,this.profile.stats.§>%v§.value);
            this.§>$j§.§'%s§("health").text = §4! §.§@#F§(this.profile.stats.§8+§.value,this.profile.stats.§3$L§.value);
            this.§?#'§ = §"$t§.§!!1§(this.§?#'§,_loc2_,§#!`§().getChildByName("avatar") as MovieClip);
            §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,_loc2_.getCharName());
         }
         else
         {
            this.loading.visible = true;
            this.loading.play();
            this.profile = null;
            avatar.setVisible(false);
            this.§%%^§.setItem(null);
            this.§?R§.setItem(null);
         }
         setDisabled(param1 == null);
      }
   }
}

