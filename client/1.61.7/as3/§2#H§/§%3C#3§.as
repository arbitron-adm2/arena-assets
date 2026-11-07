package §2#H§
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §+$=§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1A§.§#"§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4!!§.§76§;
   import §6"'§.§&"3§;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §?>§.§0!7§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §<#3§ extends §,"R§
   {
      
      private static const §`#b§:uint = 10;
      
      public static const NAME:String = "SPECTRE_BUFF";
      
      private var §5#'§:§+%]§;
      
      private const §&#a§:§#"§ = new §#"§(§`#b§);
      
      public function §<#3§(param1:§+%]§)
      {
         this.§5#'§ = param1;
         super(null,NAME);
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§76§ = null;
         var _loc3_:Number = NaN;
         if(!this.§5#'§.disposed && this.§&#a§.tick())
         {
            _loc2_ = new §76§(unit,unit.x,unit.y,this.§5#'§,"FlyingSoul");
            _loc3_ = 1 + param1.power / 2;
            §""n§.single(_loc2_,§0%v§.DISPOSED,§1%"§.§]$<§(this.§-&$§,this,[_loc3_]));
         }
         super.§?$u§(param1);
      }
      
      private function §-&$§(param1:Number) : void
      {
         if(Boolean(this.§5#'§) && !this.§5#'§.disposed)
         {
            §'"$§.§]#I§(unit,this.§5#'§.x,this.§5#'§.y,this.§5#'§,param1,0,0,false,true);
            this.§5#'§.setSpeedXY(0,-5);
         }
      }
      
      override protected function §7$d§() : void
      {
         this.§&#a§.reset();
      }
      
      override protected function §0&"§() : void
      {
         this.§5#'§ = null;
         super.§0&"§();
      }
   }
}

