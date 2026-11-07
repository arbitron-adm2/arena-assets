package § $q§
{
   import § #9§.§3L§;
   import § #9§.§9j§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"% §.LevelUpDialog;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&$Y§.§6[§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4'§.§^"p§;
   import §6_§.§&$6§;
   import §7"Q§.§"&=§;
   import §7$t§.§^$E§;
   import §8!Y§.§`#Q§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §-%f§ extends §"&=§
   {
      
      protected var panel:§9j§;
      
      private var §;$4§:§[&H§;
      
      private var §2$l§:TextField;
      
      public function §-%f§(param1:MovieClip, param2:§+%>§ = null, param3:Boolean = false, param4:Boolean = true)
      {
         super(param1);
         this.§2$l§ = param1.getChildByName("textNew") as TextField;
         if(this.§2$l§)
         {
            this.§2$l§.visible = false;
            this.§2$l§.mouseEnabled = false;
         }
         this.panel = new §9j§(param1,param2,param4);
         if(param3)
         {
            this.§;$4§ = new §[&H§(param1);
            this.§;$4§.§@!y§(this.panel.§@%X§());
         }
      }
      
      public function §@%X§() : §3L§
      {
         return this.panel.§@%X§();
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         this.panel.§3%,§(UserProfile(param1));
      }
      
      public function removeHint() : void
      {
         this.§;$4§.§`Z§();
      }
      
      public function §[#"§(param1:Boolean, param2:§^"p§ = null) : void
      {
         if(!this.§2$l§)
         {
            return;
         }
         this.§2$l§.visible = param1;
         if(this.§2$l§.visible && Boolean(param2))
         {
            §&$9§.§>&F§(this.§2$l§,§"-§.§+$m§,§^"p§.getText(param2));
         }
         else
         {
            this.§2$l§.text = "";
         }
      }
      
      public function §""u§() : §+%>§
      {
         return this.panel.§""u§();
      }
      
      public function §?%_§(param1:§+%>§) : void
      {
         return this.panel.§?%_§(param1);
      }
   }
}

