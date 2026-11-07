package ru.pragmatix.wormix.model.items.backpack
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §#",§.ChooseFriendMenu;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&!m§.§;#[§;
   import §&$Y§.§6[§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-&5§.*;
   import §-@§.§+"A§;
   import §-@§.§5"4§;
   import §0!§.§9"u§;
   import §0%"§.§[!^§;
   import §0%"§.§`"`§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#x§.§[#Z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.*;
   import §4!K§.§^%A§;
   import §4#`§.*;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §4u§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §6_§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%k§.§0"^§;
   import §<!W§.§?#L§;
   import §<"?§.§3>§;
   import §<$q§.*;
   import §<%E§.§,$2§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §>$q§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!N§.§&#Z§;
   import §@!N§.§-!Y§;
   import §@!i§.*;
   import §@$§.§`&C§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!O§.§1#i§;
   import §]$&§.§2&2§;
   import §^"<§.§+%E§;
   import §^"y§.§]#i§;
   import §`#x§.*;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §6#Q§
   {
      
      protected var §9#?§:Object = {};
      
      public function §6#Q§()
      {
         super();
      }
      
      public function §0%8§(param1:§&!e§, param2:int = -1, param3:uint = 0, param4:uint = 1) : BackpackItem
      {
         var _loc6_:uint = 0;
         var _loc5_:BackpackItem = null;
         if(param1)
         {
            if(this.§9#?§[param1.getId()])
            {
               _loc5_ = BackpackItem(this.§9#?§[param1.getId()]);
               _loc5_.setCount(param2);
            }
            else
            {
               _loc5_ = new BackpackItem(param1,param2,param3);
               this.§9#?§[param1.getId()] = _loc5_;
            }
            _loc6_ = 1;
            if(param1 is §;#_§ && §;#_§(param1).isComplex())
            {
               _loc6_ = §;#_§(param1).getMaxLevel();
            }
            _loc5_.§>=§(param4,_loc6_);
         }
         return _loc5_;
      }
      
      public function §2$I§(param1:int, param2:int = -1, param3:Boolean = true) : void
      {
         if(this.§9#?§[param1])
         {
            param2 = param2 == -1 ? -1 : int(BackpackItem(this.§9#?§[param1]).getCount() - param2);
            if(param2 < 0)
            {
               delete this.§9#?§[param1];
            }
            else
            {
               BackpackItem(this.§9#?§[param1]).setCount(param2);
            }
         }
      }
      
      public function §+$!§() : Object
      {
         return this.§9#?§;
      }
      
      public function §,!V§() : Array
      {
         var item:BackpackItem = null;
         var list:Array = [];
         for each(item in this.§9#?§)
         {
            list[list.length] = item;
         }
         list.sort(function(param1:BackpackItem, param2:BackpackItem):int
         {
            return §;#[§.itemsComparator(param1.getRecord(),param2.getRecord());
         });
         return list;
      }
      
      public function §!%0§(param1:int) : Boolean
      {
         return this.§9#?§[param1] ? !BackpackItem(this.§9#?§[param1]).isEmpty() : false;
      }
      
      public function §^$n§(param1:int) : Boolean
      {
         var _loc2_:BackpackItem = null;
         if(this.§9#?§[param1])
         {
            _loc2_ = BackpackItem(this.§9#?§[param1]);
            return _loc2_.isInfinite() && _loc2_.getLevel() == _loc2_.getMaxLevel();
         }
         return false;
      }
      
      public function § %n§(param1:int) : int
      {
         var _loc2_:BackpackItem = null;
         _loc2_ = this.§9#?§[param1] as BackpackItem;
         return _loc2_ ? _loc2_.getCount() : 0;
      }
      
      public function §8&E§(param1:int) : BackpackItem
      {
         return this.§9#?§[param1];
      }
      
      public function isEmpty() : Boolean
      {
         return this.§,!V§().length == 0;
      }
      
      public function §!&G§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:BackpackItem = this.§8&E§(param1);
         if(_loc4_)
         {
            _loc4_.setCount(_loc4_.getCount() + param2);
         }
         else if(param3)
         {
            this.§0%8§(§1@§.§`$M§(param1),param2);
         }
      }
   }
}

