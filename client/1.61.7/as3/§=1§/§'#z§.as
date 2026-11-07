package §=1§
{
   import § !8§.§`!d§;
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §&&6§.§&$U§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §-%B§.§-"o§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2!-§.SupplyPickedUpEvent;
   import §2!-§.§^!9§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §4#2§.§,%g§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5"J§.§"&B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8$V§.*;
   import §<"?§.§@&#§;
   import §<%k§.§`!v§;
   import §?#g§.§&"P§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@#K§.*;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §'#z§ extends §@&#§
   {
      
      public static const §=&I§:§&$2§ = new §&$2§(35);
      
      public static const §="G§:§&$2§ = new §&$2§(3);
      
      public function §'#z§()
      {
         super(88);
         resource = new §@#%§("thieves.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.THIEVES;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §&$U§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([§#$J§(1004,739),§#$J§(1616,924),§#$J§(2439,347),§#$J§(1280,416)],new §,'§(4 * 99)),[§#$J§(812,367)],[§#$J§(1961,520)]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§^!9§.NAME,this.§`"v§);
         script.addEventListener(§!!c§.BOX_OPEN,this.§7%S§);
         script.addEventListener(§0%v§.§^$3§,this.§&$5§);
      }
      
      private function §`"v§(param1:§^!9§) : void
      {
         var _loc2_:§2R§ = null;
         if(!param1.picker.squad.isAi())
         {
            _loc2_ = §]%!§(BossAchieves.THIEVES_AUTHORITY);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      private function §7%S§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.THIEVES_GANG_LEADER);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            §=$I§(_loc2_,§=&I§.value);
         }
      }
      
      private function §&$5§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.THIEVES_DIGGER);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            §=$I§(_loc2_,§="G§.value);
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.THIEVES_AUTHORITY).§,%,§();
      }
      
      override public function clear() : void
      {
         script.removeEventListener(§^!9§.NAME,this.§`"v§);
         script.removeEventListener(§!!c§.BOX_OPEN,this.§7%S§);
         script.removeEventListener(§0%v§.§^$3§,this.§&$5§);
         super.clear();
      }
   }
}

