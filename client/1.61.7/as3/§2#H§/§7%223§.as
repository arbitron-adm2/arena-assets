package §2#H§
{
   import § K§.§2!!§;
   import §"!C§.§3#n§;
   import §#$e§.§!a§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.*;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§6!?§;
   import §0%[§.§>&&§;
   import §0%j§.§0$+§;
   import §0%z§.BossAchieveHint;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§=&9§;
   import §7$t§.§^$E§;
   import §8$V§.*;
   import §<"L§.*;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §@c§.§ #c§;
   import §[#q§.§,"m§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.facebook.controller.§4$g§;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class §7"3§ extends §=&9§
   {
      
      public static const NAME:String = "SOUL_SUMMONER_BUFF";
      
      private static const §0$V§:int = 210;
      
      private static const SPEED:int = 4;
      
      private var §3! §:int = 0;
      
      private var §9$K§:Vector.<§ #c§> = new Vector.<§ #c§>();
      
      private var §#$_§:Array;
      
      public function §7"3§(param1:int = -1)
      {
         super(NAME,param1,1);
         this.§#$_§ = [0,Application.scene.height];
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§3! § <= counter.value)
         {
            _loc1_ = §8"%§.randomSeed.§,!q§(0,Application.scene.width);
            _loc2_ = int(this.§#$_§[int(§8"%§.randomSeed.§,!q§(0,1))]);
            this.§9$K§.push(new § #c§(unit,_loc1_,_loc2_,unit,SPEED));
            this.§3! § = counter.value + §0$V§;
         }
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§3! § = 0;
         this.§9$K§ = new Vector.<§ #c§>();
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:§ #c§ = null;
         for each(_loc1_ in this.§9$K§)
         {
            if(!_loc1_.disposed)
            {
               §1"-§.§`$Q§(_loc1_.x,_loc1_.y,unit.record.getRace().soulType,0.03,false);
               _loc1_.disposed = true;
            }
         }
      }
   }
}

