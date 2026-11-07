package §&!@§
{
   import § #m§.§?A§;
   import § &5§.§%$O§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.§'-§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.*;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §4!!§.§'$V§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!9§.§6$,§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§"!z§;
   import §=&!§.§<$!§;
   import §>%I§.§-#f§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?%J§.§#%G§;
   import §?>§.§]!V§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$v§.*;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.SetExpelPermitResponse;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class Engineer extends §6"d§
   {
      
      public function Engineer()
      {
         super(70);
         resource = new §@#%§("engineer.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§'#L§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §#%G§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[new Point(1421,1190),new Point(779,1033),new Point(2551,968),new Point(2230,303)],[new Point(683,419)]];
      }
      
      override protected function §!"V§() : void
      {
         §'#G§();
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.ENGINEER_DONT_LET_SPAWN_2_DRONES)
         {
            _loc2_ = §]%!§(BossAchieves.ENGINEER_DONT_LET_SPAWN_2_DRONES);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
         else if(param1.code == BossAchieves.ENGINEER_KILL_WITH_ROCKETS)
         {
            _loc2_ = §]%!§(BossAchieves.ENGINEER_KILL_WITH_ROCKETS);
            if(_loc2_.available)
            {
               _loc2_.completed = true;
               §`#t§(_loc2_);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.source is §;#Q§ && param1.source.owner.squad.isAi())
         {
            _loc2_ = §]%!§(BossAchieves.ENGINEER_AVOID_LASERS);
            if(param1.power > 0 && _loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.ENGINEER_AVOID_LASERS).§,%,§();
         §]%!§(BossAchieves.ENGINEER_DONT_LET_SPAWN_2_DRONES).§,%,§();
      }
   }
}

