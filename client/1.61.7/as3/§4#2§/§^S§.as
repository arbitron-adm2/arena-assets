package §4#2§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § %f§.§##d§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§9"z§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1A§.*;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §4#`§.§+!l§;
   import §4f§.§-&§;
   import §5!9§.§6$,§;
   import §6"'§.§9$Z§;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§=%A§;
   import config.achievements.§!$L§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^S§ extends §0&'§
   {
      
      private static const §`#3§:int = 150;
      
      private static const §]$O§:int = 800;
      
      private static const §6!1§:int = 5000;
      
      private static var §#%I§:uint = 0;
      
      private static var §3!E§:Boolean = false;
      
      private static var §@#N§:int = 0;
      
      private var profile:UserProfile;
      
      private var isActive:Boolean = false;
      
      private var §'"]§:§,%g§ = null;
      
      private var §,&'§:Vector.<§,%g§> = new Vector.<§,%g§>(0);
      
      private var layoutId:int = 0;
      
      private var §6!H§:Object = {};
      
      public function §^S§(param1:DisplayObjectContainer = null)
      {
         super(param1);
      }
      
      public static function save() : void
      {
         §@$l§.§@$5§();
         §+!l§.§7#§();
      }
      
      public static function §'"=§() : void
      {
         var _loc1_:int = getTimer();
         if(!§3!E§)
         {
            §3!E§ = true;
            §@#N§ = _loc1_;
         }
         if(§#%I§ != 0)
         {
            clearTimeout(§#%I§);
            §#%I§ = 0;
         }
         if(_loc1_ - §@#N§ >= §6!1§)
         {
            §%#W§();
         }
         else
         {
            §#%I§ = setTimeout(§^S§.§%#W§,§]$O§);
         }
      }
      
      public static function §%#W§() : void
      {
         if(§#%I§ != 0)
         {
            clearTimeout(§#%I§);
            §#%I§ = 0;
         }
         §3!E§ = false;
         save();
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.profile = param1;
      }
      
      override protected function §<#X§() : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:§,%g§ = null;
         if(!§4#B§)
         {
            §4#B§ = §&%p§();
         }
         cells = [];
         var _loc1_:Number = 72.85;
         var _loc2_:Number = 62.85;
         var _loc3_:uint = §#$R§.§><§;
         var _loc4_:int = 0;
         var _loc5_:int = int(§4#B§.numChildren);
         while(_loc4_ < _loc5_)
         {
            _loc6_ = §4#B§.getChildAt(_loc4_);
            _loc7_ = Math.round(_loc6_.y / _loc2_);
            _loc8_ = Math.round(_loc6_.x / _loc1_);
            _loc9_ = _loc8_ + _loc7_ * _loc3_;
            _loc10_ = §"%F§(_loc6_,_loc9_) as §,%g§;
            _loc10_.§<$3§();
            _loc4_++;
         }
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §,%g§(DisplayObjectContainer(param1));
      }
      
      public function §,&@§() : void
      {
         var _loc1_:§,%g§ = null;
         if(!this.isActive)
         {
            this.isActive = true;
            for each(_loc1_ in cells)
            {
               _loc1_.addEventListener(SelectObjectEvent.NAME,this.§?z§);
               _loc1_.addEventListener(§6$,§.SWAP_ITEM,this.§2$s§);
               _loc1_.addEventListener(§6$,§.GET_ITEM,this.§%%O§);
               _loc1_.addEventListener(§6$,§.PUT_ITEM,this.§]"m§);
               _loc1_.addEventListener(§6$,§.ITEM_MOUSE_MOVE,this.§4%i§);
            }
            this.§'"]§ = null;
            Application.instance.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§0!X§);
         }
      }
      
      public function §7%D§() : void
      {
         var _loc1_:§,%g§ = null;
         if(this.isActive)
         {
            this.isActive = false;
            for each(_loc1_ in cells)
            {
               _loc1_.removeEventListener(SelectObjectEvent.NAME,this.§?z§);
               _loc1_.removeEventListener(§6$,§.SWAP_ITEM,this.§2$s§);
               _loc1_.removeEventListener(§6$,§.GET_ITEM,this.§%%O§);
               _loc1_.removeEventListener(§6$,§.PUT_ITEM,this.§]"m§);
               _loc1_.removeEventListener(§6$,§.ITEM_MOUSE_MOVE,this.§4%i§);
            }
            Application.instance.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0!X§);
         }
      }
      
      private function §%%O§(param1:§6$,§) : void
      {
         dispatchEvent(new §6$,§(§6$,§.GET_ITEM,param1.getItem()));
      }
      
      private function §]"m§(param1:§6$,§) : void
      {
         dispatchEvent(new §6$,§(§6$,§.PUT_ITEM,param1.getItem()));
         §'"=§();
      }
      
      private function §4%i§(param1:§6$,§) : void
      {
         this.§'"]§ = param1.getItem();
      }
      
      private function §?z§(param1:SelectObjectEvent) : void
      {
         §9#e§();
         §1$'§(§,%g§(param1.target).getItem());
      }
      
      private function §2$s§(param1:§6$,§) : void
      {
         dispatchEvent(new §6$,§(§6$,§.SWAP_ITEM,param1.getItem()));
         §'"=§();
      }
      
      private function §0!X§(param1:KeyboardEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:String = String.fromCharCode(param1.charCode).toLowerCase();
         var _loc3_:int = getTimer();
         var _loc4_:int = int(this.§6!H§[param1.keyCode]);
         this.§6!H§[param1.keyCode] = _loc3_;
         if(_loc4_ != 0 && _loc3_ - _loc4_ < §`#3§)
         {
            return;
         }
         if(Boolean(this.§'"]§) && Boolean(this.§'"]§.getItem()))
         {
            _loc5_ = int(this.§'"]§.getItem().getId());
            if(§+!l§.§5w§(_loc5_) != param1.keyCode)
            {
               if(§+!l§.§@$[§(param1.keyCode,this.§'"]§.getItem().getId()))
               {
                  this.§^$d§();
                  _loc6_ = §+!l§.§'!#§.indexOf(param1.keyCode);
                  this.§@"^§(_loc6_);
                  this.§'"]§.§,%Z§(§+!l§.§>#l§[_loc6_]);
                  this.§,&'§[_loc6_] = this.§'"]§;
                  §'"=§();
               }
            }
            else
            {
               §+!l§.§44§(param1.keyCode);
               this.§^$d§();
               §'"=§();
            }
         }
      }
      
      private function §^$d§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,&'§.length)
         {
            if(this.§,&'§[_loc1_] == this.§'"]§)
            {
               this.§@"^§(_loc1_);
            }
            _loc1_++;
         }
      }
      
      private function §@"^§(param1:int) : void
      {
         if(this.§,&'§[param1])
         {
            this.§,&'§[param1].§%"f§();
            this.§,&'§[param1] = null;
         }
      }
      
      public function §<"X§() : void
      {
         var _loc1_:§'"-§ = null;
         var _loc4_:uint = 0;
         var _loc5_:§,%g§ = null;
         _loc1_ = this.profile.§3%^§();
         var _loc2_:Vector.<uint> = _loc1_.§ %7§().getWeapons();
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_ > 0)
            {
               _loc3_.push(§1!S§.§@!&§(_loc4_,_loc1_));
            }
            else
            {
               _loc3_.push(null);
            }
         }
         setData(_loc3_);
         this.update();
         for each(_loc5_ in cells)
         {
            _loc5_.§4!d§().removeHint();
         }
         this.§&f§();
         this.§"x§(this.layoutId);
      }
      
      override public function update() : void
      {
         var _loc1_:§,%g§ = null;
         super.update();
         for each(_loc1_ in cells)
         {
            _loc1_.update();
         }
      }
      
      private function §&f§() : void
      {
         var _loc1_:§,%g§ = null;
         var _loc2_:int = 0;
         var _loc3_:BackpackItem = null;
         var _loc4_:int = 0;
         for each(_loc1_ in this.§,&'§)
         {
            if(_loc1_)
            {
               _loc1_.§%"f§();
            }
         }
         this.§,&'§.length = 0;
         _loc2_ = 0;
         while(_loc2_ < §+!l§.§'!#§.length)
         {
            this.§,&'§[_loc2_] = null;
            _loc2_++;
         }
         if(§4! §.isMe(§@&&§.getProfile()))
         {
            for each(_loc1_ in cells)
            {
               _loc3_ = _loc1_.getItem() as BackpackItem;
               if(_loc3_ != null)
               {
                  _loc4_ = §+!l§.§0$G§(_loc3_.getId());
                  if(_loc4_ >= 0)
                  {
                     this.§,&'§[_loc4_] = _loc1_;
                     _loc1_.§,%Z§(§+!l§.§>#l§[_loc4_]);
                  }
               }
            }
         }
      }
      
      public function §"x§(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:§,%g§ = null;
         var _loc16_:BackpackItem = null;
         var _loc2_:int = 4;
         switch(param1)
         {
            case §#$R§.§"#F§:
               _loc2_ = 1;
               break;
            case §#$R§.§,%h§:
               _loc2_ = 2;
               break;
            case §#$R§.§-%p§:
               _loc2_ = 3;
         }
         var _loc3_:int = int(§#$R§.§5$4§);
         _loc4_ = int(§#$R§.§><§);
         _loc5_ = Math.min(4 + _loc2_,§#$R§.§5$4§);
         _loc6_ = _loc5_ * _loc4_;
         var _loc7_:uint;
         var _loc8_:int = int(_loc7_ = _loc6_ * §;#_§.§+Y§.value);
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         while(_loc11_ < _loc3_)
         {
            _loc12_ = _loc11_ + " line ";
            _loc13_ = 0;
            while(_loc13_ < _loc4_)
            {
               _loc14_ = _loc13_ + _loc4_ * _loc11_;
               _loc15_ = cells[_loc14_];
               _loc16_ = _loc15_.getItem() as BackpackItem;
               if(_loc16_)
               {
                  _loc9_ += _loc16_.getRecord().§9#p§();
                  _loc8_ -= _loc16_.getRecord().§9#p§();
                  if(_loc9_ > _loc7_)
                  {
                     _loc10_++;
                     _loc15_.§+%A§();
                     _loc12_ += _loc14_ + "b, ";
                  }
                  else
                  {
                     _loc15_.§<#z§();
                     _loc12_ += _loc14_ + ", ";
                  }
               }
               else
               {
                  if(_loc9_ > _loc7_ || _loc8_ <= 0)
                  {
                     _loc15_.§+%A§();
                  }
                  else
                  {
                     _loc8_ -= §;#_§.§+Y§.value;
                     _loc15_.§9#4§();
                  }
                  _loc12_ += _loc14_ + "-, ";
               }
               _loc13_++;
            }
            _loc11_++;
         }
      }
      
      public function §4"w§(param1:int) : void
      {
         this.layoutId = param1;
      }
      
      public function §>7§() : int
      {
         return this.layoutId;
      }
   }
}

