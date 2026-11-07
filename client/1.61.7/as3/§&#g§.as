package
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import § %?§.§;!T§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§6[§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#8§.§&q§;
   import §2#i§.*;
   import §2o§.§]#;§;
   import §3"@§.§##L§;
   import §3#T§.AtomBomb;
   import §4!!§.§!%n§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §4'§.§^"p§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §;!J§.§8!a§;
   import §<$2§.§+$9§;
   import §<$q§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!V§.§,#p§;
   import §=!V§.§8%u§;
   import §=!V§.§=!#§;
   import §=!V§.§^$&§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$K§.§>K§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §["3§.CraftEquipInfoHint;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^4§.§@#J§;
   import com.greensock.loading.LoaderStatus;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&#g§
   {
      
      private static var §-![§:TextField;
      
      private static var §6#$§:TextField;
      
      public function §&#g§()
      {
         super();
      }
      
      public function remove() : void
      {
         if(Boolean(§-![§) && Boolean(§-![§.parent))
         {
            §-![§.parent.removeChild(§-![§);
         }
         if(Boolean(§6#$§) && Boolean(§6#$§.parent))
         {
            §6#$§.parent.removeChild(§6#$§);
         }
      }
      
      public function §`l§(param1:String, param2:int = 0, param3:String = "") : void
      {
      }
      
      public function §5&=§(param1:String, param2:Boolean = false) : void
      {
      }
      
      private function §!"s§(param1:MovieClip, param2:DisplayObject) : void
      {
         if(!Application.instance.§;"7§())
         {
            if(param1)
            {
               param1.addChild(param2);
            }
            else
            {
               Application.instance.stage.addChild(param2);
            }
         }
         else
         {
            Application.instance.parent.addChild(param2);
         }
      }
      
      private function §=%x§(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         _loc3_ = param1.parent == param1.stage;
         var _loc4_:DisplayObject = _loc3_ ? param1 : param1.parent;
         var _loc5_:DisplayObject = _loc3_ ? param1.parent : param1.parent.parent;
         §`o§.§^#c§(_loc4_,_loc5_);
         §`o§.§4"1§(_loc4_,param1.stage.stageHeight - param2);
      }
   }
}

