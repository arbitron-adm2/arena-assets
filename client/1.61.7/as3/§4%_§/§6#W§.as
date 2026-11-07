package §4%_§
{
   import § #k§.*;
   import § $q§.§3U§;
   import § %"§.§"%5§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §+%S§.§7%f§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-&5§.*;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §4'§.§`"q§;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §<!W§.§9%,§;
   import §<!W§.§@!J§;
   import §<"L§.*;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@!N§.§'+§;
   import §@!i§.§<#&§;
   import §@#K§.§3&2§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!`§.ArchivistSeal;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.core.TweenCore;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class §6#W§ extends §&"T§ implements §2%F§, §^%c§
   {
      
      public static const HEAL:§&$2§ = new §&$2§(5);
      
      public static const §]$$§:§&$2§ = new §&$2§(15);
      
      public static const §1#4§:§&$2§ = new §&$2§(5);
      
      public static const § &G§:§&$2§ = new §&$2§(3);
      
      private static const §>!T§:uint = 0;
      
      private static const NORMAL:uint = 1;
      
      private static const §!%%§:uint = 2;
      
      private static const §<$C§:§&$2§ = new §&$2§(15);
      
      private static const §9"F§:§&$2§ = new §&$2§(30);
      
      private static const §9M§:int = 4;
      
      private static const §5$O§:int = 3;
      
      private static const § "S§:String = "DragonFireInactiveMC";
      
      private static const §+L§:String = "DragonFireActiveMC";
      
      private static const §[1§:String = "HealingFireActiveMC";
      
      private var activated:Boolean = false;
      
      private var state:uint = 0;
      
      private var §!"z§:§+%]§;
      
      private var §[$B§:Boolean;
      
      private var §=%]§:Boolean;
      
      private var §;P§:int;
      
      private var bar:§[N§;
      
      public function §6#W§(param1:§+%]§, param2:Number, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(false,§@N§.§@$8§);
         this.§!"z§ = param1;
         this.§[$B§ = param4;
         this.§=%]§ = param5;
         canBeDamaged = true;
         this.§;P§ = param4 ? -1 : § &G§.value;
         this.bar = new §[N§(param1,param4 ? "" : "(" + this.§;P§ + ")",-10,-77);
         if(!§8"%§.§&S§.§'`§())
         {
            this.bar.§]%d§();
         }
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physParams.§0#0§ = §<#`§.§&!c§;
         clip = §6#A§.§!&6§(§ "S§);
         clip.gotoAndPlay(§-q§.random(1,clip.totalFrames));
         §-b§(0,1);
         clip.alpha = 0;
         this.x = param2;
         this.y = param3;
         §8$a§.§&!#§(this,§0%v§.§&!D§,this.§""0§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §@%D§(param1:Event) : void
      {
         if(this.§!"z§.§4!R§(§8"%§.§?!W§.§4"m§.activeUnit) && §8"%§.§&S§.§'`§())
         {
            this.bar.§>$T§();
         }
         else
         {
            this.bar.§]%d§();
         }
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§3&I§ = true;
      }
      
      public function §6"h§() : void
      {
         clip.alpha = 1;
         this.state = §!%%§;
         frames = 0;
      }
      
      public function §6$i§() : void
      {
         if(this.state == §>!T§ && frames % 3 == 0)
         {
            clip.alpha += 0.1;
            if(clip.alpha >= 1)
            {
               clip.alpha = 1;
               this.state = NORMAL;
            }
         }
         else if(this.state == §!%%§ && frames % 10 == 0)
         {
            clip.alpha -= 0.7;
            if(clip.alpha <= 0)
            {
               disposed = true;
               this.state = NORMAL;
            }
         }
      }
      
      override public function §!!>§() : void
      {
         this.§6$i§();
         super.§!!>§();
         this.§8#m§(§<$C§.value);
      }
      
      private function §8#m§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§]$;§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc6_:uint = 0;
         var _loc7_:§+%]§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         if(this.activated && !disposed)
         {
            _loc3_ = §8"%§.§?!W§.§4"m§;
            _loc4_ = this.§=%]§ || (param2 || _loc3_.§;#l§() || _loc3_.§1"3§());
            _loc5_ = §<H§.§5"]§(x,y - §9M§,param1);
            _loc6_ = uint(this.§!"z§.squad.getTeamId());
            for each(_loc7_ in _loc5_)
            {
               _loc8_ = _loc7_.squad.getTeamId() != _loc6_;
               if(_loc8_)
               {
                  _loc9_ = _loc7_.buffs.hasBuff(§9%,§.NAME);
                  if(!_loc9_)
                  {
                     _loc7_.buffs.place(new §9%,§(this.§!"z§));
                  }
                  if(_loc4_)
                  {
                     if(_loc9_)
                     {
                        _loc7_.buffs.§6C§(§9%,§.NAME);
                     }
                     disposed = true;
                  }
               }
            }
         }
      }
      
      private function §!#'§(param1:int) : void
      {
         var _loc5_:§+%]§ = null;
         var _loc6_:§9%,§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§`"C§ = null;
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(x,y - §9M§,param1);
         var _loc3_:uint = uint(this.§!"z§.squad.getTeamId());
         var _loc4_:int = this.§!"z§.bonuses.getStatValue(Bonus.§;#-§);
         for each(_loc5_ in _loc2_)
         {
            _loc6_ = _loc5_.buffs.getBuff(§9%,§.NAME) as §9%,§;
            if(_loc5_.squad.getTeamId() == _loc3_ && (!_loc6_ || _loc6_.§3$k§ < §5$O§))
            {
               _loc7_ = HEAL.value + §-q§.§8$G§(_loc4_,HEAL.value);
               if(!_loc6_)
               {
                  _loc5_.buffs.place(new §9%,§(this.§!"z§,false));
                  _loc6_ = _loc5_.buffs.getBuff(§9%,§.NAME) as §9%,§;
               }
               ++_loc6_.§3$k§;
               if(_loc5_.buffs.hasBuff(§+m§.NAME))
               {
                  _loc5_.buffs.§6C§(§+m§.NAME);
               }
               _loc8_ = _loc5_.attributes.hp.§#1§(_loc7_,true);
               if(_loc8_ > 0 && _loc5_.squad.isLocal())
               {
                  §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§0!D§);
               }
               if(!§5"O§.§4#+§(_loc5_))
               {
                  _loc9_ = _loc5_.buffs.getBuff(§2!x§.§#!f§);
                  if(!_loc9_)
                  {
                     _loc5_.buffs.place(new §2!x§(§2!x§.§#!f§,§1#4§.value));
                  }
                  else if(_loc9_.getValue() < §]$$§.value)
                  {
                     _loc9_.addValue(§1#4§.value);
                  }
               }
            }
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         var _loc2_:Boolean = this.§!"z§.buffs.hasBuff(§@!J§.NAME);
         if(!this.activated)
         {
            this.activated = true;
            swapClip(§6#A§.§!&6§(_loc2_ ? §[1§ : §+L§));
            clip.gotoAndPlay(§-q§.random(1,clip.totalFrames));
            this.§8#m§(§9"F§.value,true);
            if(this.§!"z§.squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§9_§);
            }
         }
         else if(!this.§[$B§)
         {
            if(_loc2_)
            {
               this.§!#'§(§<$C§.value);
            }
            this.§^#P§();
         }
      }
      
      private function §^#P§() : void
      {
         if(this.§[$B§)
         {
            return;
         }
         if(--this.§;P§ <= 0)
         {
            disposed = true;
         }
         else if(!this.§[$B§)
         {
            this.bar.§["n§("(" + this.§;P§ + ")");
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         super.§""0§(param1);
         disposed = true;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && !this.§!"z§.§+&,§(param1.source.owner))
         {
            _loc2_ = param1.source.owner;
            if(!_loc2_.disposed && §<H§.§8!P§(_loc2_,x,y - §9M§,§<$C§.value,true))
            {
               _loc2_.buffs.place(new §9%,§(this.§!"z§));
               _loc2_.buffs.§6C§(§9%,§.NAME);
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         if(this.§!"z§)
         {
            this.§!"z§ = null;
         }
         super.§[$u§(param1);
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         disposed = true;
      }
      
      public function §9$r§() : int
      {
         return §<$C§.value + 16;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
      
      public function get owner() : §+%]§
      {
         return this.§!"z§;
      }
   }
}

