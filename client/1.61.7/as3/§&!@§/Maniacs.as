package §&!@§
{
   import § #9§.§"$t§;
   import §!!!§.§7&%§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §+$=§.*;
   import §+%S§.§ #R§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.*;
   import §2#i§.§9##§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7!B§.§`s§;
   import §7"Q§.*;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<!W§.§#&#§;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?%J§.§9"=§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^!]§.TeleportEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiServerEvent;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Maniacs extends §6"d§
   {
      
      private var §8&I§:§&$2§ = new §&$2§(0);
      
      public function Maniacs()
      {
         super(74);
      }
      
      override public function getId() : int
      {
         return §+#N§.§<"7§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §9"=§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([§#$J§(499,562),§#$J§(1117,1068),§#$J§(2382,542),§#$J§(1527,406)]),[§#$J§(658,913)],[§#$J§(1950,672)]];
      }
      
      override protected function §!"V§() : void
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in §9"=§(script).getManiacs())
         {
            _loc1_.addEventListener(§0%v§.§^$3§,this.onSink);
            _loc1_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            ++this.§8&I§.value;
         }
      }
      
      private function onSink(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§"!_§);
         if(_loc2_.available)
         {
            §=$I§(_loc2_,this.§8&I§.value);
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§]$D§);
         if(_loc2_.available)
         {
            §=$I§(_loc2_,this.§8&I§.value);
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == §9"=§.§>#P§)
         {
            _loc2_ = §]%!§(BossAchieves.§#?§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function § "a§(param1:uint) : void
      {
         super.§ "a§(param1);
         if(!§8"%§.§?!W§.§4"m§.§;#l§())
         {
            this.§3$Z§();
         }
      }
      
      override protected function §'G§() : void
      {
         this.§3$Z§();
         §]%!§(BossAchieves.§#?§).§,%,§();
      }
      
      private function §3$Z§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.§]$D§);
         if(_loc1_.available && _loc1_.count > 0)
         {
            _loc1_.count = 0;
            _loc1_.§#"!§();
            §5X§(_loc1_);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in §9"=§(script).getManiacs())
         {
            _loc1_.removeEventListener(§0%v§.§^$3§,this.onSink);
            _loc1_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
         super.clear();
      }
   }
}

