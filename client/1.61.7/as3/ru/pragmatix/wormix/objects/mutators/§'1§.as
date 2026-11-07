package ru.pragmatix.wormix.objects.mutators
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§`"w§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.*;
   import §+%S§.§2&>§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§>&&§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4#`§.§]"h§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"x§.§[a§;
   import §`%&§.§5$1§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.interfaces.§^"L§;
   
   public class §'1§ implements §[%z§
   {
      
      public function §'1§()
      {
         super();
      }
      
      public function test(param1:§&"T§) : Boolean
      {
         return param1 is §>"D§;
      }
      
      public function §0$I§(param1:§&"T§) : void
      {
      }
      
      public function §-#X§(param1:§&"T§) : void
      {
      }
      
      public function activate() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§`#1§);
         Application.scene.addEventListener(§0%v§.EOT,this.§<#R§);
      }
      
      public function deactivate() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§`#1§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§<#R§);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      private function §`#1§(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         }
      }
      
      private function §<#R§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         Application.scene.§7#o§.§1%r§.setVisible(false);
      }
      
      private function onFrame(param1:Event) : void
      {
         this.§'v§();
      }
      
      private function §'v§() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§]"h§ = null;
         var _loc4_:§,%r§ = null;
         var _loc5_:Vector.<§&"T§> = null;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc1_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(_loc1_ && _loc1_.activeUnit) && Boolean(!_loc1_.activeUnit.disposed) && !§8"%§.§?!W§.§4"m§.§[!W§())
         {
            _loc2_ = [];
            if(_loc1_.activeUnit.stable)
            {
               _loc4_ = _loc1_.activeUnit.weapon;
               if(Boolean((_loc4_) && _loc4_ is §@%`§) && Boolean(§@%`§(_loc4_).isLaunched()) && _loc4_ is §^"L§)
               {
                  _loc5_ = §7z§.§0&1§(§^"L§(_loc4_));
                  _loc2_ = §""L§.§,"=§(_loc5_);
               }
               else
               {
                  _loc6_ = §7z§.§'$i§(_loc1_.activeUnit);
                  _loc2_ = §""L§.§,"=§(_loc6_);
               }
            }
            _loc3_ = Application.scene.§7#o§.§1%r§;
            if(_loc2_.length > 0)
            {
               _loc3_.setData(_loc2_);
               _loc3_.setVisible(true);
            }
            else if(_loc3_.isVisible())
            {
               _loc3_.setData(_loc2_);
               _loc3_.setVisible(false);
            }
         }
      }
   }
}

