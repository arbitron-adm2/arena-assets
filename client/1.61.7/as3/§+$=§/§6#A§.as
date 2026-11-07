package §+$=§
{
   import § "I§.§,!D§;
   import § &5§.§=#P§;
   import §!$Z§.§7$2§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.§7"1§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§'%V§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2"L§.§!!<§;
   import §2"L§.§^$y§;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5#`§.§7%g§;
   import §6"'§.§>"V§;
   import §6",§.§[%w§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.system.LoaderContext;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6#A§ extends §[]§
   {
      
      public static var instance:§6#A§;
      
      private static const §]!^§:§&`§ = new §&`§(§6#A§);
      
      private var classes:Object = new Object();
      
      public function §6#A§(param1:String, param2:String, param3:Vector.<String>, param4:LoaderContext)
      {
         super(param1,param2,param3,param4);
         instance = this;
      }
      
      public static function contains(param1:String) : Boolean
      {
         return §6#A§.instance.contains(param1);
      }
      
      public static function getClass(param1:String) : Class
      {
         var _loc2_:§;!d§ = §4$t§(param1);
         if(_loc2_)
         {
            return _loc2_.getClass();
         }
         return null;
      }
      
      public static function §!&6§(param1:String) : MovieClip
      {
         var _loc2_:§;!d§ = §4$t§(param1);
         if(_loc2_)
         {
            return _loc2_.§!&6§();
         }
         return null;
      }
      
      public static function §]#$§(param1:String) : SimpleButton
      {
         var _loc2_:§;!d§ = §4$t§(param1);
         if(_loc2_)
         {
            return _loc2_.§]#$§();
         }
         return null;
      }
      
      public static function § !7§(param1:String) : Font
      {
         var _loc2_:§;!d§ = §4$t§(param1);
         if(_loc2_)
         {
            return _loc2_.§ !7§();
         }
         return null;
      }
      
      public static function §'8§(param1:String) : Sound
      {
         var _loc2_:§;!d§ = §4$t§(param1);
         if(_loc2_)
         {
            return _loc2_.§'8§();
         }
         return null;
      }
      
      public static function §4$t§(param1:String) : §;!d§
      {
         return §6#A§.instance.§4$t§(param1);
      }
      
      public static function §]##§(param1:String, param2:§;!d§) : void
      {
         §6#A§.instance.classes[param1] = param2;
      }
      
      public static function §'$q§(param1:Vector.<String>, param2:Function, param3:Function, param4:Boolean = false) : void
      {
         §6#A§.instance.§'$q§(param1,param2,param3,param4);
      }
      
      public static function §0M§(param1:String, param2:Function, param3:Function, param4:Boolean = false) : void
      {
         §6#A§.instance.§'$q§(new <String>[param1],param2,param3,param4);
      }
      
      public static function §[&6§(param1:Vector.<§+&§>, param2:Function, param3:Function, param4:Boolean = false) : void
      {
         §6#A§.instance.§[&6§(param1,param2,param3,param4);
      }
      
      public static function §=`§(param1:§+&§, param2:Function, param3:Function, param4:Boolean = false) : void
      {
         §6#A§.§[&6§(new <§+&§>[param1],param2,param3,param4);
      }
      
      public function contains(param1:String) : Boolean
      {
         return this.classes[param1] != null;
      }
      
      public function §4$t§(param1:String) : §;!d§
      {
         var _loc2_:§;!d§ = §;!d§(this.classes[param1]);
         if(!_loc2_)
         {
            this.log.§3"l§("resource not found: " + param1);
         }
         return _loc2_;
      }
      
      override protected function §8%N§(param1:LoaderEvent) : void
      {
         super.§8%N§(param1);
         var _loc2_:Number = Number(param1.target.bytesLoaded / param1.target.bytesTotal * 70);
         §,!D§.publish(_loc2_ + 10);
      }
      
      override protected function §,!e§(param1:§;!d§) : void
      {
         this.classes[param1.§+"]§()] = param1;
      }
      
      public function §'$q§(param1:Vector.<String>, param2:Function, param3:Function, param4:Boolean = false) : void
      {
         var _loc6_:String = null;
         var _loc5_:Vector.<§+&§> = new Vector.<§+&§>(0);
         for each(_loc6_ in param1)
         {
            _loc5_.push(this.§=%'§(_loc6_));
         }
         §[&6§(_loc5_,param2,param3,param4);
      }
      
      private function §8u§(param1:String) : §+&§
      {
         var _loc2_:§+&§ = null;
         var _loc3_:§;!d§ = null;
         loop0:
         for each(_loc2_ in §]$W§)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.§=!=§;
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_.§+"]§() != param1);
            return _loc2_;
         }
         return null;
      }
      
      private function §=%'§(param1:String) : §+&§
      {
         var _loc2_:§+&§ = null;
         for each(_loc2_ in §]$W§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         this.log.§3"l§("library not found by name " + param1 + " in config " + § $b§);
         throw new IllegalOperationError("library not found by name " + param1 + " in config " + § $b§);
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}

