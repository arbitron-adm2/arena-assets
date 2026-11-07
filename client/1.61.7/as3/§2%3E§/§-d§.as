package §2>§
{
   import § !P§.§<#q§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§"t§;
   import §2!-§.§<%;§;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §;$8§.§6"E§;
   import §;&2§.§!#W§;
   import §<!W§.§!"+§;
   import §<%c§.*;
   import §<%k§.*;
   import §="z§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]^§.*;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import config.§=%A§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-d§ extends §1#g§
   {
      
      private const § #n§:uint = 5;
      
      private const SPACE:uint = 90;
      
      private var awards:Vector.<GladiatorAwardItem> = new Vector.<GladiatorAwardItem>(0);
      
      public function §-d§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function deactivate() : void
      {
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:uint = §8"%§.§%$r§.winCount;
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.WIN_LABEL + " " + _loc1_);
         var _loc2_:§1%z§ = §8"%§.§%$r§.§6$T§;
         if(_loc2_)
         {
            this.§<$;§();
            this.§&#N§();
         }
      }
      
      private function §&#N§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = int(this.awards.length);
         while(_loc1_ < _loc2_)
         {
            this.awards[_loc1_].§##;§(_loc1_ * 100);
            _loc1_++;
         }
      }
      
      private function §<$;§() : void
      {
         var _loc1_:§1%z§ = null;
         var _loc10_:DisplayObject = null;
         var _loc12_:GladiatorAwardItem = null;
         var _loc13_:§7,§ = null;
         var _loc16_:§]$X§ = null;
         var _loc17_:§`%g§ = null;
         var _loc18_:§!%&§ = null;
         this.§=$>§();
         _loc1_ = §8"%§.§%$r§.§6$T§;
         var _loc2_:Array = _loc1_.§@$0§(true);
         var _loc3_:uint = _loc1_.§@$D§();
         var _loc4_:uint = _loc1_.§#!G§();
         var _loc5_:uint = _loc1_.§=u§();
         var _loc6_:uint = _loc1_.§[!s§();
         var _loc7_:uint = _loc1_.§]#x§().length;
         if(Application.userProfile.getLevel() == §<!9§.getMaxLevel())
         {
            _loc6_ = 0;
         }
         var _loc8_:uint = _loc2_.length;
         if(_loc3_ > 0)
         {
            _loc8_++;
         }
         if(_loc4_ > 0)
         {
            _loc8_++;
         }
         if(_loc5_ > 0)
         {
            _loc8_++;
         }
         if(_loc6_ > 0)
         {
            _loc8_++;
         }
         if(_loc7_ > 0)
         {
            _loc8_++;
         }
         var _loc9_:uint = _loc8_ <= this.§ #n§ ? _loc8_ : uint(_loc8_ * 0.5 + (_loc8_ % 2 == 0 ? 0 : 1));
         _loc10_ = getChildByName("board");
         var _loc11_:uint = _loc10_.y - 8;
         var _loc14_:int = 0;
         var _loc15_:int = int(_loc8_);
         while(_loc14_ < _loc15_)
         {
            _loc12_ = this.awards[this.awards.length] = new GladiatorAwardItem();
            if(_loc3_ > 0)
            {
               _loc12_.§=%=§(_loc3_);
               _loc3_ = 0;
            }
            else if(_loc4_ > 0)
            {
               _loc12_.§!!j§(_loc4_);
               _loc4_ = 0;
            }
            else if(_loc5_ > 0)
            {
               _loc12_.§=#6§(_loc5_);
               _loc5_ = 0;
            }
            else if(_loc6_ > 0)
            {
               _loc12_.§;%1§(_loc6_);
               _loc6_ = 0;
            }
            else if(_loc2_[0] is §]$X§)
            {
               _loc13_ = _loc2_.shift();
               _loc16_ = §]$X§(_loc13_);
               _loc12_.setCount(0);
               _loc12_.setItem(§<$c§.§8&E§(_loc16_.getId(),Application.userProfile.getRace()));
            }
            else if(_loc2_[0] is §`%g§)
            {
               _loc13_ = _loc2_.shift();
               _loc17_ = §`%g§(_loc13_);
               _loc12_.setCount(_loc17_.getCount());
               _loc12_.setItem(§<$c§.§8&E§(_loc17_.getId(),Application.userProfile.getRace()));
            }
            else if(_loc2_[0] is §!%&§)
            {
               _loc13_ = _loc2_.shift();
               _loc18_ = §!%&§(_loc13_);
               _loc12_.setCount(_loc18_.getCount());
               _loc12_.setItem(§1@§.§`$M§(_loc18_.getId()),true);
            }
            _loc13_ = null;
            addChild(_loc12_);
            _loc14_++;
         }
         _loc14_ = 0;
         _loc15_ = int(this.awards.length);
         while(_loc14_ < _loc15_)
         {
            _loc12_ = this.awards[_loc14_];
            if(_loc15_ <= this.§ #n§)
            {
               _loc12_.x = (container.width - _loc15_ * this.SPACE) * 0.5 + _loc14_ * this.SPACE;
               _loc12_.y = _loc11_;
            }
            else if(_loc14_ < _loc9_)
            {
               _loc12_.x = (container.width - _loc9_ * this.SPACE) * 0.5 + _loc14_ * this.SPACE;
               _loc12_.y = _loc11_ - 33;
            }
            else
            {
               _loc12_.x = (container.width - (_loc15_ - _loc9_) * this.SPACE) * 0.5 + (_loc14_ - _loc9_) * this.SPACE;
               _loc12_.y = _loc11_ + 33;
            }
            _loc14_++;
         }
         §'%s§("description").y = _loc10_.y + _loc10_.height * (_loc15_ <= this.§ #n§ ? 1.4 : 1.65);
      }
      
      private function §=$>§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.awards.length)
         {
            _loc1_ = 0;
            _loc2_ = int(this.awards.length);
            while(_loc1_ < _loc2_)
            {
               if(contains(this.awards[_loc1_]))
               {
                  removeChild(this.awards[_loc1_]);
               }
               _loc1_++;
            }
            this.awards.length = 0;
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §&$9§.§>&F§(§'%s§("description"),§"-§.§+$m§,§0$N§.GLADIATOR_AWARD_DESCRIPTION);
      }
   }
}

