package §&!@§
{
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §&!?§.§+" §;
   import §&#E§.§4##§;
   import §&#W§.§?#]§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1#p§.§=$G§;
   import §2!-§.DamageEvent;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2#i§.§+%z§;
   import §2#s§.§7"N§;
   import §3#a§.§-#M§;
   import §3%?§.§=E§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §5!b§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<"?§.§6"d§;
   import §<$q§.§,%3§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$K§.§!"t§;
   import §?$K§.§,$[§;
   import §?$K§.§3#j§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!i§.§!m§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[" §.§1&@§;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^4§.§9!K§;
   import com.adobe.images.JPGEncoder;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.core.LoaderItem;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   
   public class Sergeant extends §6"d§
   {
      
      public function Sergeant()
      {
         super(50);
      }
      
      override public function getId() : int
      {
         return §+#N§.§]"T§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §2%S§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[6],mapRecord.§?$&§[3],§#$J§(841,1019),§#$J§(2536,1025)],[mapRecord.§8$2§[4]],[mapRecord.§8$2§[7],mapRecord.§8$2§[1]]];
      }
      
      override protected function §!"V§() : void
      {
         this.§@&%§.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         §'#G§();
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§%+§);
         var _loc3_:§9!K§ = param1.source as §9!K§;
         if(Boolean(!_loc2_.closed) && Boolean(_loc3_) && _loc3_.owner.squad.isAi())
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§%+§).§,%,§();
      }
      
      private function onDisposed(param1:Event) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:§2R§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(this.§@&%§,true);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ &&= _loc4_.disposed;
         }
         var _temp_2:* = §]%!§(BossAchieves.§4%9§);
         _loc5_ = §]%!§(BossAchieves.§4%9§);
         if(_loc5_.available)
         {
            if(_loc2_)
            {
               _loc5_.completed = true;
               §`#t§(_loc5_);
            }
            else
            {
               _loc5_.§#"!§();
               §5X§(_loc5_);
            }
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.§?!V§);
         if(param1 == 1 && _loc2_.available)
         {
            if(this.§@&%§.disposed)
            {
               _loc2_.completed = true;
               §`#t§(_loc2_);
            }
            else
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      private function get §@&%§() : §+%]§
      {
         return §2%S§(script).getSergeant();
      }
      
      override public function clear() : void
      {
         this.§@&%§.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         §>%A§();
         super.clear();
      }
   }
}

