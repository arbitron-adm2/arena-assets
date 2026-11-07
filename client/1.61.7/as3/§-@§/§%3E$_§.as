package §-@§
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §-&5§.*;
   import §0!§.§6#z§;
   import §0"L§.§+# §;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#0§.§;!L§;
   import §2!-§.HpChangeEvent;
   import §4#2§.*;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.*;
   import §8$V§.*;
   import §<!W§.§;#A§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!W§.§8!S§;
   import §@!i§.*;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.§28§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class §>$_§
   {
      
      private var §&$1§:int = 0;
      
      private var §#C§:Function;
      
      private var §,$H§:Number = 0;
      
      private var §=#t§:int = -1;
      
      private var §0$d§:int = -1;
      
      private var delay:uint = 300000;
      
      private var result:GetRatingResult;
      
      private var §6r§:Boolean = false;
      
      private var §]!-§:int;
      
      private var loader:§7%0§;
      
      public function §>$_§()
      {
         super();
      }
      
      public static function §]%J§(param1:Array, param2:UserProfile) : int
      {
         var _loc3_:int = param2.getId();
         var _loc4_:uint = param1.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(param1[_loc5_].id == _loc3_)
            {
               return _loc5_;
            }
            _loc5_++;
         }
         return -1;
      }
      
      private function onInit(param1:Event) : void
      {
      }
      
      public function §6"8§(param1:Function = null) : void
      {
         this.§#C§ = param1;
         this.loadIfNeeded();
      }
      
      public function loadIfNeeded() : void
      {
         var _loc1_:GetRating = null;
         if(!this.§,$H§ || new Date().time > this.§,$H§ + this.delay || this.§0$d§ != Application.userProfile.§]#6§())
         {
            _loc1_ = new GetRating(§ %`§.§#!m§,§-"P§.§&",§);
            §%%w§.§##$§(GetRatingResult,this.§;$B§);
            §%%w§.§,U§(_loc1_);
         }
         else
         {
            this.§9%p§();
         }
      }
      
      private function §9%p§() : void
      {
         if(this.§#C§ != null)
         {
            this.§#C§(this.§&$1§);
            this.§#C§ = null;
         }
      }
      
      private function §;$B§(param1:§9$v§) : void
      {
         var _loc2_:GetRatingResult = null;
         §%%w§.§-"j§(GetRatingResult,this.§;$B§);
         _loc2_ = GetRatingResult(param1.message);
         this.§,$H§ = new Date().time;
         this.§&$1§ = §]%J§(_loc2_.userProfileStructures,Application.userProfile) + 1;
         var _loc3_:RatingProfileStructure = _loc2_.userProfileStructures[this.§&$1§];
         this.§5%O§(this.§&$1§,_loc2_);
         this.§9%p§();
         this.loader = new §7%0§();
      }
      
      private function §2%d§(param1:GetRatingResult) : GetRatingResult
      {
         var _loc4_:RatingProfileStructure = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(param1.userProfileStructures.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.userProfileStructures[_loc2_];
            _loc2_++;
         }
         return param1;
      }
      
      private function §3#0§(param1:Array, param2:Boolean, param3:int) : void
      {
         if(!param1.length)
         {
         }
      }
      
      private function §5%O§(param1:int, param2:GetRatingResult) : void
      {
         if(param1 == 0)
         {
            if(param2.place == 0)
            {
               this.§6r§ = true;
            }
            else if(param2.oldPlace == 0)
            {
               this.§6r§ = true;
            }
            else
            {
               this.§]!-§ = param2.oldPlace - param2.place;
            }
         }
         else if(param2.oldPlace == 0)
         {
            this.§6r§ = true;
         }
         else
         {
            this.§]!-§ = param2.oldPlace - param1;
         }
         this.§,$H§ = new Date().time;
      }
   }
}

