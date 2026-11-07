package §<"?§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §&%X§.§<$M§;
   import §&&6§.§7"1§;
   import §'!Z§.§#N§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§+m§;
   import §+%S§.§=t§;
   import §+5§.§5"<§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §4!!§.§!%n§;
   import §4!!§.§76§;
   import §4$b§.§8D§;
   import §4'§.§^"p§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §<!^§.MeteorShard;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§<§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`#x§.*;
   import §`%&§.§`§;
   import com.adobe.images.PNGEncoder;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Stage;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.gestures.Gesture;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6$c§ extends §6!8§
   {
      
      protected var achieves:Vector.<§2R§> = new Vector.<§2R§>(0);
      
      protected var isFirstRubyTry:Boolean;
      
      protected var §9"o§:Boolean;
      
      protected var §1!o§:Boolean;
      
      protected var §^"8§:Boolean;
      
      public function §6$c§(param1:uint, param2:Boolean = false)
      {
         super(param1,false,param2);
      }
      
      override public function §8%r§() : void
      {
         this.script.§+$L§(enemySquads);
         this.script.addEventListener(§7%K§.NAME,this.§ %G§);
      }
      
      protected function get script() : §-"o§
      {
         return §6%D§[0];
      }
      
      override protected function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            if(this.§9"o§ && this.achieves.length != 0)
            {
               this.§5#T§();
            }
         }
         super.§ "a§(param1);
      }
      
      override public function clear() : void
      {
         this.script.removeEventListener(§7%K§.NAME,this.§ %G§);
         super.clear();
         this.§=&,§();
      }
      
      protected function §'#G§() : void
      {
         var _loc1_:§"Z§ = null;
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         for each(_loc1_ in playerSquads)
         {
            _loc2_ = _loc1_.§1!n§();
            for each(_loc3_ in _loc2_)
            {
               _loc3_.addEventListener(§0%v§.§&!D§,this.onPlayerUnitDamaged);
            }
         }
      }
      
      protected function §>%A§() : void
      {
         var _loc1_:§"Z§ = null;
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         for each(_loc1_ in playerSquads)
         {
            _loc2_ = _loc1_.§1!n§();
            for each(_loc3_ in _loc2_)
            {
               _loc3_.removeEventListener(§0%v§.§&!D§,this.onPlayerUnitDamaged);
            }
         }
      }
      
      protected function §>!6§() : void
      {
         var _loc1_:§"Z§ = null;
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         for each(_loc1_ in playerSquads)
         {
            _loc2_ = _loc1_.§1!n§();
            for each(_loc3_ in _loc2_)
            {
               _loc3_.addEventListener(§0%v§.§^$3§,this.§-"S§);
            }
         }
      }
      
      protected function §<$g§() : void
      {
         var _loc1_:§"Z§ = null;
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         for each(_loc1_ in playerSquads)
         {
            _loc2_ = _loc1_.§1!n§();
            for each(_loc3_ in _loc2_)
            {
               _loc3_.removeEventListener(§0%v§.§^$3§,this.§-"S§);
            }
         }
      }
      
      protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
      }
      
      protected function §-"S§(param1:Event) : void
      {
      }
      
      public function activateAchievs(param1:int, param2:Boolean) : void
      {
         var _loc4_:§'%u§ = null;
         var _loc5_:§2R§ = null;
         var _loc3_:Array = §^t§.§3"1§(param1);
         for each(_loc4_ in _loc3_)
         {
            this.achieves.push(new §2R§(_loc4_));
         }
         this.§!"V§();
         this.isFirstRubyTry = param2;
         this.§^"8§ = §8"%§.§%w§.§7#G§();
         this.§9"o§ = !param2 && this.§^"8§;
         this.§1!o§ = !this.§^"8§;
         if(!this.§9"o§)
         {
            for each(_loc5_ in this.achieves)
            {
               _loc5_.§#"!§();
            }
         }
      }
      
      protected function §=&,§() : void
      {
         var _loc1_:§2R§ = null;
         if(§8"%§.§?!W§.§@!'§() == §<$Z§.§+%I§)
         {
            this.§'G§();
            this.§,"0§();
         }
         else
         {
            for each(_loc1_ in this.achieves)
            {
               if(!_loc1_.closed)
               {
                  _loc1_.§#"!§();
                  this.§5X§(_loc1_);
               }
            }
         }
      }
      
      public function §3$u§() : Vector.<§2R§>
      {
         return this.achieves;
      }
      
      protected function §!"V§() : void
      {
      }
      
      protected function §'G§() : void
      {
      }
      
      protected function § %G§(param1:§7%K§) : void
      {
      }
      
      protected function §]%!§(param1:uint) : §2R§
      {
         var _loc2_:§2R§ = null;
         for each(_loc2_ in this.achieves)
         {
            if(param1 == _loc2_.id)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function §>+§(param1:int) : void
      {
         var _loc2_:§2R§ = this.§]%!§(param1);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            _loc2_.completed = true;
            this.§`#t§(_loc2_);
         }
      }
      
      protected function §""F§(param1:int) : void
      {
         var _loc2_:§2R§ = this.§]%!§(param1);
         if(Boolean(_loc2_) && _loc2_.available)
         {
            _loc2_.§#"!§();
            this.§5X§(_loc2_);
         }
      }
      
      protected function §8k§(param1:int) : void
      {
         var _loc2_:§2R§ = this.§]%!§(param1);
         if(Boolean(_loc2_) && !_loc2_.closed)
         {
            _loc2_.§#"!§();
            this.§5X§(_loc2_);
         }
      }
      
      protected function §[#a§(param1:int, param2:uint) : void
      {
         var _loc3_:§2R§ = this.§]%!§(param1);
         if(Boolean(_loc3_) && _loc3_.available)
         {
            this.§=$I§(_loc3_,param2);
         }
      }
      
      protected function §=$I§(param1:§2R§, param2:uint, param3:int = 1) : void
      {
         param1.count += param3;
         if(param1.count >= param2)
         {
            param1.completed = true;
            this.§`#t§(param1);
         }
         else
         {
            this.§-$<§(param1,String(param1.count + "/" + param2));
         }
      }
      
      protected function §`#t§(param1:§2R§) : void
      {
         this.§4e§(param1,"COMPLETED","#66CC00");
      }
      
      protected function §5X§(param1:§2R§) : void
      {
         this.§4e§(param1,"FAILED","#CC6666");
      }
      
      private function §4e§(param1:§2R§, param2:String, param3:String) : void
      {
         var _loc4_:String = §<"G§.§%! §("ACHIEVE") + " \"" + param1.record.levels[0].name + "\" " + §<"G§.§%! §(param2);
         §8"%§.§?!W§.§!#S§(§2"e§.§#"I§(_loc4_,param3),0,null,false);
      }
      
      private function §-$<§(param1:§2R§, param2:String) : void
      {
         var _loc3_:String = param1.record.levels[0].name + ": " + §<"G§.§%! §("PROGRESS") + " " + param2;
         §8"%§.§?!W§.§!#S§(_loc3_);
      }
      
      private function §5#T§() : void
      {
         var _loc3_:§2R§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:§0&$§ = null;
         var _loc1_:Boolean = false;
         var _loc2_:§<#q§ = §8"%§.§@1§.§]#a§();
         for each(_loc3_ in this.achieves)
         {
            _loc4_ = _loc2_.§7%J§(_loc3_.id);
            if(!_loc4_)
            {
               if(!_loc1_)
               {
                  _loc1_ = true;
                  _loc6_ = Application.scene;
                  if((Boolean(_loc6_)) && Boolean(_loc6_.§7#o§))
                  {
                     _loc6_.§7#o§.chat.§#%6§();
                     §8"%§.§?!W§.§!#S§(§<"G§.§%! §("BOSS_ACHIEVE") + ":");
                  }
               }
               _loc5_ = _loc3_.record.levels[0].name + ": " + _loc3_.record.§]G§(0);
               §8"%§.§?!W§.§!#S§(_loc5_);
            }
            else
            {
               _loc3_.closed = true;
               _loc3_.completed = true;
            }
         }
      }
      
      private function §,"0§() : void
      {
         var _loc1_:§2R§ = null;
         for each(_loc1_ in this.achieves)
         {
            if(!_loc1_.closed)
            {
               _loc1_.closed = true;
               if(_loc1_.completed)
               {
                  this.§4e§(_loc1_,"CREDITED","#66CC00");
               }
               else
               {
                  this.§5X§(_loc1_);
               }
            }
         }
      }
   }
}

