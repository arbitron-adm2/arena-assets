package §2#H§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #9§.§"$t§;
   import § &5§.§=#P§;
   import §!!!§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,&8§.*;
   import §0!§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.Cookie;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1&-§.§>%`§;
   import §2"L§.§,!t§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §4!!§.§#Z§;
   import §4!!§.§'$V§;
   import §4!!§.§[%@§;
   import §4'§.§!!0§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §?"[§.*;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$K§.§##§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$J§.§#"s§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§2z§;
   import avmplus.getQualifiedClassName;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>#M§ extends §>%`§
   {
      
      public static const NAME:String = "RITUAL_SUICIDE";
      
      private var owner:§+%]§;
      
      private var enemies:Vector.<§+%]§>;
      
      private var allies:Vector.<§+%]§>;
      
      private var §1!z§:Boolean;
      
      private var §["7§:int;
      
      private var frames:int = 0;
      
      public function §>#M§(param1:§5$n§, param2:§+%]§)
      {
         super(NAME,param1);
         this.owner = param2;
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§,false,§[!F§.§^!?§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§,false,§[!F§.§,%k§);
         unit.addEventListener(§0%v§.DISPOSED,this.onBossDisposed,false,§[!F§.§6#@§);
      }
      
      private function §@%D§(param1:Event) : void
      {
         if(!this.§1!z§)
         {
            this.§1!z§ = true;
            if(§8"%§.§?!W§.§4"m§.activeUnit == this.owner)
            {
               this.§1"G§(100);
            }
            Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(this.§1!z§)
         {
            this.§1!z§ = false;
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         }
      }
      
      override protected function §0&"§() : void
      {
         super.§0&"§();
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
            Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
            unit.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         }
      }
      
      override protected function getOwner() : §+%]§
      {
         return this.owner;
      }
      
      override protected function apply(param1:int = 1) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            super.apply(param1);
            if(!this.owner.disposed)
            {
               this.owner.§5!?§(0,1);
            }
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+%]§ = null;
         var _loc4_:§+%]§ = null;
         if(this.§["7§)
         {
            --this.§["7§;
         }
         else if(Boolean(unit && !unit.disposed && this.frames % 2 == 0) && Boolean(§8"%§.§?!W§.§4"m§.activeUnit) && §8"%§.§?!W§.§4"m§.activeUnit != unit)
         {
            if(!§8"%§.§?!W§.§4"m§.activeSquad.isAi())
            {
               this.allies = §8"%§.§?!W§.§4"m§.§="T§(unit);
               for each(_loc3_ in this.allies)
               {
                  if(§<H§.§8!P§(_loc3_,unit.x,unit.y,paramSet.explosionRadius.value,true))
                  {
                     _loc2_ = true;
                     break;
                  }
               }
            }
            if(!_loc2_)
            {
               this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(unit);
               for each(_loc4_ in this.enemies)
               {
                  if(§<H§.§8!P§(_loc4_,unit.x,unit.y,paramSet.explosionRadius.value,true))
                  {
                     this.apply();
                     return;
                  }
               }
            }
         }
         ++this.frames;
      }
      
      public function §1"G§(param1:int) : void
      {
         this.§["7§ = param1;
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         this.apply();
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §>#M§(paramSet,this.owner));
      }
   }
}

