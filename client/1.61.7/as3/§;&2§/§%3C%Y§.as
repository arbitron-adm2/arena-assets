package §;&2§
{
   import § "L§.RocketTurret;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §&"c§.§%$m§;
   import §+#P§.§]!E§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%"§.§[!^§;
   import §0%"§.§`"`§;
   import §0%[§.§0%§;
   import §2"L§.§,'§;
   import §2#W§.*;
   import §2#x§.*;
   import §4u§.*;
   import §5!,§.§?!P§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§[!X§;
   import §8#<§.§!#^§;
   import §8$V§.§`"c§;
   import §<!W§.§?#L§;
   import §<%E§.§,$2§;
   import §?#g§.Race;
   import §@!N§.§&#Z§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §<%Y§ extends §!#W§
   {
      
      private static const §+"H§:Number = 0.2;
      
      private static const §'$D§:Number = 0.4;
      
      private static const §-$I§:Number = 0.25;
      
      private static const §3#m§:int = 10;
      
      public function §<%Y§()
      {
         §4#j§ = §+"H§;
         §7%B§ = §'$D§;
         §`& § = §-$I§;
         §%%"§ = §3#m§;
         super();
      }
      
      override protected function §!"g§() : void
      {
         var _loc1_:§,'§ = null;
         var _loc2_:§%$m§ = null;
         _loc1_ = §8"%§.randomSeed;
         _loc2_ = new §%$m§(1,0,_loc1_.§,!q§(30,60));
         _loc2_.§`#M§ = true;
         _loc2_.useGravity = false;
         _loc2_.power = _loc1_.§,!q§(10,15);
         _loc2_.§-#E§ = _loc1_.§,!q§(0,15);
         new RocketTurret(1435,911,new Point(267,852),new Point(1430,964),_loc2_,270);
         _loc2_ = _loc2_.clone();
         _loc2_.§&#H§ = _loc1_.§,!q§(30,60);
         new RocketTurret(1450,911,new Point(1453,850),new Point(3124,964),_loc2_,90);
      }
   }
}

