package §<!W§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§2v§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&!m§.§;#[§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-&5§.§?#c§;
   import §-8§.*;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §4#2§.§,%g§;
   import §4'§.§`"q§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#<§.§^#O§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@!i§.§!m§;
   import §@!i§.§,! §;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1$1§ extends §%%o§
   {
      
      public static const NAME:String = "CAT_SHARP_CLAWS_BUFF";
      
      public static const §1!h§:int = 30;
      
      public static const §!$w§:int = 30;
      
      public static const §%c§:Number = 8;
      
      private var §]"w§:Dictionary;
      
      private var damagedUnits:Dictionary;
      
      private var §`#U§:Boolean;
      
      private var activeUnit:§+%]§;
      
      public function §1$1§()
      {
         super(NAME,§-"^§);
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         this.§]"w§ = new Dictionary();
         this.damagedUnits = new Dictionary();
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(unit) && Boolean(unit.squad))
         {
            this.§4""§();
         }
         else
         {
            Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         }
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(unit.squad))
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(unit);
            for each(_loc2_ in _loc1_)
            {
               _loc2_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
               _loc2_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            }
         }
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         this.§6&>§();
         this.§]"w§ = this.damagedUnits = null;
         this.activeUnit = null;
         super.§0&"§();
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit.squad.getTeamId() != unit.squad.getTeamId() && !param1.unit.disposed)
         {
            param1.unit.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            param1.unit.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         if(this.§]"w§)
         {
            this.§4""§();
         }
      }
      
      private function §4""§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(unit);
         for each(_loc2_ in _loc1_)
         {
            _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      override protected function §7$d§() : void
      {
         if(§8"%§.§?!W§.§4"m§.activeUnit.§4!R§(unit))
         {
            this.activeUnit = §8"%§.§?!W§.§4"m§.activeUnit;
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         §+%]§(param1.target).removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         var _loc2_:DamageEvent = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:String = null;
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(!this.activeUnit)
         {
            return;
         }
         if(Boolean(!param1.§ %M§.disposed && param1.§ %M§ is §+%]§ && param1.changeType == §6#z§.DMG_TAKEN) && Boolean(param1.§=#r§) && param1.§=#r§ is DamageEvent)
         {
            _loc2_ = param1.§=#r§ as DamageEvent;
            _loc3_ = param1.§ %M§ as §+%]§;
            if(Boolean(param1.amount < 0 && _loc2_.source && _loc2_.source.owner) && Boolean(this.activeUnit == _loc2_.source.owner) && _loc3_.squad.getTeamId() != unit.squad.getTeamId())
            {
               _loc4_ = _loc3_.getId().toString();
               this.§`#U§ = true;
               this.damagedUnits[_loc4_] = _loc3_;
               if(this.§]"w§[_loc4_] == undefined)
               {
                  this.§]"w§[_loc4_] = Math.abs(param1.amount);
               }
               else
               {
                  this.§]"w§[_loc4_] += Math.abs(param1.amount);
               }
            }
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(!this.§]"w§)
         {
            return;
         }
         if(!this.activeUnit)
         {
            return;
         }
         if(this.§`#U§)
         {
            this.§,%]§();
            this.§`#U§ = false;
         }
         this.§6&>§();
         this.activeUnit = null;
      }
      
      private function §,%]§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§]"w§ || !this.damagedUnits)
         {
            return;
         }
         for(_loc1_ in this.damagedUnits)
         {
            if(this.§]"w§[_loc1_] < §1!h§ || §+%]§(this.damagedUnits[_loc1_]).disposed)
            {
               delete this.§]"w§[_loc1_];
               delete this.damagedUnits[_loc1_];
            }
         }
         _loc2_ = 0;
         for(_loc1_ in this.damagedUnits)
         {
            _loc3_ = this.§]"w§[_loc1_] * §%c§ / 100;
            if(_loc3_ > 0)
            {
               this.§;#=§(this.damagedUnits[_loc1_],Math.min(§!$w§,_loc3_));
               _loc2_++;
            }
         }
         if(_loc2_ > 0)
         {
            §@%;§.play(§`!v§.§-$z§);
         }
      }
      
      private function §;#=§(param1:§+%]§, param2:int) : void
      {
         var _loc3_:§`"C§ = param1.buffs.getBuff(§#&#§.NAME);
         if(!_loc3_ || _loc3_.§8#z§() < §#&#§.§%!y§)
         {
            §8"%§.§?!W§.§>$y§("victim " + param1.record.getCharName() + " is debuffed" + (_loc3_ ? " again!" : "") + "!");
            param1.buffs.replace(new §#&#§(this.activeUnit,param2,§#&#§.§%!y§));
            if(!§-#M§.§&$i§(param1))
            {
               §1"-§.§8"l§(param1,§1"-§.§`"g§);
            }
         }
      }
      
      private function §6&>§() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§]"w§)
         {
            delete this.§]"w§[_loc1_];
            delete this.damagedUnits[_loc1_];
         }
      }
   }
}

