package §1&-§
{
   import § "d§.§,!c§;
   import §!L§.§`#p§;
   import §"$+§.§,!<§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1#p§.§"Z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §>!_§.§'#m§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §@!N§.*;
   import §@!i§.§<!9§;
   import §@"x§.§@%z§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import com.adobe.serialization.json.JSONDecoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'$y§ extends §5#A§
   {
      
      public static const NAME:String = "CRITICAL_HIT";
      
      private static const §4&%§:§&$2§ = new §&$2§(4);
      
      protected var period:§&$2§ = new §&$2§();
      
      private var §#%j§:int = -1;
      
      private var §[%A§:int = 0;
      
      public function §'$y§(param1:int, param2:int = -1)
      {
         super(NAME,-1,param1);
         this.period.value = param2 == -1 ? §4&%§.value : param2;
      }
      
      public static function §-0§(param1:§6#I§) : §'$y§
      {
         var _loc2_:§'$y§ = null;
         if(Boolean(param1) && Boolean(param1.owner))
         {
            _loc2_ = §'$y§(param1.owner.buffs.getBuff(§'$y§.NAME));
            if(Boolean(_loc2_) && param1.damageType == §&!E§.§!?§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
         this.§#%j§ = 0;
      }
      
      public function §0;§(param1:Boolean = true) : void
      {
         if(this.§#%j§ == -1)
         {
            this.§#%j§ = §8"%§.randomSeed.§,!q§(0,this.period.value - 1);
         }
         var _loc2_:int = Application.scene.§@$I§.§<#[§();
         if(_loc2_ != this.§[%A§)
         {
            this.§[%A§ = _loc2_;
            ++this.§#%j§;
         }
      }
      
      public function get §%&0§() : Boolean
      {
         return this.§#%j§ % this.period.value == 0;
      }
      
      public function §[$L§() : void
      {
         this.§#%j§ = this.period.value - 1;
      }
   }
}

