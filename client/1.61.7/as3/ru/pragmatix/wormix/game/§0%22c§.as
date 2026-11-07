package ru.pragmatix.wormix.game
{
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"% §.LevelUpDialog;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"R§.§;!t§;
   import §&#E§.MsgBoxSocialSelect;
   import §&#h§.§,#;§;
   import §&#h§.§5f§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§>%k§;
   import §'%!§.§@!Z§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§["4§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#W§.PvpChestBox;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3"_§.*;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §4%_§.§3§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<!W§.§;#A§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<V§.*;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§[%Z§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.§<#m§;
   import §[%§.*;
   import §]#[§.§"!I§;
   import §]#[§.§2%o§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.*;
   import org.gestouch.extensions.native.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   use namespace gestouch_internal;
   
   public class §0"c§
   {
      
      private static const §`=§:uint = 0;
      
      private static const §<O§:uint = 1;
      
      private static const §5"Y§:uint = 2;
      
      private var state:uint = 0;
      
      private var § f§:uint;
      
      private var §!"f§:uint;
      
      private var §2$R§:int;
      
      private var §9"+§:int;
      
      private var §<f§:int;
      
      private var enabled:Boolean;
      
      private var §-%%§:Boolean;
      
      private var §,$#§:Boolean;
      
      private var §7"D§:int;
      
      private var §1"§:§"!I§;
      
      private var gm:§]$;§;
      
      private var scene:§0&$§;
      
      public function §0"c§(param1:§"%r§)
      {
         super();
         this.scene = Application.scene;
         this.§2r§();
      }
      
      private static function § #@§() : int
      {
         var _loc1_:§]$d§ = §8"%§.§?!W§.§^!U§();
         var _loc2_:int = 0;
         if(_loc1_.§`!Q§())
         {
            switch(_loc1_.wager.id)
            {
               case §-"P§.§"#p§:
                  switch(Application.userProfile.§7$F§().length)
                  {
                     case 3:
                        _loc2_ = 2;
                        break;
                     case 4:
                        _loc2_ = 4;
                  }
                  break;
               case §-"P§.§"!0§:
                  _loc2_ = 2;
                  break;
               case §-"P§.§'$L§:
               case §-"P§.§,$^§:
                  _loc2_ = 4;
            }
         }
         return _loc2_;
      }
      
      public function §2r§() : void
      {
         if(this.enabled)
         {
            return;
         }
         this.enabled = true;
         this.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         this.scene.addEventListener(§0%v§.EOT,this.§,!l§,false,§[!F§.§,%k§);
      }
      
      public function §5% §() : void
      {
         var _loc1_:§?!d§ = this.gm.§=$S§();
         if(!_loc1_.§`%?§.isStable)
         {
            _loc1_.§`%?§ = §"%r§.STABLE;
            this.§""]§();
         }
      }
      
      private function §""]§() : void
      {
         if(!this.enabled)
         {
            return;
         }
         var _loc1_:§?!d§ = this.gm.§=$S§();
         this.enabled = false;
         this.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         this.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         this.§5%c§();
      }
      
      private function §@%D§(param1:Event) : void
      {
         if(!this.gm)
         {
            this.gm = §8"%§.§?!W§.§4"m§;
         }
         if(this.gm.§,j§() == 1)
         {
            if(!this.§1"§)
            {
               this.§1"§ = this.scene.§7#o§.§1"§;
            }
         }
         this.§ I§();
         this.update();
         this.§0]§(§0%v§.SOT);
      }
      
      private function § I§() : void
      {
         if(this.§-%%§)
         {
            return;
         }
         var _loc1_:§9$Z§ = this.scene.§^$'§();
         if(!_loc1_.§0"N§)
         {
            return;
         }
         var _loc2_:§"%r§ = this.gm.§=$S§().§`%?§;
         if(_loc2_.isStable)
         {
            return;
         }
         var _loc3_:§?!d§ = this.gm.§=$S§();
         this.§-%%§ = true;
         this.§2$R§ = § #@§();
         if(_loc2_.§-$,§ > -1)
         {
            this.§9"+§ = _loc2_.§-$,§ + this.§2$R§;
            this.§<f§ = _loc2_.§-"!§ > -1 ? int(_loc2_.§-"!§ + this.§2$R§) : -1;
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         this.§;#H§();
      }
      
      private function update() : void
      {
         if(!this.§-%%§)
         {
            return;
         }
         if(this.§9"+§ == -1)
         {
            return;
         }
         var _loc1_:§"%r§ = this.gm.§=$S§().§`%?§;
         var _loc2_:int = int(this.gm.§,j§());
         if(this.state == §`=§)
         {
            if(this.§@#L§(_loc2_))
            {
               this.§>M§();
            }
            else if(this.§<!i§(_loc2_,_loc1_))
            {
               this.§>M§(2);
            }
         }
         else if(this.state == §<O§ && this.§<!i§(_loc2_,_loc1_))
         {
            this.§=%5§();
         }
      }
      
      private function §0]§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc2_:§"%r§ = this.gm.§=$S§().§`%?§;
         if(this.state == §`=§ && _loc2_.isStable)
         {
            this.§=%c§();
            this.§]!2§();
            return;
         }
         if(!this.§-%%§)
         {
            return;
         }
         if(this.§9"+§ == -1)
         {
            return;
         }
         _loc3_ = int(this.gm.§,j§());
         var _loc4_:Boolean = param1 == §0%v§.EOT;
         var _loc5_:int = _loc3_;
         if(this.state == §<O§)
         {
            if(this.§@#L§(_loc3_))
            {
               _loc6_ = this.§9"+§ - _loc5_;
               if(_loc2_.§8"p§ > 0)
               {
                  _loc8_ = §0$N§.FLOODING_WILL_BEGIN;
                  if(!this.§ f§)
                  {
                     this.§ f§ = this.§1"§.§<#-§(§2%o§.§5%9§,§0$N§.FLOODING_COMING_SOON);
                  }
                  this.§1"§.§[#0§(this.§ f§,_loc6_ > 0 ? _loc6_.toString() : "");
                  this.§1"§.§,#,§(this.§ f§);
               }
               else if(_loc2_.§0#c§ != 0)
               {
                  if(!this.§!"f§)
                  {
                     if(_loc2_.§0#c§ > 0)
                     {
                        _loc8_ = §0$N§.WATER_DECREASE_WILL_BEGIN;
                        this.§!"f§ = this.§1"§.§<#-§(§2%o§.§5%9§,§0$N§.WATER_LEVEL_DECREASE_COMING_SOON);
                     }
                     else if(_loc2_.§0#c§ < 0)
                     {
                        _loc8_ = §0$N§.WATER_INCREASE_WILL_BEGIN;
                        this.§!"f§ = this.§1"§.§<#-§(§2%o§.§3"a§,§0$N§.WATER_LEVEL_INCREASE_COMING_SOON);
                     }
                  }
                  this.§1"§.§[#0§(this.§!"f§,_loc6_ > 0 ? _loc6_.toString() : "");
                  this.§1"§.§,#,§(this.§!"f§);
               }
               if(Boolean(_loc8_) && _loc6_ > 0)
               {
                  _loc7_ = Social.§-%c§.§4!]§(_loc6_,§0$N§.TURN_PLURALS);
                  _loc9_ = §0%§.format(_loc8_,{
                     "count":_loc6_,
                     "turns":_loc7_
                  });
                  if(_loc9_)
                  {
                     §8"%§.§?!W§.§!#S§(_loc9_);
                  }
               }
            }
         }
         else if(this.state == §5"Y§)
         {
            if(this.§<!i§(_loc3_,_loc2_))
            {
               _loc6_ = this.§<f§ - _loc5_;
               if(_loc2_.§8"p§ > 0)
               {
                  _loc8_ = §0$N§.FLOODING_WILL_END;
                  if(!this.§ f§)
                  {
                     this.§ f§ = this.§1"§.§<#-§(§2%o§.§#%N§,§0$N§.FLOODING_NOW);
                  }
                  this.§1"§.§[#0§(this.§ f§,_loc6_ > 0 ? _loc6_.toString() : "");
                  this.§1"§.§,#,§(this.§ f§);
               }
               else if(_loc2_.§0#c§ != 0)
               {
                  if(!this.§!"f§)
                  {
                     if(_loc2_.§0#c§ > 0)
                     {
                        _loc8_ = §0$N§.WATER_DECREASE_WILL_END;
                        this.§!"f§ = this.§1"§.§<#-§(§2%o§.§@!T§,§0$N§.WATER_DECREASE_NOW);
                     }
                     else if(_loc2_.§0#c§ < 0)
                     {
                        _loc8_ = §0$N§.WATER_INCREASE_WILL_END;
                        this.§!"f§ = this.§1"§.§<#-§(§2%o§.§ $o§,§0$N§.WATER_INCREASE_NOW);
                     }
                  }
                  this.§1"§.§[#0§(this.§!"f§,_loc6_ > 0 ? _loc6_.toString() : "");
                  this.§1"§.§,#,§(this.§!"f§);
               }
               if(Boolean(_loc8_) && _loc6_ > 0)
               {
                  _loc7_ = Social.§-%c§.§4!]§(_loc6_,§0$N§.TURN_PLURALS);
                  _loc10_ = §0%§.format(_loc8_,{
                     "count":_loc6_,
                     "turns":_loc7_
                  });
                  if(_loc10_)
                  {
                     §8"%§.§?!W§.§!#S§(_loc10_);
                  }
               }
            }
         }
      }
      
      private function §;#H§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:§"%r§ = this.gm.§=$S§().§`%?§;
         if(this.state == §5"Y§ && _loc1_.isStable)
         {
            this.§5%c§();
            return;
         }
         if(!this.§-%%§)
         {
            return;
         }
         if(this.§9"+§ == -1)
         {
            return;
         }
         if(this.state == §5"Y§)
         {
            _loc2_ = int(this.gm.§,j§());
            _loc3_ = this.§<f§ - _loc2_ - 1;
            if(this.§<!i§(_loc2_,_loc1_))
            {
               §@%;§.play(§`!v§.§9y§);
               if(_loc1_.§0#c§ != 0 && !this.§,$#§)
               {
                  this.§,$#§ = this.scene.§;$e§(_loc1_.§0#c§);
                  if(_loc1_.§0#c§ < 0)
                  {
                     this.§7"D§ += -_loc1_.§0#c§;
                  }
               }
               if(_loc1_.§8"p§ != 0)
               {
                  this.scene.§#%^§(_loc1_.§8"p§);
                  if(_loc1_.§8"p§ > 0)
                  {
                     this.§7"D§ += _loc1_.§8"p§;
                  }
               }
            }
            if(_loc3_ == 0 || this.§,$#§ && _loc1_.§8"p§ == 0 || this.§^#W§(_loc2_,_loc1_))
            {
               this.§5%c§();
            }
         }
      }
      
      private function §=%5§() : void
      {
         if(this.state != §<O§)
         {
            return;
         }
         this.§>M§();
         this.§=%c§();
         this.§]!2§();
      }
      
      private function §5%c§() : void
      {
         if(this.state != §5"Y§)
         {
            return;
         }
         var _loc1_:§"%r§ = this.gm.§=$S§().§`%?§;
         if(_loc1_.§8"p§ > 0)
         {
            §8"%§.§?!W§.§!#S§(§0$N§.FLOODING_STOP);
         }
         if(_loc1_.§0#c§ > 0)
         {
            §8"%§.§?!W§.§!#S§(§0$N§.WATER_DECREASE_STOP);
         }
         else if(_loc1_.§0#c§ < 0)
         {
            §8"%§.§?!W§.§!#S§(§0$N§.WATER_INCREASE_STOP);
         }
         this.§>M§();
         this.§=%c§();
         this.§]!2§();
      }
      
      private function §=%c§() : void
      {
         if(this.§ f§)
         {
            this.§1"§.§]& §(this.§ f§);
            this.§ f§ = 0;
         }
      }
      
      private function §]!2§() : void
      {
         if(this.§!"f§)
         {
            this.§1"§.§]& §(this.§!"f§);
            this.§!"f§ = 0;
         }
      }
      
      private function §>M§(param1:int = 1) : void
      {
         switch(this.state)
         {
            case §`=§:
               this.state = §<O§;
               break;
            case §<O§:
               this.state = §5"Y§;
               break;
            case §5"Y§:
               this.state = §`=§;
         }
         if(--param1 > 0)
         {
            this.§>M§(param1);
         }
      }
      
      private function §@#L§(param1:int) : Boolean
      {
         return this.§-%%§ && param1 > 0 && param1 < this.§9"+§;
      }
      
      private function §<!i§(param1:int, param2:§"%r§) : Boolean
      {
         if(!this.§-%%§)
         {
            return false;
         }
         return !param2.isStable && param1 >= this.§9"+§ && (param1 < this.§<f§ || param2.§-"!§ == -1);
      }
      
      private function §^#W§(param1:int, param2:§"%r§) : Boolean
      {
         if(!this.§-%%§)
         {
            return false;
         }
         return param2.isStable || param1 >= param2.§-"!§ && param2.§-"!§ != -1;
      }
      
      public function get floodDepth() : int
      {
         return this.§7"D§;
      }
   }
}

