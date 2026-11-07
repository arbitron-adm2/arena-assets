package §;"9§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import § %f§.§=!z§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"% §.LevelUpDialog;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §02§.§<!v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §4!!§.§!%n§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§8%%§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §<!W§.*;
   import §<!f§.§!"<§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§4$z§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import §^4§.§]"8§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import config.§5%T§;
   import config.§;"I§;
   import config.§`!a§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §8$B§ extends §&"T§
   {
      
      private static const § "h§:String = "Magnet";
      
      private static const §1&&§:int = 60;
      
      private static const §#&4§:uint = 5;
      
      private static const §#!q§:int = 25;
      
      private static const §>$I§:int = 250;
      
      private static const §5!B§:Array = [§!%n§,Rope];
      
      private static const §,%n§:Array = [§+&F§,§^$[§,§!"<§,§ %s§];
      
      private const §@#?§:int = Application.scene.width;
      
      private const §&#5§:int = Application.scene.height;
      
      public var §%Y§:§;"c§;
      
      private var §&$S§:Dictionary = new Dictionary();
      
      private var owner:§+%]§;
      
      private var enabled:MovieClip;
      
      private var §0#<§:MovieClip;
      
      public function §8$B§(param1:§+%]§, param2:Number, param3:Number)
      {
         super();
         §,q§.push(§-&§.IMMOVABLE);
         this.owner = param1;
         this.§%Y§ = new §;"c§(param1,600,980);
         clip = §6#A§.§!&6§(§ "h§);
         this.enabled = MovieClip(clip.getChildByName("magnetA"));
         this.§0#<§ = MovieClip(clip.getChildByName("magnetP"));
         this.§0#<§.visible = false;
         physParams.§5N§ = §9%1§.§`$R§;
         physParams.§0#0§ = §<#`§.§&!c§;
         stable = true;
         this.x = param2;
         this.y = param3;
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private static function §##I§(param1:§&"T§, param2:Vector.<Class>) : Boolean
      {
         var _loc3_:Class = null;
         for each(_loc3_ in param2)
         {
            if(param1 is _loc3_)
            {
               return true;
            }
         }
         return false;
      }
      
      private static function §3$#§(param1:§&"T§) : void
      {
         var _loc2_:Point = param1 is Rope ? new Point(§6#I§(param1).owner.x + 30 * §6#I§(param1).owner.direction,§6#I§(param1).owner.y) : new Point(param1.x,param1.y);
         §1"-§.explode(§;n§.§1"E§,_loc2_.x,_loc2_.y,10);
         param1.disposed = true;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§>!i§();
         if(this.§%Y§.§@%b§)
         {
            this.§^#d§();
         }
      }
      
      private function §^#d§() : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:§&"T§ = null;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§6#I§]);
         for each(_loc2_ in §<H§.§%$Q§(0,0,this.§@#?§,this.§&#5§,_loc1_))
         {
            if(§6#I§(_loc2_).owner != this.owner)
            {
               if(§""L§.§'!8§(_loc2_,§,%n§))
               {
                  §3$#§(_loc2_);
               }
               else
               {
                  _loc3_ = _loc2_;
               }
            }
            if(Boolean(_loc3_) && !§""L§.§'!8§(_loc3_,§5!B§))
            {
               if(!this.§&$S§[_loc3_])
               {
                  this.§&$S§[_loc3_] = frames + (_loc3_ is §=!z§ ? §#&4§ : §1&&§);
               }
               _loc4_ = _loc3_ is §]"8§ ? uint(§>$I§) : uint(§#!q§);
               _loc3_.stable = true;
               _loc3_.§6"O§(Math.atan2(y - _loc3_.y,x - _loc3_.x),this.§3"G§(_loc4_));
               if(this.§&$S§[_loc3_] <= frames || _loc3_.y < 0)
               {
                  §3$#§(_loc3_);
               }
            }
         }
      }
      
      private function §3"G§(param1:Number) : Number
      {
         return param1 * this.§%Y§.charge / 100;
      }
      
      private function §>!i§() : void
      {
         this.enabled.visible = this.§%Y§.§@%b§;
         this.§0#<§.visible = !this.§%Y§.§@%b§;
      }
      
      private function §^"m§(param1:Event) : void
      {
         stable = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         super.§[$u§(param1);
      }
   }
}

