package §=#y§
{
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#E§.§;2§;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §0%[§.§""n§;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §1#p§.*;
   import §2#x§.§]s§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §8#`§.§#%r§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §=!p§.§8#x§;
   import §?$7§.§8"e§;
   import §@!N§.*;
   import §@!i§.*;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.§'$K§;
   import config.achievements.*;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §'!J§ extends §?$D§
   {
      
      public function §'!J§(param1:Function, param2:MovieClip, param3:String, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function §,$3§() : void
      {
         §=%p§(this.§8!X§());
      }
      
      override public function §`$+§(param1:UserProfile = null) : void
      {
         §+!§ = §'$K§.§2#w§;
         §+!§.reverse();
         index = 0;
         §?"?§ = §+!§.length - 1;
         §3%q§();
      }
      
      public function §8!X§() : String
      {
         return §"#D§().url as String;
      }
      
      public function §-&1§() : int
      {
         return §"#D§().type as int;
      }
      
      public function §0"7§() : DisplayObject
      {
         return §"#D§().swf as DisplayObject;
      }
   }
}

