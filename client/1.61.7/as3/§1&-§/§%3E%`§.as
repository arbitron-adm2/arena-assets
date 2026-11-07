package §1&-§
{
   import §"#x§.§'"$§;
   import §"%H§.*;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §1#p§.§"Z§;
   import §4$b§.§2m§;
   import §4'§.§`"q§;
   import §5"J§.*;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!i§.§1""§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>%`§ extends §5#A§
   {
      
      public static const NAME:String = "SUICIDE";
      
      protected var paramSet:§5$n§;
      
      private var §`$I§:MovieClip;
      
      public function §>%`§(param1:String, param2:§5$n§, param3:int = 1)
      {
         super(param1,-1,param3);
         this.paramSet = param2;
      }
      
      override protected function §5#F§() : void
      {
         this.§`$I§ = §6#A§.§!&6§(§1"-§.KAMIKAZE);
         unit.graphics.§5$#§(§2m§.§-w§,this.§`$I§);
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§ && Boolean(this.§`$I§))
         {
            unit.graphics.detachClip(this.§`$I§,§2m§.§-w§);
            this.§`$I§ = null;
         }
      }
      
      protected function getOwner() : §+%]§
      {
         return unit;
      }
      
      protected function apply(param1:int = 1) : void
      {
         if(Boolean(unit) && !Application.scene.§@$I§.§=%d§())
         {
            §1"-§.§&!C§(unit.x,unit.y,12);
            §1"-§.explode(§;n§.§8!-§,unit.x,unit.y,this.paramSet.damageRadius.value * param1,§`!v§.§["s§);
            if(§8"%§.§?!W§.§7%@§)
            {
               §'"$§.§]#I§(unit,unit.x,unit.y,null,this.paramSet.damage.value * param1,this.paramSet.damageRadius.value * param1,this.paramSet.explosionRadius.value * param1,false);
               unit.disposed = true;
            }
         }
      }
   }
}

