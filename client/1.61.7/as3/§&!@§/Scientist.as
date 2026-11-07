package §&!@§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "L§.§`#r§;
   import §!$d§.*;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§[&$§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §1!J§.§@#%§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$t§.§;#_§;
   import §<"?§.§6"d§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §?%J§.§<"W§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^"I§.*;
   import §^"y§.*;
   import §`$T§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.plugins.*;
   import config.§=%A§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   
   public class Scientist extends §6"d§
   {
      
      public function Scientist()
      {
         super(101);
         resource = new §@#%§("scientist.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.SCIENTIST;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §<"W§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[7],mapRecord.§8$2§[5],mapRecord.§8$2§[3],mapRecord.§8$2§[1]],[mapRecord.§8$2§[4]],[mapRecord.§8$2§[6],mapRecord.§8$2§[0],mapRecord.§?$&§[2]]];
      }
   }
}

