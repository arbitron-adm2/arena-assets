package ru.pragmatix.wormix.model.bonus
{
   import § #m§.§;#^§;
   import §!"r§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§ G§;
   import §"$+§.§,!<§;
   import §"$+§.§`&$§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-G§.*;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §4!!§.§!%n§;
   import §4!!§.§2&F§;
   import §4!!§.§76§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §7$1§.§,&D§;
   import §7$t§.§;#_§;
   import §8#<§.*;
   import §;$8§.§6"E§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §>!_§.§'!&§;
   import §>!_§.§'#m§;
   import §>"w§.§#$L§;
   import §>"w§.§&%0§;
   import §>"w§.§`#Z§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@"x§.*;
   import §@$v§.§%3§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[!`§.§<#m§;
   import §[$<§.§"#"§;
   import §[$<§.§;"E§;
   import §]#[§.§2%o§;
   import §^#[§.§&$2§;
   import §`%c§.*;
   import com.adobe.images.PNGEncoder;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §@"I§
   {
      
      private var bonus:Bonus;
      
      private var §'"q§:§&$2§;
      
      public function §@"I§(param1:Bonus, param2:int)
      {
         super();
         this.bonus = param1;
         this.§'"q§ = new §&$2§(param2);
      }
      
      public static function §'$o§(param1:int, param2:String, param3:Boolean = true) : String
      {
         return §0%§.format(param2,{
            "value":param1,
            "sign":(param3 && param1 >= 0 ? "+" : "")
         });
      }
      
      public function getType() : Bonus
      {
         return this.bonus;
      }
      
      public function getValue() : int
      {
         return this.§'"q§.value;
      }
      
      public function setValue(param1:int) : void
      {
         this.§'"q§.value = param1;
      }
      
      public function addValue(param1:int) : void
      {
         this.§'"q§.value += param1;
      }
      
      public function §@$+§(param1:int = 0) : String
      {
         var _loc2_:int = param1 == 0 ? this.getValue() : param1;
         var _loc3_:String = _loc2_ ? Social.§-%c§.§4!]§(_loc2_,§0$N§.TURN_PLURALS) : "";
         return §0%§.format(this.bonus.§@$+§(),{
            "value":_loc2_,
            "turns":_loc3_
         });
      }
      
      public function §17§() : Boolean
      {
         return this.bonus.§5&9§() != "";
      }
      
      public function §'$o§(param1:Boolean = true) : String
      {
         return this.§17§() ? §@"I§.§'$o§(this.getValue(),this.bonus.§5&9§(),param1) : "";
      }
   }
}

