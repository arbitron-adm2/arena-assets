package §#%!§
{
   import § !8§.§`!d§;
   import § #m§.§?A§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!$Z§.§6=§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§#%X§;
   import §+%S§.§%!%§;
   import §+%S§.§%#j§;
   import §+%S§.§'%V§;
   import §+%S§.§+m§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §+%S§.§[0§;
   import §0!§.§[k§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §1&-§.§ &=§;
   import §1&-§.§6"`§;
   import §2!-§.§'5§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §3#T§.Mole;
   import §3#a§.§[&A§;
   import §4f§.§-&§;
   import §4u§.§9!]§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §<!W§.§#&#§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§'!=§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §[%U§ implements §?A§
   {
      
      private static const §6%c§:Vector.<String> = new <String>[§'%V§.NAME,§;!4§.NAME,§6"`§.NAME,§=z§.NAME];
      
      §§push(§§findproperty(§4$#§));
      var _temp_13:* = new <String>[§[&;§.NAME,§+N§.NAME,§+m§.NAME,§ !!§.NAME,§%#j§.NAME,§2$#§.NAME,§%!%§.NAME,§ &=§.NAME,§-$s§.NAME,§#%X§.NAME,§#&#§.NAME,§[0§.NAME];
      
      private static const §4$#§:Vector.<String> = new <String>[§[&;§.NAME,§+N§.NAME,§+m§.NAME,§ !!§.NAME,§%#j§.NAME,§2$#§.NAME,§%!%§.NAME,§ &=§.NAME,§-$s§.NAME,§#%X§.NAME,§#&#§.NAME,§[0§.NAME];
      
      private static const §'#N§:Vector.<Bonus> = new <Bonus>[Bonus.AIR_DAMAGE,Bonus.FIRE_DAMAGE,Bonus.FROST_DAMAGE,Bonus.POISON_DAMAGE,Bonus.SHOCK_DAMAGE];
      
      §§push(§§findproperty(§^%=§));
      var _temp_23:* = new <Bonus>[Bonus.AIR_DEFENSE,Bonus.FIRE_DEFENSE,Bonus.FROST_DEFENSE,Bonus.POISON_DEFENSE,Bonus.SHOCK_DEFENSE];
      
      private static const §^%=§:Vector.<Bonus> = new <Bonus>[Bonus.AIR_DEFENSE,Bonus.FIRE_DEFENSE,Bonus.FROST_DEFENSE,Bonus.POISON_DEFENSE,Bonus.SHOCK_DEFENSE];
      
      private var §<"H§:§'!=§;
      
      private var § $0§:MovieClip;
      
      private var §;"$§:MovieClip;
      
      private var §2h§:MovieClip;
      
      private var §1p§:MovieClip;
      
      private var §-%K§:§9!]§;
      
      private var §8$,§:§9!]§;
      
      private var §6&%§:§9!]§;
      
      private var §'%C§:Boolean;
      
      private var stageX:int = 0;
      
      private var stageY:int = 0;
      
      private var indent:int = 0;
      
      private var §`$7§:int = 0;
      
      private var §6#J§:int = 0;
      
      private var §0">§:int;
      
      private var §>$X§:int;
      
      private var §%%#§:int;
      
      private var userName:TextField;
      
      private var levelLabel:TextField;
      
      private var attackLabel:TextField;
      
      private var armorLabel:TextField;
      
      private var raceLabel:TextField;
      
      private var altLabel:TextField;
      
      private var panel:DisplayObject;
      
      private var §"#+§:Vector.<MovieClip>;
      
      private var §#&1§:Vector.<MovieClip>;
      
      private var §^!v§:Boolean;
      
      public function §[%U§(param1:§'!=§)
      {
         super();
         this.§<"H§ = param1;
         this.§"#+§ = new Vector.<MovieClip>(0);
         this.§#&1§ = new Vector.<MovieClip>(0);
         this.§ $0§ = new MovieClip();
         this.§1p§ = new MovieClip();
         this.§2h§ = new MovieClip();
      }
      
      private function §90§() : MovieClip
      {
         var _loc2_:§0!7§ = null;
         var _loc3_:UserProfile = null;
         this.initHint();
         var _loc1_:§+%]§ = this.§<"H§ is §+%]§ ? §+%]§(this.§<"H§) : null;
         if(_loc1_)
         {
            this.userName.text = _loc1_.record.getCharName();
            this.levelLabel.text = _loc1_.record.getLevel().toString();
            this.attackLabel.text = §4! §.§5$b§(_loc1_.attributes.attack);
            this.armorLabel.text = §4! §.§5$b§(_loc1_.attributes.armor);
            this.raceLabel.text = _loc1_.record.getRace().§7%z§();
            this.§-j§(_loc1_);
            if(Application.instance.§#&7§() && §8"%§.§&S§.§'`§())
            {
               this.§ 7§(_loc1_);
            }
         }
         else
         {
            _loc2_ = this.§<"H§ is §0!7§ ? §0!7§(this.§<"H§) : null;
            if(Boolean(_loc2_) && Boolean(_loc2_.getProfile()))
            {
               _loc3_ = _loc2_.getProfile();
               this.userName.text = _loc3_.getCharName();
               this.levelLabel.text = _loc3_.getLevel().toString();
               this.attackLabel.text = §4! §.§@#F§(_loc3_.stats.§'$Q§.value,_loc3_.stats.§>%Y§.value);
               this.armorLabel.text = §4! §.§@#F§(_loc3_.stats.§+#+§.value,_loc3_.stats.§>%v§.value);
               this.raceLabel.text = _loc3_.getRace().§7%z§();
            }
         }
         this.altLabel.visible = !this.§'%C§ && (Boolean(this.§<"H§.§2u§()) || Boolean(this.§<"H§.§+!b§()));
         this.altLabel.y = this.raceLabel.y + this.raceLabel.height + 5 + this.§`$7§ + this.§6#J§;
         this.panel.height = (!this.altLabel.visible ? 115 : 115 + this.altLabel.height + 6) + this.§`$7§ + this.§6#J§;
         this.panel.alpha = _loc1_ ? 0.8 : 1;
         this.§2h§.addChild(this.§;"$§);
         this.§>$X§ = this.§2h§.height;
         if(this.§6&%§)
         {
            this.§6&%§.y = this.panel.height;
         }
         return this.§;"$§;
      }
      
      private function initHint() : void
      {
         if(!this.§;"$§)
         {
            this.§;"$§ = §6#A§.§!&6§(§+"'§.§;!p§);
            this.panel = this.§;"$§.getChildByName("panel");
            this.userName = TextField(this.§;"$§.getChildByName("userName"));
            this.levelLabel = TextField(this.§;"$§.getChildByName("level"));
            this.attackLabel = TextField(this.§;"$§.getChildByName("attack"));
            this.armorLabel = TextField(this.§;"$§.getChildByName("armor"));
            this.raceLabel = TextField(this.§;"$§.getChildByName("race"));
            this.altLabel = TextField(this.§;"$§.getChildByName("altLabel"));
            this.altLabel.autoSize = TextFieldAutoSize.LEFT;
            TextField(this.§;"$§.getChildByName("levelLabel")).text = §0$N§.LEVEL_LABEL;
            TextField(this.§;"$§.getChildByName("attackLabel")).text = §0$N§.ATTACK;
            TextField(this.§;"$§.getChildByName("armorLabel")).text = §0$N§.ARMOR;
            TextField(this.§;"$§.getChildByName("raceLabel")).text = §0$N§.RACE;
            TextField(this.§;"$§.getChildByName("altLabel")).text = §0$N§.PRESS_SHIFT;
         }
      }
      
      private function §-j§(param1:§+%]§) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:MovieClip = null;
         this.§`$7§ = 0;
         for each(_loc2_ in §6%c§)
         {
            §4"N§.§2#+§(param1,_loc2_,this.§"#+§,this.§;"$§);
         }
         for each(_loc3_ in §4$#§)
         {
            §4"N§.§2#+§(param1,_loc3_,this.§"#+§,this.§;"$§);
         }
         if(this.§"#+§.length)
         {
            this.§"#+§.sort(§4"N§.§2#'§);
            _loc4_ = this.raceLabel.y + this.raceLabel.height + 5;
            _loc5_ = 0;
            _loc6_ = -2;
            for each(_loc7_ in this.§"#+§)
            {
               if(_loc7_.visible)
               {
                  _loc5_++;
                  _loc7_.y = _loc4_;
                  _loc4_ += this.raceLabel.height + _loc6_;
               }
            }
            this.§`$7§ = _loc5_ * this.raceLabel.height + (_loc5_ - 1) * _loc6_ + 5;
         }
      }
      
      private function § 7§(param1:§+%]§) : void
      {
         var _loc2_:Bonus = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         this.§6#J§ = 0;
         for each(_loc2_ in §'#N§)
         {
            §4"N§.§<"v§(param1,_loc2_,this.§#&1§,this.§;"$§);
         }
         for each(_loc2_ in §^%=§)
         {
            §4"N§.§<"v§(param1,_loc2_,this.§#&1§,this.§;"$§);
         }
         if(this.§#&1§.length)
         {
            this.§#&1§.sort(§4"N§.§2#'§);
            _loc3_ = this.raceLabel.y + this.raceLabel.height + 5 + this.§`$7§;
            _loc4_ = 0;
            _loc5_ = -2;
            for each(_loc6_ in this.§#&1§)
            {
               if(_loc6_.visible)
               {
                  _loc4_++;
                  _loc6_.y = _loc3_;
                  _loc3_ += this.raceLabel.height + _loc5_;
               }
            }
            this.§6#J§ = _loc4_ * this.raceLabel.height + (_loc4_ - 1) * _loc5_ + 5;
         }
      }
      
      private function §,%>§() : DisplayObject
      {
         var _loc5_:§`!d§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§[!X§ = null;
         this.§0">§ = 0;
         var _loc1_:Number = this.§<"H§ is §+%]§ ? 0.8 : 1;
         var _loc2_:UserProfile = this.§<"H§ is §+%]§ ? §+%]§(this.§<"H§).record : §0!7§(this.§<"H§).getProfile();
         var _loc3_:§^$E§ = this.§<"H§.§2u§();
         if(_loc3_)
         {
            if(!this.§-%K§)
            {
               this.§-%K§ = new §9!]§();
            }
            this.§-%K§.§[!g§ = true;
            this.§-%K§.§ "B§ = this.§^!v§ && Boolean(_loc2_) && §2=§.§9$M§(_loc2_);
            this.§-%K§.initHint(_loc3_);
            this.§-%K§.getChildByName("panel").alpha = _loc1_;
            this.§1p§.addChild(this.§-%K§.getContainer());
            this.§0">§ += MovieClip(this.§-%K§.getContainer()).getChildByName("panel").height;
         }
         var _loc4_:§^%%§ = this.§<"H§.§+!b§();
         if(_loc4_)
         {
            if(!this.§8$,§)
            {
               this.§8$,§ = new §9!]§();
            }
            this.§8$,§.§[!g§ = true;
            this.§8$,§.§ "B§ = this.§^!v§ && Boolean(_loc2_) && §2=§.§9$M§(_loc2_);
            this.§8$,§.initHint(_loc4_);
            this.§8$,§.getContainer().y = 0;
            this.§8$,§.getChildByName("panel").alpha = _loc1_;
            this.§1p§.addChild(this.§8$,§.getContainer());
            this.§0">§ += MovieClip(this.§8$,§.getContainer()).getChildByName("panel").height;
         }
         if(Boolean(_loc4_) && Boolean(_loc3_))
         {
            this.§8$,§.getContainer().y = MovieClip(this.§-%K§.getContainer()).getChildByName("panel").height;
         }
         if(Boolean(_loc4_) || Boolean(_loc3_))
         {
            _loc5_ = this.§<"H§ is §+%]§ ? §+%]§(this.§<"H§).record.getRace() : §0!7§(this.§<"H§).getProfile().getRace();
            _loc6_ = this.§<"H§ is §+%]§ ? §+%]§(this.§<"H§).isRevived() : false;
            _loc7_ = §#&>§.§`#A§(_loc3_,_loc4_,_loc5_,_loc6_);
            if(_loc7_)
            {
               if(!this.§6&%§)
               {
                  this.§6&%§ = new §9!]§();
               }
               this.§6&%§.§[!g§ = true;
               this.§6&%§.§ "B§ = this.§^!v§ && Boolean(_loc2_) && §2=§.§9$M§(_loc2_);
               this.§6&%§.initHint(_loc7_);
               this.§6&%§.getChildByName("panel").alpha = _loc1_;
               this.§2h§.addChild(this.§6&%§.getContainer());
               this.§>$X§ += MovieClip(this.§6&%§.getContainer()).getChildByName("panel").height;
            }
         }
         return this.§1p§;
      }
      
      public function §#$3§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(!this.§ $0§)
         {
            return;
         }
         this.stageX = param1;
         this.stageY = param2;
         this.indent = param3;
         if(param1 + this.§ $0§.width > § "N§.stageWidth)
         {
            this.§1p§.x = 0;
            this.§2h§.x = this.§1p§.width;
         }
         else
         {
            this.§1p§.x = this.§;"$§.width;
            this.§2h§.x = 0;
         }
         if(this.§0">§ > this.§>$X§ && param2 + param3 + this.§%%#§ > § "N§.stageHeight)
         {
            _loc4_ = param2 - param3;
            if(_loc4_ > this.§ $0§.y + this.§>$X§)
            {
               this.§2h§.y = Math.min(_loc4_ - this.§ $0§.y,this.§%%#§ - this.§>$X§);
            }
            else
            {
               this.§2h§.y = 0;
            }
         }
         else
         {
            this.§2h§.y = 0;
         }
      }
      
      public function §&k§() : DisplayObject
      {
         this.§ $0§.removeChildren();
         this.§1p§.removeChildren();
         this.§2h§.removeChildren();
         this.§90§();
         this.§ $0§.addChild(this.§2h§);
         this.§,%>§();
         this.§ $0§.addChild(this.§1p§);
         this.§1p§.visible = this.§'%C§;
         this.§%%#§ = Math.max(this.§0">§,this.§>$X§);
         return this.§ $0§;
      }
      
      public function §,#<§(param1:Boolean) : void
      {
         this.§'%C§ = param1;
         if(Boolean(this.§ $0§) && Boolean(this.§1p§))
         {
            this.§1p§.visible = param1;
            if(this.§6&%§)
            {
               this.§6&%§.setVisible(param1);
            }
         }
         this.§90§();
         this.§%%#§ = Math.max(this.§0">§,this.§>$X§);
         this.§#$3§(this.stageX,this.stageY,this.indent);
      }
      
      public function get §8&C§() : Boolean
      {
         return this.§'%C§;
      }
      
      public function get §7!"§() : int
      {
         return this.§0">§;
      }
      
      public function get §]>§() : int
      {
         return this.§>$X§;
      }
      
      public function get §7!x§() : int
      {
         return this.§%%#§;
      }
      
      public function get §?$V§() : Boolean
      {
         return this.§^!v§;
      }
      
      public function set §?$V§(param1:Boolean) : void
      {
         this.§^!v§ = param1;
      }
   }
}

