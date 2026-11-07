package §&"R§
{
   import § !8§.§`!d§;
   import § "L§.§`#r§;
   import § $q§.§-%f§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§^$`§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§7V§;
   import §#%!§.§=-§;
   import §#%!§.§[%U§;
   import §#P§.§`o§;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§7%f§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0!§.§[k§;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §5$p§.§4&$§;
   import §5$p§.ArchdemonRope;
   import §6",§.§[%w§;
   import §65§.§6%E§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§;$n§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §;$8§.§6"E§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§!q§;
   import §?>§.§0!7§;
   import §?>§.§]!V§;
   import §?>§.§^&<§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§%Z§;
   import §@<§.*;
   import §[!`§.*;
   import §[$<§.§;"E§;
   import §[$P§.§+H§;
   import §]7§.§0'§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%&§.§@&,§;
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
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.client.SelectStuff;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.SelectStuffResult;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.messages.structures.SelectStuffStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3B§
   {
      
      public function §3B§()
      {
         super();
      }
      
      public static function §[s§(param1:Vector.<§0!7§>) : Vector.<§0!7§>
      {
         var _loc2_:§0!7§ = null;
         var _loc3_:§0!7§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc4_:* = int(param1.length - 1);
         while(_loc4_ > -1)
         {
            _loc2_ = param1[_loc4_];
            _loc5_ = _loc2_.getProfile().getId();
            _loc6_ = int(param1.length - 1);
            while(_loc6_ > -1)
            {
               _loc3_ = param1[_loc6_];
               if(_loc2_ != _loc3_ && _loc5_ == _loc3_.getProfile().getId())
               {
                  param1.splice(_loc6_,1);
                  _loc6_ = -1;
               }
               _loc6_--;
            }
            _loc4_--;
         }
         return param1;
      }
      
      private static function §9!p§(param1:§0!7§, param2:Vector.<§0!7§>) : §0!7§
      {
         var _loc4_:§0!7§ = null;
         var _loc3_:int = param1.getProfile().getId();
         for each(_loc4_ in param2)
         {
            if(_loc3_ == _loc4_.getProfile().getId())
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      public function save(param1:Function, param2:Vector.<§0!7§>) : Boolean
      {
         var _loc5_:§0!7§ = null;
         var _loc6_:UserProfile = null;
         var _loc7_:§+%7§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:SelectStuffStructure = null;
         var _loc3_:Boolean = false;
         var _loc4_:SelectStuff = new SelectStuff();
         for each(_loc5_ in param2)
         {
            _loc6_ = _loc5_.getProfile();
            if((Boolean(_loc6_)) && !§2=§.§9$M§(_loc6_))
            {
               _loc7_ = this.§'![§(_loc5_);
               _loc8_ = 0;
               _loc9_ = 0;
               if(_loc5_.§2u§())
               {
                  _loc9_ = int(_loc5_.§2u§().getId());
               }
               if(_loc5_.§+!b§())
               {
                  _loc8_ = int(_loc5_.§+!b§().getId());
               }
               if(_loc5_.§2u§() != _loc6_.§2u§() || _loc5_.§+!b§() != _loc6_.§+!b§())
               {
                  _loc3_ = true;
               }
               if(Boolean(_loc7_) && _loc7_.§"!?§() == _loc9_)
               {
                  _loc9_ = 0;
               }
               if(Boolean(_loc7_) && _loc7_.§8!u§() == _loc8_)
               {
                  _loc8_ = 0;
               }
               _loc10_ = new SelectStuffStructure(_loc6_.getId(),_loc9_,_loc8_);
               _loc4_.selectStuffs.push(_loc10_);
            }
         }
         §^"5§.single(§%%w§.§7F§,SelectStuffResult,this.§ "<§,this,[param1],true);
         §%%w§.§,U§(_loc4_);
         return _loc3_;
      }
      
      private function § "<§(param1:§9$v§, param2:Function) : void
      {
         var _loc5_:SelectStuffResultStructure = null;
         var _loc6_:UserProfile = null;
         var _loc3_:SelectStuffResult = SelectStuffResult(param1.message);
         var _loc4_:String = "";
         for each(_loc5_ in _loc3_.selectStuffResults)
         {
            _loc6_ = this.§!!U§(_loc5_.profileId);
            if(_loc5_.resultHat == SelectStuffResultStructure.SUCCESS)
            {
               _loc6_.§7"i§(§<$c§.§^&1§(_loc5_.hatId,_loc6_.getRace()));
            }
            else
            {
               _loc4_ += _loc6_.getCharName() + §0$N§.HAT_NOT_SAVED + "\n";
            }
            if(_loc5_.resultArtifact == SelectStuffResultStructure.SUCCESS)
            {
               _loc6_.§;"U§(§<$c§.§"$h§(_loc5_.artifactId));
            }
            else
            {
               _loc4_ += _loc6_.getCharName() + §0$N§.ARTIFACT_NOT_SAVED + "\n";
            }
         }
         if(_loc4_)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ATTENTION,_loc4_);
         }
         Application.§5!>§.§8$w§();
         §[&G§.§3$5§.hide();
         if(param2 != null)
         {
            param2();
         }
      }
      
      public function §!$z§(param1:§0!7§, param2:Vector.<§0!7§>, param3:§0!7§, param4:Function, param5:Class = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:§+%7§ = null;
         var _loc10_:§^$E§ = null;
         var _loc6_:UserProfile = param1.getProfile();
         if(_loc6_)
         {
            _loc7_ = !param5 || param5 == §^$E§;
            _loc8_ = !param5 || param5 == §^%%§;
            if(§2=§.§1#k§(_loc6_))
            {
               _loc9_ = §4&A§.§'![§(_loc6_.getId());
               _loc10_ = §<$c§.§^&1§(_loc9_.§"!?§(),_loc6_.getRace());
               if(_loc7_)
               {
                  param1.§7"i§(_loc10_);
               }
               if(_loc8_)
               {
                  param1.§;"U§(§<$c§.§"$h§(_loc9_.§8!u§()));
               }
               param1.§-$S§().§!$B§();
               if(param3)
               {
                  if(_loc7_)
                  {
                     param3.§7"i§(_loc10_);
                  }
                  if(_loc8_)
                  {
                     param3.§;"U§(§<$c§.§"$h§(_loc9_.§8!u§()));
                  }
                  param3.§-$S§().§!$B§();
               }
               if(!param5)
               {
                  this.save(param4,§[s§(param2));
               }
            }
            else if(!§2=§.§9$M§(_loc6_))
            {
               if(_loc7_)
               {
                  param1.§7"i§(null);
               }
               if(_loc8_)
               {
                  param1.§;"U§(null);
               }
               param1.§-$S§().§!$B§();
               if(param3)
               {
                  if(_loc7_)
                  {
                     param3.§7"i§(null);
                  }
                  if(_loc8_)
                  {
                     param3.§;"U§(null);
                  }
                  param3.§-$S§().§!$B§();
               }
               if(!param5)
               {
                  this.save(param4,§[s§(param2));
               }
            }
         }
      }
      
      public function §8>§(param1:BackpackItem, param2:Vector.<§0!7§>) : Boolean
      {
         var _loc4_:§0!7§ = null;
         var _loc5_:§+%7§ = null;
         var _loc6_:Boolean = false;
         var _loc3_:int = param1.getId();
         for each(_loc4_ in param2)
         {
            if(Boolean(_loc4_.getProfile()) && !_loc4_.§8,§())
            {
               if(Boolean(_loc4_.§+!b§()) && Boolean(_loc3_ == _loc4_.§+!b§().getId()) || Boolean(_loc4_.§2u§()) && Boolean(_loc3_ == _loc4_.§2u§().getId()))
               {
                  _loc5_ = this.§'![§(_loc4_);
                  _loc6_ = _loc5_ ? _loc5_.§"!?§() == _loc3_ || _loc5_.§8!u§() == _loc3_ : false;
                  if(!_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function §1#k§(param1:§0!7§) : Boolean
      {
         var _loc2_:UserProfile = param1 ? param1.getProfile() : null;
         return Boolean(_loc2_) && §2=§.§1#k§(_loc2_);
      }
      
      public function §'![§(param1:§0!7§) : §+%7§
      {
         return this.§1#k§(param1) ? §4&A§.§'![§(param1.getProfile().getId()) : null;
      }
      
      public function §0%8§(param1:BackpackItem, param2:§0!7§, param3:Vector.<§0!7§>, param4:§0!7§, param5:Function) : void
      {
         var _loc6_:§=?§ = param1.getRecord() as §=?§;
         var _loc7_:Vector.<§0!7§> = new <§0!7§>[param2];
         if(_loc6_ is §^$E§)
         {
            _loc7_ = _loc7_.concat(this.§;"W§(§^$E§(_loc6_),param2,param3,param4));
         }
         else if(_loc6_ is §^%%§)
         {
            _loc7_ = _loc7_.concat(this.§%<§(§^%%§(_loc6_),param2,param3,param4));
         }
         param2.§-$S§().§!$B§();
         if(param4)
         {
            param4.§-$S§().§!$B§();
         }
         this.save(param5,§[s§(param3));
      }
      
      private function §;"W§(param1:§^$E§, param2:§0!7§, param3:Vector.<§0!7§>, param4:§0!7§) : Vector.<§0!7§>
      {
         var _loc6_:§0!7§ = null;
         var _loc7_:int = 0;
         var _loc8_:§+%7§ = null;
         var _loc5_:Vector.<§0!7§> = new Vector.<§0!7§>(0);
         for each(_loc6_ in param3)
         {
            if(!_loc6_.§8,§() && _loc6_ != param2 && _loc6_ != param4)
            {
               _loc7_ = _loc6_.§2u§() ? int(_loc6_.§2u§().getId()) : 0;
               _loc8_ = this.§'![§(_loc6_);
               if(_loc7_ == param1.getId())
               {
                  if(!(Boolean(_loc8_) && _loc8_.§"!?§() == _loc7_))
                  {
                     _loc6_.§7"i§(_loc8_ ? §<$c§.§^&1§(_loc8_.§"!?§(),_loc6_.getProfile().getRace()) : null);
                     _loc6_.§-$S§().§!$B§();
                     _loc5_[_loc5_.length] = _loc6_;
                  }
               }
            }
         }
         param2.§7"i§(§<$c§.§^&1§(param1.getId(),param2.getProfile().getRace()));
         if(param4)
         {
            param4.§7"i§(§<$c§.§^&1§(param1.getId(),param4.getProfile().getRace()));
         }
         return _loc5_;
      }
      
      private function §%<§(param1:§^%%§, param2:§0!7§, param3:Vector.<§0!7§>, param4:§0!7§) : Vector.<§0!7§>
      {
         var _loc6_:§0!7§ = null;
         var _loc7_:int = 0;
         var _loc8_:§+%7§ = null;
         var _loc5_:Vector.<§0!7§> = new Vector.<§0!7§>(0);
         for each(_loc6_ in param3)
         {
            if(!_loc6_.§8,§() && _loc6_ != param2 && _loc6_ != param4)
            {
               _loc7_ = _loc6_.§+!b§() ? int(_loc6_.§+!b§().getId()) : 0;
               _loc8_ = this.§'![§(_loc6_);
               if(_loc7_ == param1.getId())
               {
                  if(!(Boolean(_loc8_) && _loc8_.§8!u§() == _loc7_))
                  {
                     _loc6_.§;"U§(_loc8_ ? §<$c§.§"$h§(_loc8_.§8!u§()) : null);
                     _loc6_.§-$S§().§!$B§();
                     _loc5_[_loc5_.length] = _loc6_;
                  }
               }
            }
         }
         param2.§;"U§(param1);
         if(param4)
         {
            param4.§;"U§(param1);
         }
         return _loc5_;
      }
      
      private function §!!U§(param1:int) : UserProfile
      {
         var _loc3_:UserProfile = null;
         var _loc2_:Vector.<UserProfile> = Application.userProfile.§"]§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getId() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §;"%§(param1:Class, param2:Vector.<§0!7§>, param3:Function) : void
      {
         var _loc4_:§0!7§ = null;
         for each(_loc4_ in param2)
         {
            this.§!$z§(_loc4_,param2,§9!p§(_loc4_,param2),param3,param1);
         }
         this.save(param3,§[s§(param2));
      }
      
      public function §,!E§(param1:Vector.<int>, param2:Function) : void
      {
         §[&G§.§3$5§.show();
         §^"5§.single(§%%w§.§7F§,SellStuffResult,this.§%!z§,this,[param1,param2],true);
         §%%w§.§,U§(new SellStuff(param1));
      }
      
      private function §%!z§(param1:§9$v§, param2:Vector.<int>, param3:Function) : void
      {
         var id:int = 0;
         var summ:int = 0;
         var award:GenericAwardStructure = null;
         var raceRecord:§`!d§ = null;
         var names:Array = null;
         var str:String = null;
         var event:§9$v§ = param1;
         var ids:Vector.<int> = param2;
         var callback:Function = param3;
         var result:SellStuffResult = SellStuffResult(event.message);
         var wardrobe:§;! § = Application.userProfile.§,%o§();
         for each(id in result.stuffIds)
         {
            wardrobe.§2$I§(id);
         }
         summ = 0;
         for each(award in result.awards)
         {
            summ += award.count;
         }
         Application.userProfile.§1%'§(summ);
         Application.§5!>§.§^P§.§6X§();
         Application.§5!>§.§8$w§();
         callback();
         if(ids.length != result.stuffIds.length)
         {
            raceRecord = Race.§+#T§.§]!D§();
            names = [];
            for each(id in ids)
            {
               if(result.stuffIds.indexOf(id) == -1)
               {
                  names.push(§<$c§.§8&E§(id,raceRecord).§7%z§());
               }
            }
            str = names.map(function(param1:String, ... rest):String
            {
               return param1;
            }).join(", ");
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.§%! §("SELL_STUFF_ONLY_SHOP") + "\n" + §0$N§.§%! §("CAN_NOT_SELL") + " " + str + ".");
         }
         §[&G§.§3$5§.hide();
      }
   }
}

