package §!!!§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "%§.§0$[§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$n§.*;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §&$Y§.§&!R§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0%z§.§+y§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §3#T§.*;
   import §3#a§.§<#_§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §9![§.§^§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.§!$^§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetColiseumRewardResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §7&%§ extends §"&=§
   {
      
      private var §2$l§:TextField;
      
      public function §7&%§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc3_:§`!d§ = null;
         super.setItem(param1);
         var _loc2_:§`!d§ = param1 as §`!d§;
         this.§]$o§(_loc2_);
         this.§""[§(param1 as §`!d§);
         this.§2$l§ = getChildByName("textNew") as TextField;
         this.§2$l§.text = "";
         this.§2$l§.visible = Boolean(_loc2_.§##m§()) && _loc2_.§##m§() != §^"p§.NONE;
         if(this.§2$l§.visible)
         {
            §&$9§.§>&F§(this.§2$l§,§"-§.§+$m§,§^"p§.getText(_loc2_.§##m§(),true));
         }
         getChildByName("lock").visible = false;
         getChildByName("exist").visible = §@&&§.getProfile().getRace().equals(_loc2_);
         getChildByName("deactive").visible = true;
         for each(_loc3_ in §@&&§.getProfile().§;$F§())
         {
            if(_loc3_.equals(_loc2_))
            {
               getChildByName("deactive").visible = false;
               break;
            }
         }
      }
      
      protected function §]$o§(param1:§`!d§) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:§`!d§ = null;
         for each(_loc3_ in §9%+§.§?%S§())
         {
            _loc2_ = getChildByName(_loc3_.configName);
            if(_loc2_)
            {
               _loc2_.visible = _loc3_.equals(param1);
               _loc2_ = null;
            }
         }
      }
      
      protected function §""[§(param1:§`!d§) : void
      {
         var _loc2_:int = param1 == Race.ALIEN.§]!D§() ? 1 : int(param1.§,X§());
         var _loc3_:§?$8§ = new §?$8§(param1.§7%z§(),param1.§]G§(),_loc2_,§@&&§.getProfile().getLevel());
         if(param1 == Race.ALIEN.§]!D§())
         {
            _loc3_.§>"L§();
         }
         setQtipPanel(_loc3_,§;#^§.RIGHT);
      }
      
      protected function §-$q§(param1:§`!d§) : void
      {
         setQtip(param1.§7%z§(),§;#^§.§[!K§,§+"'§.§]!H§);
      }
   }
}

