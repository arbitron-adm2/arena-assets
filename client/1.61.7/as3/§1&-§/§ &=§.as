package §1&-§
{
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §#k§.§9$v§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&#E§.§;"v§;
   import §'!Z§.§6S§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2#V§.§-#U§;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8#o§.§1@§;
   import §<"?§.§3>§;
   import §<"?§.§6!8§;
   import §?$L§.§&$9§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.server.UserIsBanned;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.§8J§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class § &=§ extends §%%o§
   {
      
      public static const NAME:String = "ANTIHEAL_DEBUFF";
      
      public static const §%!y§:int = 3;
      
      private static const § !I§:String = "BanefulnessIdle";
      
      private static const §,#&§:String = "BanefulnessAppear";
      
      private static const §5$v§:String = "BanefulnessFade";
      
      public var §8!h§:§]$q§;
      
      private var §1!j§:§6S§;
      
      public function § &=§(param1:int = 3, param2:int = 1, param3:Boolean = true)
      {
         this.§1!j§ = new §6S§(§ !I§,param3 ? §,#&§ : § !I§,§5$v§,false,false,true);
         super(NAME,param1,param2);
      }
      
      override protected function §5#F§() : void
      {
         this.§8!h§ = new §]$q§(NAME);
         this.§8!h§.§3%<§(new §@"I§(Bonus.§;#-§,-1 * getValue()));
         unit.bonuses.§]!X§(this.§8!h§);
         this.§1!j§.appear(unit);
      }
      
      override protected function §0&"§() : void
      {
         unit.bonuses.§9=§(this.§8!h§);
         if(this.§1!j§)
         {
            this.§1!j§.§=$5§();
            this.§1!j§ = null;
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new § &=§(§8#z§(),getValue(),false));
      }
   }
}

