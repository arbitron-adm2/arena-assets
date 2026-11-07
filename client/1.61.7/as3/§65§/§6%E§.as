package §65§
{
   import § !8§.§`!d§;
   import § &5§.§@N§;
   import § L§.§`T§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§%!%§;
   import §+%S§.§%#j§;
   import §+%S§.§+m§;
   import §+%S§.§>!I§;
   import §+%S§.§["4§;
   import §+%S§.§[&;§;
   import §+&<§.*;
   import §,#_§.§%!_§;
   import §,$J§.§,$O§;
   import §-!U§.*;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4%_§.§3§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §6"'§.§=$@§;
   import §7!B§.§&"T§;
   import §7$1§.§3&G§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §;!J§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=7§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §6%E§
   {
      
      private static const §<$D§:Vector.<String> = new <String>[§%#j§.NAME];
      
      §§push(§§findproperty(§8#C§));
      var _temp_2:* = new <String>[§["4§.NAME,§["4§.§6>§,§>!I§.NAME,§>!I§.§6>§];
      
      private static const §8#C§:Vector.<String> = new <String>[§["4§.NAME,§["4§.§6>§,§>!I§.NAME,§>!I§.§6>§];
      
      private var unit:§+%]§;
      
      private var buffs:Object = {};
      
      public function §6%E§(param1:§+%]§)
      {
         super();
         this.unit = param1;
      }
      
      public function place(param1:§`"C§) : void
      {
         if(!this.unit.disposed)
         {
            if(!this.hasBuff(param1.§7%z§()))
            {
               this.buffs[param1.§7%z§()] = param1;
               param1.place(this.unit);
            }
            else
            {
               §`"C§(this.buffs[param1.§7%z§()]).reset();
            }
         }
      }
      
      public function replace(param1:§`"C§) : void
      {
         var _loc2_:§`"C§ = null;
         if(!this.unit.disposed)
         {
            _loc2_ = this.unit.buffs.getBuff(param1.§7%z§());
            if(_loc2_)
            {
               this.unit.buffs.§6C§(param1.§7%z§());
            }
            this.place(param1);
         }
      }
      
      public function addValue(param1:§`"C§) : void
      {
         var _loc2_:§`"C§ = null;
         if(!this.unit.disposed)
         {
            _loc2_ = this.unit.buffs.getBuff(param1.§7%z§());
            if(_loc2_)
            {
               param1.addValue(_loc2_.getValue());
               this.unit.buffs.§6C§(param1.§7%z§());
            }
            this.place(param1);
         }
      }
      
      public function §7%?§(param1:§`"C§, param2:int = 0) : void
      {
         var _loc3_:§`"C§ = null;
         if(!this.unit.disposed)
         {
            _loc3_ = this.unit.buffs.getBuff(param1.§7%z§());
            if(_loc3_)
            {
               param1.§7%?§(param2 ? int(Math.min(param2 - param1.§8!t§(),_loc3_.§8#z§())) : _loc3_.§8#z§());
               this.unit.buffs.§6C§(param1.§7%z§());
            }
            this.place(param1);
         }
      }
      
      public function hasBuff(param1:String) : Boolean
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in this.buffs)
         {
            if(_loc2_.§7%z§() == param1)
            {
               return !_loc2_.§&h§();
            }
         }
         return false;
      }
      
      public function §%%b§(param1:Array) : Boolean
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in this.buffs)
         {
            if(param1.indexOf(_loc2_.§7%z§()) > -1 && !_loc2_.§&h§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function §1!k§(param1:Array) : Boolean
      {
         var _loc3_:§`"C§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.buffs)
         {
            if(param1.indexOf(_loc3_.§7%z§()) > -1 && !_loc3_.§&h§())
            {
               _loc2_++;
            }
         }
         return param1.length == _loc2_;
      }
      
      public function getBuff(param1:String) : §`"C§
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in this.buffs)
         {
            if(_loc2_.§7%z§() == param1 && !_loc2_.§&h§())
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §6C§(param1:String) : void
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in this.buffs)
         {
            if(_loc2_.§7%z§() == param1 && !_loc2_.§&h§())
            {
               _loc2_.clear();
               return;
            }
         }
      }
      
      public function §;%3§() : void
      {
         var _loc1_:§`"C§ = null;
         for each(_loc1_ in this.buffs)
         {
            if(!_loc1_.§&h§())
            {
               _loc1_.clear();
            }
         }
         this.buffs = [];
      }
      
      public function §2%5§() : void
      {
         var _loc1_:§`"C§ = null;
         for each(_loc1_ in this.buffs)
         {
            if(!_loc1_.§&h§() && §<$D§.indexOf(_loc1_.§7%z§()) > -1)
            {
               _loc1_.clear();
            }
         }
      }
      
      public function §;!1§() : void
      {
         var _loc1_:§`"C§ = null;
         for each(_loc1_ in this.buffs)
         {
            if(!_loc1_.§7%z§())
            {
            }
         }
      }
      
      public function §1!D§(param1:§+%]§) : void
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in this.buffs)
         {
            if(!_loc2_.§&h§())
            {
               _loc2_.§+"k§(param1);
            }
         }
      }
      
      public function §2!6§(param1:§+%]§) : void
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in this.buffs)
         {
            if(!_loc2_.§&h§() && §8#C§.indexOf(_loc2_.§7%z§()) > -1)
            {
               _loc2_.§+"k§(param1);
            }
         }
      }
      
      public function §#&G§() : Object
      {
         return this.buffs;
      }
      
      public function forEach(param1:Function, param2:Object = null) : void
      {
         var _loc3_:§`"C§ = null;
         for each(_loc3_ in this.buffs)
         {
            param1(_loc3_,param2);
         }
      }
   }
}

