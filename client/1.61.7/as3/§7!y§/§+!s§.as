package §7!y§
{
   import § "%§.§0$[§;
   import §!!i§.*;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#E§.MsgBoxSocialSelect;
   import §&$Y§.§&!R§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §1#p§.§"Z§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#s§.§7"N§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6$z§.§%&&§;
   import §6$z§.BonusStat;
   import §7!B§.§8%%§;
   import §7$t§.§&!e§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<$q§.§"%r§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetProfileExtraInfo;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.ProfileExtraInfoResponse;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.client.*;
   
   use namespace gestouch_internal;
   
   public class §+!s§ extends BonusStat implements §%&&§
   {
      
      public function §+!s§()
      {
         super();
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         this.§3%<§(param1);
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         this.§3%<§(-param1);
      }
      
      private function §3%<§(param1:int) : void
      {
         var _loc2_:§+%]§ = null;
         if(owner.disposed && param1 < 0)
         {
            return;
         }
         owner.attributes.hp.§5#l§(param1);
         if(owner.squad)
         {
            for each(_loc2_ in owner.squad.§1!n§())
            {
               if(_loc2_ != owner)
               {
                  _loc2_.attributes.hp.§5#l§(param1);
               }
            }
         }
      }
      
      public function §[%x§(param1:§+%]§) : void
      {
         param1.attributes.hp.§5#l§(§]%&§.value);
      }
   }
}

