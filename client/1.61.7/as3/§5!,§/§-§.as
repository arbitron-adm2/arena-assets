package §5!,§
{
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import § %"§.§"%5§;
   import § %f§.*;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import § K§.§@$b§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§7%f§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-%w§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §4$"§.WatermelonPiece;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5#`§.*;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §8$V§.§`"c§;
   import §9![§.§^§;
   import §;!Z§.*;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=&6§.§7$C§;
   import §=1§.*;
   import §=7§.§?%4§;
   import §?"[§.§>"T§;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[#q§.§="5§;
   import §[%'§.§<"G§;
   import §]$&§.§3$%§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%c§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.§8#@§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-§ extends §%%o§
   {
      
      public static const NAME:String = "WEAPONS_DAMAGED_BUFF";
      
      private var §#"-§:Vector.<int> = new Vector.<int>(0);
      
      public function §-§()
      {
         super(NAME,§7"#§);
      }
      
      public static function update(param1:§+%]§, param2:int) : void
      {
         if(param1.squad.isLocal())
         {
            return;
         }
         var _loc3_:§-§ = §8z§(param1);
         _loc3_.§>$&§(param2);
      }
      
      public static function §8z§(param1:§+%]§) : §-§
      {
         var _loc2_:§-§ = §-§(param1.buffs.getBuff(NAME));
         if(!_loc2_)
         {
            _loc2_ = new §-§();
            param1.buffs.place(_loc2_);
         }
         return _loc2_;
      }
      
      public static function §7%Z§(param1:§+%]§, param2:int) : Boolean
      {
         return §8z§(param1).§%$ §(param2);
      }
      
      public static function §="g§(param1:§+%]§, param2:Array) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:§-§ = §8z§(param1);
         for each(_loc4_ in param2)
         {
            if(_loc3_.§%$ §(_loc4_))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §,N§(param1:Vector.<int>, param2:int) : Boolean
      {
         return param1.indexOf(param2) > -1;
      }
      
      override public function clear() : void
      {
         super.clear();
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§#"-§.length = 0;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:§-§ = new §-§();
         _loc2_.§#"-§ = this.§#"-§.concat();
         param1.buffs.place(_loc2_);
      }
      
      public function §>$&§(param1:int) : void
      {
         if(this.§#"-§.indexOf(param1) == -1)
         {
            this.§#"-§.push(param1);
         }
      }
      
      public function §%$ §(param1:int) : Boolean
      {
         return this.§#"-§.indexOf(param1) > -1;
      }
      
      public function get list() : Vector.<int>
      {
         return this.§#"-§;
      }
   }
}

