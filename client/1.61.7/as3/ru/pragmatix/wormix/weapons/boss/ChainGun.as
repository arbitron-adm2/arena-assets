package ru.pragmatix.wormix.weapons.boss
{
   import § "%§.§0$[§;
   import § #k§.*;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §#",§.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&!@§.DarkKnight;
   import §&$Y§.§&!R§;
   import §+$=§.*;
   import §0%[§.§0%§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §4!!§.§ %c§;
   import §4!!§.§76§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.§>!r§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class ChainGun extends §,%r§
   {
      
      private static const §@!q§:uint = 30;
      
      public function ChainGun()
      {
         super();
         §"#z§ = §2$"§ = §@!q§;
         var _loc1_:§!7§ = new §!7§();
         §7&§(_loc1_);
         _loc1_.§9&;§(this.§6#N§);
         §-g§ = new §2z§(80,§"#z§);
      }
      
      private function §6#N§(param1:Number) : Boolean
      {
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§`%9§);
         var _loc1_:§ %c§ = new § %c§(owner,owner.x,owner.y,null,paramSet.damage.value,§@!q§,true);
         _loc1_.§^"F§(shotParams.angle,§@!q§);
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

