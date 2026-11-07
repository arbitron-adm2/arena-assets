package §-@§
{
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%E§.§2§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §0&F§.§0%v§;
   import §1"r§.§4!u§;
   import §1#p§.*;
   import §2#H§.§,#V§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3#a§.*;
   import §3%?§.§=E§;
   import §4!!§.§&!^§;
   import §4#`§.§+!l§;
   import §4f§.§-&§;
   import §5"J§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §9%k§.§?%o§;
   import §;!Z§.*;
   import §<%E§.§4T§;
   import §<%E§.§6#`§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=#g§.§!"X§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §=7§.§?%4§;
   import §>!_§.*;
   import §>$q§.§4#;§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§;%v§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[!O§.§%@§;
   import §[!`§.*;
   import §]#[§.§2%o§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import com.greensock.events.LoaderEvent;
   import config.achievements.*;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0"e§
   {
      
      public function §0"e§()
      {
         super();
      }
      
      public static function §6s§(param1:Vector.<§`%g§>, param2:Vector.<§]$X§> = null, param3:Vector.<§0%=§> = null, param4:Vector.<§!%&§> = null, param5:Boolean = false) : void
      {
         var _loc7_:§'"-§ = null;
         var _loc8_:Array = null;
         var _loc9_:§`%g§ = null;
         var _loc10_:§;#_§ = null;
         var _loc11_:int = 0;
         var _loc12_:Boolean = false;
         var _loc13_:BackpackItem = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:BackpackItem = null;
         var _loc19_:§]$X§ = null;
         var _loc20_:int = 0;
         var _loc21_:§0%=§ = null;
         var _loc22_:§!%&§ = null;
         var _loc6_:UserProfile = Application.userProfile;
         if(param1)
         {
            _loc7_ = _loc6_.§3%^§();
            _loc8_ = [];
            for each(_loc9_ in param1)
            {
               _loc10_ = §<$c§.§ !=§(_loc9_.getId());
               _loc11_ = _loc9_.getCount();
               _loc12_ = _loc9_.getKind() == §[#c§.§<#^§;
               if(_loc10_.isComplex() && !_loc12_)
               {
                  _loc13_ = _loc7_.§8&E§(_loc9_.getId());
                  _loc14_ = (Boolean(_loc13_)) && _loc13_.isInfinite() ? int(_loc13_.getLevel()) : 0;
                  _loc15_ = Boolean(_loc13_) && _loc13_.§8"I§() ? _loc14_ : int(_loc14_ + Math.abs(_loc11_));
                  _loc7_.§0%8§(_loc10_,-1,_loc10_.§]!C§(),_loc15_);
               }
               else
               {
                  _loc16_ = _loc7_.§ %n§(_loc9_.getId());
                  _loc17_ = _loc11_ == -1 || _loc16_ == -1 ? -1 : int(_loc11_ + _loc16_);
                  _loc18_ = _loc7_.§0%8§(_loc10_,_loc17_,_loc10_.§]!C§());
                  if(_loc18_)
                  {
                     _loc8_.push(_loc18_.getId());
                  }
               }
            }
            if(_loc8_.length)
            {
               §@$l§.§0$=§(_loc8_);
            }
         }
         if(param2)
         {
            for each(_loc19_ in param2)
            {
               _loc20_ = §0#2§.§@&6§() + _loc19_.getExpireHours() * §0#2§.§8$]§;
               §#&>§.§4%5§(_loc19_.getId(),true,param5,_loc19_.getRecord().§8!t§() > 0 && _loc19_.getExpireHours() > 0 ? int(_loc19_.getExpireHours() * §0#2§.§8$]§) : -1);
            }
         }
         if(_loc21_)
         {
            for each(_loc21_ in param3)
            {
               if(_loc6_.§'$k§())
               {
                  §8"%§.§%!m§.§9&$§(_loc21_.getProfile(),§2=§.MERCENARY);
               }
            }
         }
         if(param4)
         {
            for each(_loc22_ in param4)
            {
               §1!S§.§ #+§(_loc22_.getId(),_loc22_.getCount());
            }
            Application.§5!>§.§8$w§();
         }
         §=%_§.§7&D§(_loc6_);
      }
      
      public static function §4E§(param1:Vector.<int>) : Vector.<§!%&§>
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<§!%&§> = new Vector.<§!%&§>(0);
         for each(_loc3_ in param1)
         {
            _loc2_.push(new §!%&§(_loc3_,1));
         }
         return _loc2_;
      }
      
      public static function §9%g§() : void
      {
         var _loc2_:§4$z§ = null;
         var _loc1_:§]$d§ = §8"%§.§?!W§.§^!U§();
         if(Boolean(_loc1_ && _loc1_.missionIds && _loc1_.missionIds.length == 1) && Boolean(_loc1_.missionIds[0] == 0) && _loc1_.battleType == §&$a§.§^!p§)
         {
            _loc2_ = §6#H§.§,$g§(§<$Z§.§!M§,null);
            _loc2_.§-!K§ = _loc1_.§-!K§;
            _loc2_.money = §;%v§.§'&&§(§<$Z§.§!M§,_loc1_.§-!K§);
            _loc2_.exp = §;%v§.§!$]§(§<$Z§.§!M§,_loc1_.§-!K§);
            §2$^§.§;%K§(_loc2_);
            Application.userProfile.§1%'§(-_loc2_.money);
            Application.userProfile.§'"3§(-_loc2_.exp);
         }
      }
      
      public static function §`"T§(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc5_:String = null;
         var _loc6_:§&!e§ = null;
         var _loc7_:§;#_§ = null;
         var _loc8_:int = 0;
         var _loc9_:BackpackItem = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:BackpackItem = null;
         var _loc14_:String = null;
         var _loc15_:§;#_§ = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:BackpackItem = null;
         var _loc3_:§'"-§ = Application.userProfile.§3%^§();
         var _loc4_:Array = [];
         for(_loc5_ in param1)
         {
            _loc6_ = §<$c§.§8&E§(parseInt(_loc5_),Application.userProfile.getRace());
            if(_loc6_ is §;#_§)
            {
               _loc7_ = §;#_§(_loc6_);
               _loc8_ = int(param1[_loc5_]);
               if(_loc7_.isComplex() && _loc8_ > 0)
               {
                  _loc9_ = _loc3_.§8&E§(_loc6_.getId());
                  _loc10_ = (Boolean(_loc9_)) && _loc9_.isInfinite() ? int(_loc9_.getLevel()) : 0;
                  _loc11_ = Boolean(_loc9_) && _loc9_.§8"I§() ? _loc10_ : int(_loc10_ + _loc8_);
                  _loc3_.§0%8§(_loc7_,-1,_loc7_.§]!C§(),_loc11_);
               }
               else
               {
                  _loc12_ = _loc8_ == -1 ? _loc8_ : int(_loc8_ + _loc3_.§ %n§(_loc6_.getId()));
                  _loc13_ = _loc3_.§0%8§(_loc6_,_loc12_,_loc7_.§]!C§());
                  if(_loc13_)
                  {
                     _loc4_.push(_loc13_.getId());
                  }
               }
            }
            else
            {
               §#&>§.§4%5§(_loc6_.getId(),false);
            }
         }
         if(param2)
         {
            for(_loc14_ in param2)
            {
               _loc15_ = §<$c§.§ !=§(parseInt(_loc14_));
               if(_loc15_)
               {
                  _loc16_ = int(param2[_loc14_]);
                  _loc17_ = _loc3_.§ %n§(_loc15_.getId());
                  _loc18_ = _loc16_ == -1 ? -1 : int(_loc16_ + Math.max(_loc17_,0));
                  _loc19_ = _loc3_.§0%8§(_loc15_,_loc18_,_loc15_.§]!C§());
                  if(_loc19_)
                  {
                     _loc4_.push(_loc19_.getId());
                  }
               }
            }
         }
         §@$l§.§0$=§(_loc4_);
      }
      
      public function §0" §(param1:§4$z§) : void
      {
         var _loc3_:§,&F§ = null;
         var _loc4_:§!%&§ = null;
         var _loc5_:int = 0;
         var _loc2_:UserProfile = Application.userProfile;
         if(§4! §.§7%>§(param1.exp + param1.§?#_§))
         {
            param1.§8%I§ = _loc2_.getLevel();
            _loc3_ = §?%o§.§+$Q§(_loc2_.getLevel());
            param1.§<!s§ = _loc3_.§#!G§();
         }
         if(param1.rating != 0)
         {
            _loc2_.§+!C§(_loc2_.getRating() + param1.rating);
         }
         if(param1.rankPoints != 0)
         {
            _loc2_.§&!x§(_loc2_.§]#6§() + param1.rankPoints);
         }
         _loc2_.§1%'§(param1.money + param1.§;% § + §;%v§.§!!d§(param1));
         if(param1.realMoney > 0)
         {
            _loc2_.§9%D§(param1.realMoney);
         }
         if(param1.reaction > 0)
         {
            _loc2_.§%`§(param1.reaction);
         }
         §6s§(param1.weapons,param1.§1"4§,param1.§"%e§,null,true);
         if(Boolean(param1.reagents) && Boolean(param1.reagents.length))
         {
            for each(_loc4_ in param1.reagents)
            {
               §1!S§.§ #+§(_loc4_.getId(),_loc4_.getCount());
            }
         }
         else if(Boolean(param1.§`&>§) && Boolean(param1.§`&>§.length))
         {
            for each(_loc5_ in param1.§`&>§)
            {
               §1!S§.§ #+§(_loc5_,1);
            }
         }
         Application.§5!>§.§8$w§();
      }
      
      public function §[j§(param1:Boolean = true) : void
      {
         if(Boolean(§8"%§.§?!W§.§^!U§()) && §8"%§.§?!W§.§^!U§().§+#<§())
         {
            §?B§.§8#&§(this.§+R§);
         }
         if(param1)
         {
            this.§-Y§();
         }
      }
      
      private function §+R§() : void
      {
         var quest:§?B§ = null;
         quest = §8"%§.§'%;§;
         if(quest.§"!4§())
         {
            quest.§&y§(function():void
            {
               §""n§.single(quest.§6#C§(),§[%w§.WINDOW_CLOSE,§-Y§);
            });
         }
         else
         {
            this.§-Y§();
         }
      }
      
      public function §]$C§(param1:Boolean = true) : void
      {
         if(§8"%§.§%$r§.§2%N§)
         {
            §8"%§.§%w§.getArenaMenu().show();
            §8"%§.§%$r§.§,"[§(true);
         }
         if(param1)
         {
            this.§-Y§();
         }
      }
      
      public function §;"P§(param1:Event = null) : void
      {
         var _loc3_:LevelUpDialog = null;
         var _loc2_:§4$z§ = §8"%§.§?!W§.§;%s§();
         if(Boolean(_loc2_) && _loc2_.§8%I§ > 0)
         {
            _loc3_ = new LevelUpDialog(_loc2_.§8%I§);
            §""n§.single(_loc3_,§[%w§.WINDOW_CLOSE,§8"%§.§?!W§.§>$L§() ? this.§;"P§ : this.§`#?§);
            _loc3_.show();
            this.§0#Y§(_loc2_.§8%I§);
         }
         else
         {
            this.§-Y§();
         }
      }
      
      private function §-Y§(param1:Event = null) : void
      {
         §8"%§.§?!W§.§7#<§();
         §2#4§.§]!w§();
      }
      
      private function §0#Y§(param1:uint) : void
      {
         var _loc2_:§,&F§ = §?%o§.§+$Q§(param1);
         if(_loc2_ != null)
         {
            §6s§(_loc2_.getWeapons(true),_loc2_.§2!O§(),_loc2_.§?"y§(),_loc2_.§]#x§());
         }
      }
      
      private function §`#?§(param1:Event) : void
      {
         var _loc2_:LevelUpDialog = param1.target as LevelUpDialog;
         if(_loc2_.§>#U§)
         {
            Social.§!g§.§8%I§(_loc2_.§8%I§);
         }
         else if(_loc2_.§-&=§)
         {
            §8"%§.§8"!§.showShopMenu();
         }
         §8"%§.§?!W§.§7#<§();
      }
      
      public function §;!F§(param1:§1%z§) : void
      {
         var exp:uint = 0;
         var pack:§1%z§ = param1;
         var user:UserProfile = Application.userProfile;
         user.§1%'§(pack.§#!G§());
         user.§9%D§(pack.§@$D§());
         user.§%`§(pack.§=u§());
         §6s§(pack.getWeapons(true),pack.§2!O§(),pack.§?"y§(),pack.§]#x§(),true);
         exp = pack.§[!s§();
         if(Application.userProfile.getLevel() == §<!9§.getMaxLevel())
         {
            exp = 0;
         }
         if(exp)
         {
            §1%"§.delay(function():void
            {
               LevelUpDialog.§@#X§(exp,§`#?§);
               Application.§5!>§.§8$w§();
            },this,1000);
         }
      }
      
      public function §?!I§(param1:§1%z§) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         _loc2_.§1%'§(param1.§#!G§());
         _loc2_.§9%D§(param1.§@$D§());
         §6s§(param1.getWeapons(true),param1.§2!O§(),null,param1.§]#x§(),true);
         var _loc3_:uint = param1.§[!s§();
         if(_loc3_)
         {
            LevelUpDialog.§@#X§(_loc3_,this.§`#?§);
         }
         Application.§5!>§.§8$w§();
      }
      
      public function §@%E§(param1:§1%z§) : void
      {
         var _loc3_:§!%&§ = null;
         var _loc2_:Vector.<§!%&§> = param1.§]#x§();
         if(Boolean(_loc2_) && Boolean(_loc2_.length))
         {
            for each(_loc3_ in _loc2_)
            {
               §1!S§.§ #+§(_loc3_.getId(),_loc3_.getCount());
            }
         }
      }
   }
}

