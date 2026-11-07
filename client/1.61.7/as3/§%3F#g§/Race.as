package §?#g§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§2$#§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class Race
   {
      
      public static const §1!l§:Vector.<Race> = new Vector.<Race>(0);
      
      public static const §&%w§:Vector.<Race> = new Vector.<Race>(0);
      
      public static const §'"V§:Vector.<Race> = new Vector.<Race>(0);
      
      public static const §+#T§:Race = new Race(§;"I§.§+#T§);
      
      public static const §"$H§:Race = new Race(§;"I§.§"$H§);
      
      public static const § "w§:Race = new Race(§;"I§.§ "w§);
      
      public static const §+&8§:Race = new Race(§;"I§.§+&8§);
      
      public static const §#%V§:Race = new Race(§;"I§.§#%V§);
      
      public static const §1"^§:Race = new Race(§;"I§.§1"^§);
      
      public static const §-K§:Race = new Race(§;"I§.§-K§);
      
      public static const §9"B§:Race = new Race(§;"I§.§9"B§);
      
      public static const §!!S§:Race = new Race(§;"I§.§!!S§);
      
      public static const ALIEN:Race = new Race(§;"I§.ALIEN);
      
      public static const §+#L§:Race = new Race(§;"I§.§+#L§);
      
      public static const §@T§:Race = new Race(§;"I§.§@T§);
      
      public static const § &F§:Race = new Race(§;"I§.§ &F§);
      
      private var id:uint;
      
      private var raceRecord:§`!d§;
      
      public function Race(param1:uint)
      {
         super();
         this.id = param1;
         this.raceRecord = §9%+§.§?%S§()[param1];
         §1!l§.push(this);
         if(this.raceRecord.playable)
         {
            §&%w§.push(this);
         }
         else
         {
            §'"V§.push(this);
         }
      }
      
      public static function §?#I§(param1:Vector.<Race> = null, param2:§,'§ = null) : Race
      {
         var _loc4_:Race = null;
         var _loc5_:§,'§ = null;
         var _loc3_:Vector.<Race> = new Vector.<Race>(0);
         for each(_loc4_ in §1!l§)
         {
            if(Boolean(param1) && param1.indexOf(_loc4_) == -1)
            {
               _loc3_[_loc3_.length] = _loc4_;
            }
            else if(Boolean(!param1) && Boolean(_loc4_.§]!D§()) && _loc4_.§]!D§().playable)
            {
               _loc3_[_loc3_.length] = _loc4_;
            }
         }
         _loc5_ = param2 ? param2 : §8"%§.randomSeed;
         return _loc3_[_loc5_.§,!q§(0,_loc3_.length - 1)];
      }
      
      public static function §;$F§(param1:Vector.<Race> = null) : Vector.<Race>
      {
         var _loc3_:Race = null;
         var _loc2_:Vector.<Race> = new Vector.<Race>(0);
         for each(_loc3_ in §1!l§)
         {
            if(Boolean(param1) && param1.indexOf(_loc3_) == -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
            }
            else if(Boolean(!param1) && Boolean(_loc3_.§]!D§()) && _loc3_.§]!D§().playable)
            {
               _loc2_[_loc2_.length] = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public static function §6#T§() : Race
      {
         return §?#I§(§&%w§);
      }
      
      public static function valueOf(param1:uint) : Race
      {
         var _loc2_:Race = null;
         for each(_loc2_ in §1!l§)
         {
            if(param1 == _loc2_.getId())
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §3!4§(param1:uint) : §`!d§
      {
         var _loc2_:Race = valueOf(param1);
         return _loc2_ ? _loc2_.§]!D§() : null;
      }
      
      public static function §-%z§(param1:§`!d§) : Race
      {
         return valueOf(param1.getId());
      }
      
      public static function create(param1:UserProfile, param2:int, param3:int) : §+%]§
      {
         var _loc5_:Class = null;
         var _loc6_:§+%]§ = null;
         var _loc4_:§`!d§ = §3!4§(param1.getRace().getId());
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.getClass();
            _loc6_ = new _loc5_(param1,param2,param3);
            §-#M§.§0"g§(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function getId() : uint
      {
         return this.id;
      }
      
      public function §]!D§() : §`!d§
      {
         return this.raceRecord;
      }
   }
}

