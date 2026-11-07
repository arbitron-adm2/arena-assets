package §!!!§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §%"Z§.§+$A§;
   import §&§.§<!U§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §0%[§.Cookie;
   import §0&F§.§0$_§;
   import §02§.§<!v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#x§.§@!U§;
   import §2o§.§]#@§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#a§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@8§.§%Z§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%$5§ extends §<!U§
   {
      
      private var icon:MovieClip;
      
      private var raceRecord:§`!d§;
      
      public function §%$5§()
      {
         super(§6#A§.§!&6§(§+"'§.§?"]§));
         this.icon = §'$a§("icon");
         _removeChild(this.icon);
         getChildByName("countField").visible = false;
      }
      
      public function open(param1:§`!d§) : void
      {
         var _loc2_:MovieClip = null;
         this.raceRecord = param1;
         §#7§(§0$N§.TITLE_BUY_RACE);
         §8&;§(param1.§%"]§(),false);
         §3#1§("message",§0$N§.RACE_BUY_MESSAGE);
         submessage.visible = true;
         §&$9§.§>&F§(submessage,§"-§.§+$m§,param1.§7%z§());
         _loc2_ = §6#A§.§!&6§(§+"'§.§!!?§);
         var _loc3_:§7&%§ = new §7&%§(_loc2_);
         _loc3_.setItem(param1);
         §&!a§(_loc3_);
         _loc3_.y = this.icon.y;
         addChild(_loc3_);
         §`o§.§1$T§(this.icon,message,10);
         §`o§.§1$T§(_loc3_.getContainer(),message,15);
         §`o§.§^#c§(_loc3_.getContainer(),§'$a§("backPanel"));
         ingamePriceBtn.setDisabled(!§,! §.§1%q§(param1));
         show();
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         this.dispatchEvent(new §]#@§(§]#@§.BUY_ITEM,this.raceRecord,param1,1));
         hide();
      }
   }
}

