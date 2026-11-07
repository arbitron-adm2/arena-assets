package §@&H§
{
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §+%S§.§"!q§;
   import §,#_§.FrameTimer;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2"$§.*;
   import §3#T§.*;
   import §4$b§.§2m§;
   import §4f§.§-&§;
   import §6"'§.§9$Z§;
   import §6$0§.§=!N§;
   import §7!B§.§&"T§;
   import §8#a§.§@#c§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import config.§=%A§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §@%A§
   {
      
      private var §+#S§:UserProfile;
      
      private var §2#T§:UserProfile;
      
      public function §@%A§()
      {
         super();
         this.§+#S§ = UserProfile.§'#3§("",10,Race.§+&8§,100,10,10);
         this.§2#T§ = UserProfile.§'#3§("",1,Race.§+&8§,100,0,0);
      }
      
      public function §9"E§() : int
      {
         var _loc1_:§+%]§ = new §+%]§(this.§+#S§,0,0,true);
         var _loc2_:§+%]§ = new §+%]§(this.§2#T§,0,0,true);
         _loc1_.attributes.hp.change(-10);
         §'"$§.§]#I§(_loc1_,0,0,_loc2_,50,0,0,false);
         return _loc2_.hp + _loc1_.hp;
      }
   }
}

