package §?$7§
{
   import § !P§.§<#q§;
   import § "%§.§0$[§;
   import § #m§.§2#P§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&#E§.§;"v§;
   import §&$Y§.§&!R§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<$2§.§+$9§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import config.§`!a§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §8"e§
   {
      
      private static var list:Vector.<§8"e§> = new Vector.<§8"e§>(0);
      
      public static const EASY:§8"e§ = new §8"e§(0,"easy",§0$N§.HEROIC_BOSSES_DIFFICULTY_EASY,new §1%z§([new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §#$!§(§+$A§.INGAME,100),new §'"%§(50),new §!%&§(§#"B§.BADGE,2)]));
      
      public static const MEDIUM:§8"e§ = new §8"e§(1,"mid",§0$N§.HEROIC_BOSSES_DIFFICULTY_MEDIUM,new §1%z§([new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §#$!§(§+$A§.INGAME,130),new §'"%§(65),new §!%&§(§#"B§.BADGE,3),new §!%&§(§#"B§.§;#%§,1)]));
      
      public static const HARD:§8"e§ = new §8"e§(2,"hard",§0$N§.HEROIC_BOSSES_DIFFICULTY_HARD,new §1%z§([new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §#$!§(§+$A§.INGAME,160),new §'"%§(80),new §!%&§(§#"B§.BADGE,4),new §!%&§(§#"B§.§;#%§,1)]));
      
      public static const §?=§:§8"e§ = new §8"e§(3,"insane",§0$N§.HEROIC_BOSSES_DIFFICULTY_INSANE,new §1%z§([new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §#$!§(§+$A§.INGAME,200),new §'"%§(100),new §!%&§(§#"B§.BADGE,5),new §!%&§(§#"B§.§;#%§,2)]));
      
      private var id:int;
      
      private var type:String;
      
      private var title:String;
      
      private var §6$T§:§1%z§;
      
      public function §8"e§(param1:int, param2:String, param3:String, param4:§1%z§)
      {
         super();
         this.id = param1;
         this.type = param2;
         this.title = param3;
         this.§6$T§ = param4;
         list.push(this);
      }
      
      public static function contains(param1:int) : Boolean
      {
         return param1 >= 0 && param1 < list.length;
      }
      
      public static function §["V§(param1:uint) : §8"e§
      {
         return list[param1];
      }
      
      public static function §#&$§() : Vector.<§8"e§>
      {
         return list;
      }
      
      public static function §[&!§(param1:Vector.<HeroicBossBattleAwardStructure>) : void
      {
         var _loc2_:HeroicBossBattleAwardStructure = null;
         var _loc3_:§8"e§ = null;
         var _loc4_:BossBattleWinAwardStructure = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:§1%z§ = null;
         var _loc10_:§7,§ = null;
         for each(_loc2_ in param1)
         {
            if(contains(_loc2_.level))
            {
               _loc3_ = list[_loc2_.level];
               _loc4_ = _loc2_.winAward;
               _loc5_ = BossBattleWinAwardStructure.getAwardsArray(_loc4_);
               _loc6_ = {};
               for each(_loc7_ in _loc2_.winReagentsAward)
               {
                  if(!_loc6_[_loc7_])
                  {
                     _loc6_[_loc7_] = 0;
                  }
                  ++_loc6_[_loc7_];
               }
               for(_loc8_ in _loc6_)
               {
                  _loc7_ = int(_loc8_);
                  _loc5_.push(new §!%&§(_loc7_,_loc6_[_loc7_]));
               }
               _loc9_ = new §1%z§(_loc5_);
               for each(_loc10_ in _loc3_.§6$T§.rewards)
               {
               }
               _loc3_.§6$T§ = _loc9_;
            }
         }
      }
      
      public function toString() : String
      {
         return "HeroicDifficulty{" + "id=" + this.id + ",type=" + this.type + ",title=" + this.title + ",rewardPack=" + this.§6$T§ + "}";
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function getType() : String
      {
         return this.type;
      }
      
      public function §@$+§() : String
      {
         return this.title;
      }
      
      public function §&%s§() : §1%z§
      {
         return this.§6$T§;
      }
   }
}

