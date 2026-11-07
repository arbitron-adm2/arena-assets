package §#%!§
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§#%X§;
   import §+%S§.§%!%§;
   import §+%S§.§%#j§;
   import §+%S§.§'%V§;
   import §+%S§.§+m§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §+%S§.§[0§;
   import §0%[§.§0%§;
   import §1&-§.§ &=§;
   import §1&-§.§6"`§;
   import §2#H§.§+N§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6$z§.§!"§;
   import §65§.§`"C§;
   import §8$V§.*;
   import §8$Z§.§9!&§;
   import §<!W§.§#&#§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §4"N§
   {
      
      public function §4"N§()
      {
         super();
      }
      
      public static function §2#'§(param1:MovieClip, param2:MovieClip) : int
      {
         if(int(param1["value"]) < int(param2["value"]))
         {
            return -1;
         }
         if(int(param1["value"]) == int(param2["value"]))
         {
            return 0;
         }
         return 1;
      }
      
      public static function §7#R§(param1:String, param2:Vector.<MovieClip>) : MovieClip
      {
         var _loc3_:MovieClip = null;
         var _loc4_:TextField = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.name == param1)
            {
               return _loc3_;
            }
         }
         _loc3_ = §6#A§.§!&6§(§+"'§.§[!V§);
         var _temp_1:* = TextField(_loc3_.getChildByName("text"));
         _loc4_ = TextField(_loc3_.getChildByName("text"));
         _loc4_.autoSize = TextFieldAutoSize.LEFT;
         _loc4_.mouseEnabled = false;
         _loc3_.name = param1;
         _loc3_.x = 12;
         param2.push(_loc3_);
         return _loc3_;
      }
      
      public static function §2#+§(param1:§+%]§, param2:String, param3:Vector.<MovieClip>, param4:MovieClip) : void
      {
         var _loc9_:String = null;
         var _loc10_:Bonus = null;
         var _loc11_:int = 0;
         var _loc5_:§`"C§ = param1.buffs.getBuff(param2);
         var _loc6_:MovieClip = §4"N§.§7#R§(param2,param3);
         if(Boolean(_loc5_) && !_loc6_.parent)
         {
            param4.addChild(_loc6_);
         }
         if(!_loc5_)
         {
            _loc6_.visible = false;
            return;
         }
         var _loc7_:String = "";
         switch(param2)
         {
            case §'%V§.NAME:
               if(§8"%§.§&S§.§8!#§())
               {
                  _loc7_ = §0$N§.ANTIPOISON_BUFFED;
               }
               break;
            case §;!4§.NAME:
               if(§8"%§.§&S§.§1%6§())
               {
                  _loc7_ = §0$N§.ADRENALINE_BUFFED;
               }
               break;
            case §6"`§.NAME:
               if(§8"%§.§&S§.§="J§() && §6"`§(_loc5_).getAppliedCount() > 0)
               {
                  _loc7_ = §0$N§.§5!X§;
               }
               break;
            case §=z§.NAME:
               if(§8"%§.§&S§.§>$<§())
               {
                  _loc7_ = §0$N§.§!"D§;
               }
               break;
            case §[&;§.NAME:
               if(§8"%§.§&S§.§2#t§())
               {
                  _loc7_ = §0$N§.SPEED_DEBUFFED;
               }
               break;
            case §+N§.NAME:
               if(§8"%§.§&S§.§2"K§())
               {
                  _loc7_ = §0$N§.FREEZE_DEBUFFED;
               }
               break;
            case §+m§.NAME:
               if(§8"%§.§&S§.§1%2§())
               {
                  _loc7_ = §0$N§.IMMOBILITY_DEBUFFED;
               }
               break;
            case § !!§.NAME:
               if(§8"%§.§&S§.§4%l§())
               {
                  _loc7_ = §0$N§.POISON_DEBUFFED;
               }
               break;
            case §#&#§.NAME:
               if(§8"%§.§&S§.§8%+§())
               {
                  _loc7_ = §0$N§.SHARPCLAWS_DEBUFFED;
               }
               break;
            case §%#j§.NAME:
               if(§8"%§.§&S§.§,#3§())
               {
                  _loc7_ = §0$N§.THEIF_ATTACK_DEBUFFED;
               }
               break;
            case §2$#§.NAME:
               if(§8"%§.§&S§.§!"y§())
               {
                  _loc7_ = §0$N§.POISON_DEFENCE_REDUCTION_DEBUFFED;
               }
               break;
            case §%!%§.NAME:
               if(§8"%§.§&S§.§^%x§())
               {
                  _loc7_ = §0$N§.ANTIDODGE_DEBUFFED;
               }
               break;
            case § &=§.NAME:
               if(§8"%§.§&S§.§ Z§())
               {
                  _loc7_ = §0$N§.ANTIHEAL_DEBUFFED;
               }
               break;
            case §-$s§.NAME:
               if(§8"%§.§&S§.§[$3§())
               {
                  _loc7_ = §0$N§.ITEM_DISPLACEMENT_DEBUFFED;
               }
               break;
            case §#%X§.NAME:
               if(§8"%§.§&S§.§+!T§())
               {
                  _loc7_ = §0$N§.RACE_SWAP_BUFFED;
               }
               break;
            case §[0§.NAME:
               if(§8"%§.§&S§.§8!K§())
               {
                  _loc7_ = §0$N§.POISONING_REDUC_DEC_DEBUFFED;
               }
         }
         if(!_loc7_)
         {
            _loc6_.visible = false;
            return;
         }
         var _loc8_:Boolean = _loc5_.§8!t§() != §`"C§.§-"^§;
         if(_loc8_)
         {
            _loc9_ = Social.§-%c§.§4!]§(_loc5_.§8#z§(),§0$N§.TURN_PLURALS);
            _loc9_ = §0%§.format(§0$N§.COUNT_TURNS,{
               "count":_loc5_.§8#z§(),
               "turns":_loc9_
            });
         }
         else
         {
            switch(param2)
            {
               case §6"`§.NAME:
                  _loc10_ = Bonus.INVERTER_BONUS;
                  _loc11_ = §6"`§(_loc5_).getAppliedBonus();
                  break;
               case §[&;§.NAME:
                  break;
               default:
                  _loc11_ = _loc5_.getValue();
            }
            _loc9_ = _loc10_ ? §@"I§.§'$o§(_loc11_,_loc10_.§5&9§()) : "";
         }
         TextField(_loc6_.getChildByName("text")).text = _loc7_ + (_loc9_ ? " " + _loc9_ : "");
         _loc6_["value"] = _loc8_ ? _loc5_.§8#z§() : _loc5_.getValue();
         _loc6_.visible = true;
      }
      
      public static function §<"v§(param1:§+%]§, param2:Bonus, param3:Vector.<MovieClip>, param4:MovieClip) : void
      {
         var _loc5_:String = null;
         var _loc16_:int = 0;
         _loc5_ = param2.§7%z§();
         var _loc6_:§!"§ = param1.bonuses.§'"S§(param2);
         var _loc7_:MovieClip = §4"N§.§7#R§(_loc5_,param3);
         if(Boolean(_loc6_) && !_loc7_.parent)
         {
            param4.addChild(_loc7_);
         }
         if(!_loc6_)
         {
            _loc7_.visible = false;
            return;
         }
         var _loc8_:String = _loc5_;
         if(!_loc8_)
         {
            _loc7_.visible = false;
            return;
         }
         var _loc9_:int = param1.bonuses.getStatValue(param2);
         var _loc10_:§]$q§ = param1.record.§2u§() ? param1.record.§2u§().getBonusList() : null;
         var _loc11_:§]$q§ = param1.record.§+!b§() ? param1.record.§+!b§().getBonusList() : null;
         var _loc12_:§]$q§ = param1.record.§ !5§() ? param1.record.§ !5§().getBonusList() : null;
         var _loc13_:int = _loc10_ ? _loc10_.§1$9§(param2) : 0;
         var _loc14_:int = _loc11_ ? _loc11_.§1$9§(param2) : 0;
         var _loc15_:int = _loc12_ ? _loc12_.§1$9§(param2) : 0;
         _loc16_ = _loc9_ - _loc13_ - _loc14_ - _loc15_;
         var _loc17_:String = §@"I§.§'$o§(_loc16_,param2.§5&9§()) + (_loc9_ != _loc16_ ? " (" + §@"I§.§'$o§(_loc13_ + _loc14_ + _loc15_,param2.§5&9§()) + ")" : "");
         TextField(_loc7_.getChildByName("text")).text = param2.§@$+§() + (param2.§5&9§() ? ": " + _loc17_ : _loc9_);
         _loc7_["value"] = _loc16_ * 100 + _loc9_;
         _loc7_.visible = true;
      }
   }
}

