package §!L§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §"!C§.§2v§;
   import §"!C§.§3#n§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §+$=§.§9"%§;
   import §+$=§.§;!d§;
   import §+%S§.§'%V§;
   import §+%S§.§2$#§;
   import §-%B§.*;
   import §0!§.*;
   import §0%"§.§`"`§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1&-§.§4!s§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §6"'§.§9$Z§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.§]!i§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.*;
   import §?$7§.§+l§;
   import §?$L§.§&$9§;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§"&H§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.*;
   
   public class §3%b§ extends §"&H§
   {
      
      private static var log:§&`§ = new §&`§(§3%b§);
      
      private static const §6"5§:String = "../storage/levels";
      
      private static const § "8§:String = "worm_primary";
      
      private static const §&'§:String = "worm_secondary";
      
      private static const §!#,§:String = "mine";
      
      private static const §,!^§:String = "checkpoint";
      
      private static const §0!J§:String = "map{version}.swf";
      
      private var mapRecord:§9$Z§;
      
      private var § $c§:Boolean = false;
      
      public function §3%b§(param1:§9$Z§)
      {
         super();
         this.mapRecord = param1;
      }
      
      public static function §=<§(param1:§9$Z§) : String
      {
         return §8$F§(param1) + "/" + param1.§7j§;
      }
      
      private static function §8$F§(param1:§9$Z§) : String
      {
         return §6"5§ + "/" + param1.name;
      }
      
      public static function §"!F§(param1:MovieClip, param2:int, param3:§9$Z§) : Point
      {
         var _loc4_:DisplayObject = param1.getChildAt(param2);
         var _loc5_:int = int(_loc4_.x) + param3.§1% § * (param3.mirror ? -1 : 1);
         var _loc6_:int = int(_loc4_.y) + param3.indentHeight;
         return new Point(_loc5_,_loc6_);
      }
      
      public function load() : void
      {
         log.§[x§("start load map id = " + this.mapRecord.getId());
         var _loc1_:String = this.mapRecord.version ? this.mapRecord.version.toString() : "";
         var _loc2_:§+&§ = new §+&§();
         _loc2_.§#""§ = §8$F§(this.mapRecord) + "/" + §0%§.format(§0!J§,{"version":_loc1_});
         _loc2_.§2!u§ = §8"%§.context.§]!f§();
         _loc2_.§%%$§ = §8"%§.context.§?"3§();
         var _loc3_:§;!d§ = new §;!d§();
         _loc3_.§8!w§(this.mapRecord.className);
         _loc2_.§=!=§ = [_loc3_];
         §6#A§.§=`§(_loc2_,this.§0"A§,this.§?"v§);
      }
      
      private function §0"A§() : void
      {
         var _loc1_:MovieClip = null;
         if(!this.§ $c§)
         {
            _loc1_ = §6#A§.§!&6§(this.mapRecord.className);
            this.§2I§(_loc1_);
            this.mapRecord.§>'§(true);
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §?"v§(param1:§9"%§) : void
      {
         if(!this.§ $c§)
         {
            dispatchEvent(param1);
         }
      }
      
      private function §2I§(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.getChildByName("helpers"));
         this.§=!%§(_loc2_,this.mapRecord.§8$2§,this.mapRecord.§?$&§);
         this.§7"_§(_loc2_,this.mapRecord.§0$D§);
         this.§0j§(_loc2_,this.mapRecord.§7%L§);
         §=#P§.§#!Q§(_loc2_,this.mapRecord.§5"w§);
         this.mapRecord.mirror = true;
         this.§=!%§(_loc2_,this.mapRecord.§8$2§,this.mapRecord.§?$&§);
         this.§7"_§(_loc2_,this.mapRecord.§0$D§);
         this.§0j§(_loc2_,this.mapRecord.§7%L§);
         this.mapRecord.mirror = false;
      }
      
      private function §=!%§(param1:MovieClip, param2:Array, param3:Array) : void
      {
         var _loc5_:String = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_).name;
            if(_loc5_ == § "8§)
            {
               param2.push(§"!F§(param1,_loc4_,this.mapRecord));
            }
            else if(_loc5_ == §&'§)
            {
               param3.push(§"!F§(param1,_loc4_,this.mapRecord));
            }
            _loc4_++;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.§ $c§ = true;
      }
      
      private function §7"_§(param1:MovieClip, param2:Array) : void
      {
         var _loc3_:int = §!#,§.length;
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc4_).name.substr(0,_loc3_) == §!#,§)
            {
               param2.push(§"!F§(param1,_loc4_,this.mapRecord));
            }
            _loc4_++;
         }
      }
      
      private function §0j§(param1:MovieClip, param2:Array) : void
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObject = null;
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc4_:int = §,!^§.length;
         var _loc5_:int = 0;
         while(_loc5_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc5_).name.substr(0,_loc4_) == §,!^§)
            {
               _loc3_.push(_loc5_);
            }
            _loc5_++;
         }
         var _loc6_:int = int(_loc3_.length);
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc8_ = param1.getChildAt(_loc3_[_loc7_]);
               if(int(_loc8_.name.substr(_loc4_,1)) == _loc5_)
               {
                  param2.push(§"!F§(param1,_loc3_[_loc7_],this.mapRecord));
                  if(_loc5_ == _loc6_ - 1)
                  {
                     if(this.mapRecord.raceFinishRadius == 0)
                     {
                        this.mapRecord.raceFinishRadius = _loc8_.width * 0.55;
                     }
                  }
                  break;
               }
               _loc7_++;
            }
            _loc5_++;
         }
      }
   }
}

