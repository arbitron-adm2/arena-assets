package §'!Z§
{
   import § "d§.§,!c§;
   import § #m§.§[&H§;
   import § $q§.§<"]§;
   import §!!i§.§@&&§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §3#T§.§^!P§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §4u§.§[%u§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§7o§;
   import §8!Y§.§`#Q§;
   import §8#a§.§>!o§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §;$%§.§0%%§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§<!9§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §6S§ implements §^c§
   {
      
      private var §?]§:String;
      
      private var § !b§:String;
      
      private var §9!t§:String;
      
      private var §^%e§:int = -1;
      
      private var §5&!§:int = -1;
      
      private var owner:§+%]§;
      
      private var §>"<§:MovieClip;
      
      public var allowTransform:Boolean;
      
      public var needRotate:Boolean;
      
      public var background:Boolean;
      
      public function §6S§(param1:String, param2:String, param3:String, param4:Boolean = true, param5:Boolean = true, param6:Boolean = false)
      {
         super();
         this.§?]§ = param1;
         this.§ !b§ = param2;
         this.§9!t§ = param3;
         this.allowTransform = param4;
         this.needRotate = param5;
         this.background = param6;
      }
      
      public function appear(param1:§+%]§) : void
      {
         param1;
      }
      
      private function §#$#§() : void
      {
         if(this.owner != null && !this.owner.disposed && Boolean(this.§?]§))
         {
            if(this.background)
            {
               this.§>"<§ = this.owner.graphics.§&$=§(this.§?]§,true);
            }
            else
            {
               this.§>"<§ = §6#A§.§!&6§(this.§?]§);
               this.owner.graphics.§5$#§(§2m§.§-w§,this.§>"<§,0,0,true,this.needRotate,false,this.allowTransform);
            }
            if(§8"%§.§&S§.§41§())
            {
               this.playAnimations();
            }
            else
            {
               this.stopAnimations();
            }
         }
      }
      
      public function §=$5§() : void
      {
         if(!this.owner.disposed)
         {
            if(this.§?]§)
            {
               if(this.background)
               {
                  this.owner.graphics.§<%C§(this.§?]§);
               }
               else
               {
                  this.owner.graphics.detachClip(this.§>"<§,§2m§.§-w§);
               }
            }
            if(this.§9!t§)
            {
               §1"-§.§8"l§(this.owner,this.§9!t§,this.§5&!§,null,true,this.allowTransform,this.needRotate);
            }
            this.§>"<§ = null;
            this.owner = null;
         }
      }
      
      public function §@#a§(param1:int) : void
      {
         this.§^%e§ = param1;
      }
      
      public function §-$@§(param1:int) : void
      {
         this.§5&!§ = param1;
      }
      
      public function playAnimations() : void
      {
         if(§8"%§.§&S§.§41§() && Boolean(this.§>"<§))
         {
            §3!3§.§<%W§(§3!3§.§#"R§(this.§>"<§));
         }
      }
      
      public function stopAnimations() : void
      {
         if(!§8"%§.§&S§.§41§() && Boolean(this.§>"<§))
         {
            §3!3§.§>!j§(§3!3§.§#"R§(this.§>"<§,true,true),null,true);
         }
      }
   }
}

