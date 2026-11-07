package §8#a§
{
   import § $q§.§3U§;
   import § &5§.§@N§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.MsgBoxSocialSelect;
   import §&&6§.*;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.§^!9§;
   import §2"L§.§,'§;
   import §3"@§.§##L§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<!W§.*;
   import §<"L§.*;
   import §<%k§.§2§;
   import §="z§.§9%1§;
   import §>$q§.§4#;§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §@!N§.*;
   import §@!W§.§8!S§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§@$&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.Jetpack;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §@#c§ extends §"&=§ implements §^c§
   {
      
      public static const §;#p§:Number = 0.7;
      
      private var count:TextField;
      
      private var icon:§3U§;
      
      private var §7"u§:DisplayObject;
      
      private var §`%W§:DisplayObject;
      
      private var §5#d§:Boolean = false;
      
      private var priceContainer:§8!S§;
      
      private const §4%R§:String = "%off";
      
      private var textNew:TextField;
      
      private var textSale:TextField;
      
      private var bundlePrice:TextField;
      
      private var §3#!§:MovieClip;
      
      private var §<L§:§8"@§;
      
      private var §[p§:MovieClip;
      
      private var §+#k§:MovieClip;
      
      private var §[#`§:MovieClip;
      
      public function §@#c§(param1:MovieClip)
      {
         super(param1);
         this.§7"u§ = getChildByName("exist");
         this.§`%W§ = getChildByName("improve");
         this.count = §'%s§("count");
         this.priceContainer = new §8!S§(MovieClip(getChildByName("priceContainer")));
         this.icon = new §3U§(MovieClip(param1.getChildByName("icon")));
         this.textNew = §'%s§("textNew");
         this.textSale = §'%s§("textSale");
         this.textNew.mouseEnabled = this.textSale.mouseEnabled = false;
         this.bundlePrice = §'%s§("bundlePrice");
         this.bundlePrice.visible = false;
         this.§[p§ = §'$a§("normal");
         this.§+#k§ = §'$a§("disabled");
         this.§[#`§ = §'$a§("selection");
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc4_:§'"-§ = null;
         var _loc5_:§;#_§ = null;
         var _loc6_:§;#_§ = null;
         var _loc7_:BackpackItem = null;
         var _loc8_:uint = 0;
         this.stopAnimations();
         super.setItem(param1);
         var _loc2_:§&!e§ = §&!e§(param1);
         this.icon.§1&!§(param1 is §2"y§ ? 0.8 : §;#p§);
         this.icon.setItem(_loc2_);
         this.priceContainer.setVisible(_loc2_ != null);
         if(_loc2_)
         {
            this.priceContainer.§'!`§(_loc2_.§4$n§(),_loc2_.getRealPrice());
            §`o§.§+j§(this.priceContainer,this.icon.x,this.icon.x + this.icon.width);
         }
         this.count.visible = Boolean(_loc2_) && !_loc2_.getInfinite();
         this.§`%W§.visible = false;
         this.§7"u§.visible = false;
         setDisabled(_loc2_ == null);
         §;b§(_loc2_ != null);
         if(Social.§^"U§.§##N§())
         {
            if(_loc2_)
            {
               this.textNew.visible = _loc2_.§##m§().equals(§^"p§.§9%t§) || _loc2_.§##m§().equals(§^"p§.SPECIAL_PRICE) || _loc2_.§##m§().equals(§^"p§.POWERED) || _loc2_.§##m§().equals(§^"p§.§;#'§) || Application.instance.§#&7§() && _loc2_.§##m§().equals(§^"p§.§-!O§);
               this.textSale.visible = _loc2_.§##m§().equals(§^"p§.SALE_PRICE);
               if(this.textNew.visible)
               {
                  if(_loc2_.§##m§().equals(§^"p§.§9%t§) || _loc2_.§##m§().equals(§^"p§.SPECIAL_PRICE) || _loc2_.§##m§().equals(§^"p§.POWERED) || _loc2_.§##m§().equals(§^"p§.§;#'§) || Application.instance.§#&7§() && _loc2_.§##m§().equals(§^"p§.§-!O§))
                  {
                     this.textNew.text = §^"p§.getText(_loc2_.§##m§());
                  }
               }
               if(this.textSale.visible)
               {
                  this.textSale.text = _loc2_.§,!H§() + this.§4%R§;
                  this.textSale.y = this.textNew.visible ? 40 : 50;
               }
            }
            else
            {
               this.textNew.visible = this.textSale.visible = false;
            }
         }
         else
         {
            this.textNew.visible = this.textSale.visible = false;
         }
         var _loc3_:UserProfile = Application.userProfile;
         if(_loc2_)
         {
            this.§7"u§.visible = §8"%§.§8"!§.§=j§(_loc2_) || _loc3_.§,%o§().§!%0§(_loc2_.getId()) || §1!S§.§%$6§(_loc2_.getId(),_loc3_);
            if(_loc2_ is §;#_§)
            {
               _loc4_ = _loc3_.§3%^§();
               _loc5_ = §;#_§(_loc2_);
               if(!this.§7"u§.visible)
               {
                  if(!_loc2_.getInfinite())
                  {
                     if(_loc5_.getRefId() > 0)
                     {
                        _loc6_ = §<$c§.§ !=§(_loc5_.getRefId());
                        _loc7_ = _loc4_.§8&E§(_loc6_.getId());
                        this.§7"u§.visible = Boolean(_loc7_) && _loc7_.isInfinite() || §8"%§.§8"!§.§=j§(_loc6_);
                     }
                     else
                     {
                        this.§7"u§.visible = false;
                     }
                  }
               }
               if(_loc5_.isComplex())
               {
                  _loc8_ = §1!S§.§9!M§(_loc5_.getId());
                  this.§`%W§.visible = _loc8_ > 0 && _loc8_ < _loc5_.getMaxLevel();
                  this.§7"u§.visible = _loc8_ == _loc5_.getMaxLevel();
               }
            }
            else if(_loc2_ is §2& §)
            {
               this.§7"u§.visible = §2$^§.isVipExist();
            }
         }
         this.§+#k§.visible = _loc2_ == null;
         this.bundlePrice.visible = Boolean(_loc2_) && (_loc2_ is §9#x§ || _loc2_ is §2& §);
         this.§[p§.visible = Boolean(_loc2_) && !(_loc2_ is §9#x§);
         if(_loc2_)
         {
            if(_loc2_ is §9#x§)
            {
               this.§=#l§(§9#x§(_loc2_));
               this.playAnimations();
            }
            else if(_loc2_ is §2& §)
            {
               this.§8$1§(_loc2_ as §2& §);
            }
         }
      }
      
      private function §8$1§(param1:§2& §) : void
      {
         this.textNew.visible = param1.§`Q§();
         if(this.textNew.visible)
         {
            this.textNew.text = §0$N§.NOVELTY;
         }
         this.textSale.visible = true;
         this.textSale.text = param1.§?V§();
         this.textSale.y = this.textNew.visible ? 40 : 50;
         this.bundlePrice.text = param1.§"">§();
      }
      
      private function §=#l§(param1:§9#x§) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:§&!e§ = null;
         this.textNew.visible = param1.§`Q§();
         if(this.textNew.visible)
         {
            this.textNew.text = §0$N§.NOVELTY;
         }
         this.textSale.visible = param1.§,!H§() > 0;
         if(this.textSale.visible)
         {
            this.textSale.text = "-" + param1.§,!H§() + "%";
            this.textSale.y = this.textNew.visible ? 40 : 50;
         }
         this.bundlePrice.text = param1.§&V§() + " " + param1.§2$[§();
         this.§[p§.visible = false;
         this.§[#`§.visible = false;
         this.§3#!§ = §6#A§.§!&6§(§+"'§.§'#2§) as MovieClip;
         var _loc2_:String = §8$5§.§^&"§[param1.getType()];
         var _loc3_:int = 0;
         var _loc4_:int = this.§3#!§.numChildren;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = this.§3#!§.getChildByName(§8$5§.§^&"§[_loc3_]);
            MovieClip(SimpleButton(_loc5_).upState).stop();
            if(_loc2_ != _loc5_.name)
            {
               this.§3#!§.removeChild(_loc5_);
            }
            else if(param1.§%#+§())
            {
               _loc6_ = §<$c§.§8&E§(param1.§%#+§() + 1,Application.userProfile.getRace());
               §4"0§.§"$L§(SimpleButton(_loc5_),_loc6_);
            }
            _loc3_++;
         }
         §?!C§(this.§3#!§);
         this.§<L§ = §!&5§.§;#z§(this.§3#!§.getChildByName(_loc2_),"BUNDLE");
         §#!`§().swapChildren(this.§3#!§,this.textNew);
         §#!`§().swapChildren(this.textNew,this.textSale);
         §#!`§().setChildIndex(this.§7"u§,§#!`§().numChildren - 1);
         this.§<L§.setVisible(true);
         if(!§`%D§())
         {
            this.§<L§.setPressed(false);
         }
         this.§7"u§.visible = param1.§?%d§();
      }
      
      override protected function §#%S§(param1:MouseEvent) : void
      {
         var _loc3_:§;#_§ = null;
         var _loc4_:Vector.<§#$s§> = null;
         var _loc5_:§#$s§ = null;
         var _loc6_:§;#_§ = null;
         var _loc7_:§=?§ = null;
         var _loc8_:Object = null;
         var _loc9_:CraftedEquipFamily = null;
         var _loc10_:§-$6§ = null;
         super.§#%S§(param1);
         var _loc2_:§&!e§ = §&!e§(getItem());
         if(!_loc2_)
         {
            return;
         }
         if(_loc2_ is §;#_§)
         {
            _loc3_ = _loc2_ as §;#_§;
            _loc4_ = new Vector.<§#$s§>(0);
            §1!S§.§]%q§(_loc3_.getId(),_loc4_);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = §<$c§.§ !=§(_loc5_.upgradeId);
            }
         }
         if(_loc2_ is §=?§)
         {
            _loc7_ = _loc2_ as §=?§;
            _loc8_ = §<$c§.§1$E§();
            for each(_loc9_ in _loc8_)
            {
               if(_loc9_.§-!T§)
               {
                  for each(_loc10_ in _loc9_.§]#x§())
                  {
                     if(_loc10_.id == _loc7_.getId())
                     {
                     }
                  }
               }
            }
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.§<L§)
         {
            this.§<L§.setVisible(false);
            if(this.§<L§.simpleButton)
            {
               if(Boolean(this.§<L§.simpleButton.upState) && this.§<L§.simpleButton.upState is MovieClip)
               {
                  MovieClip(this.§<L§.simpleButton.upState).stop();
               }
            }
         }
      }
      
      public function playAnimations() : void
      {
         if(this.§<L§)
         {
            this.§<L§.setVisible(true);
            if(this.§<L§.simpleButton)
            {
               if(Boolean(this.§<L§.simpleButton.upState) && this.§<L§.simpleButton.upState is MovieClip)
               {
                  MovieClip(this.§<L§.simpleButton.upState).play();
               }
            }
         }
      }
      
      override protected function §!R§(param1:MouseEvent) : void
      {
         super.§!R§(param1);
         if(Boolean(this.§[#`§) && Boolean(item) && item is §9#x§)
         {
            this.§[#`§.visible = false;
         }
      }
      
      override public function setSelected(param1:Boolean) : void
      {
         super.setSelected(param1);
         if(Boolean(this.§[#`§) && Boolean(item) && item is §9#x§)
         {
            this.§[#`§.visible = false;
            if(this.§<L§)
            {
               this.§<L§.setPressed(param1);
            }
         }
      }
      
      public function §&&F§(param1:Boolean) : void
      {
         this.§[#`§.gotoAndStop(param1 ? "blue" : "green");
         this.§[p§.gotoAndStop(param1 ? "blue" : "yellow");
         this.§5#d§ = param1;
      }
      
      public function setImprove(param1:Boolean) : void
      {
         this.§`%W§.visible = param1;
      }
      
      public function setExist(param1:Boolean) : void
      {
         this.§7"u§.visible = param1;
      }
      
      public function get isExist() : Boolean
      {
         return this.§7"u§.visible;
      }
   }
}

