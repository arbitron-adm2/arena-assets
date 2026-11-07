package §&&6§
{
   import § "L§.*;
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.§-!6§;
   import §2!-§.DamageEvent;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4^§.§4!w§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=7§.*;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §[$P§.§>%a§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3"q§ extends §-"o§
   {
      
      private static const point01:Point = new Point(2247.2,336.15);
      
      private static const point02:Point = new Point(2415.1,401.8);
      
      private static const point03:Point = new Point(2415.1,655.25);
      
      private static const point04:Point = new Point(2261.2,749.7);
      
      private static const point05:Point = new Point(1979.3,749.7);
      
      private static const point06:Point = new Point(1849.1,925.6);
      
      private static const point10:Point = new Point(2375.15,1065.55);
      
      private static const point11:Point = new Point(2299.15,1223.5);
      
      private static const point12:Point = new Point(2057.25,1255.5);
      
      private static const point13:Point = new Point(1797.35,1203.5);
      
      private static const point14:Point = new Point(1588.5,1151.05);
      
      private static const point20:Point = new Point(1205.55,871.65);
      
      private static const point21:Point = new Point(1287.8,669.7);
      
      private static const point22:Point = new Point(1491.45,619.4);
      
      private static const point23:Point = new Point(1597.4,509.45);
      
      private static const point30:Point = new Point(493.8,467.8);
      
      private static const point31:Point = new Point(293.9,663.9);
      
      private static const point32:Point = new Point(257.9,881.65);
      
      private static const point33:Point = new Point(293.9,1269.5);
      
      private static const point34:Point = new Point(585.8,1275.5);
      
      private static const point35:Point = new Point(789.7,1145.1);
      
      private static const point36:Point = new Point(1049.6,925.6);
      
      private static const point37:Point = new Point(1205.55,1029.55);
      
      private var boss:§+%]§;
      
      private var §>%e§:Array = [];
      
      private var §'%5§:Vector.<§&!E§>;
      
      private var §>#p§:Object = {};
      
      private var alertId:uint;
      
      public function §3"q§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("jarl.swf");
      }
      
      private static function §8&=§(param1:§,!c§, param2:Race, param3:uint) : UserProfile
      {
         return UserProfile.§'#3§(§0$N§.§<N§("BOSS_JARL_HELPER_NAME"),param1.level * 0.8,param2,300 + 4 * param1.§?"-§ + 20 * param1.§3"`§,param1.level * 0.9,param1.level * 1.4,param3,§]!E§.JARL_STONE_HAMMER);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.5,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_JARL_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_JARL_NAME"),_loc4_.level * 0.9,Race.§ "w§,400 + _loc4_.level * 30,_loc4_.level * 0.95,_loc4_.level * 1.6,§,$O§.BOSS_JARL_HELM,§]!E§.BOSS_JARL_SPEAR)]),new §-!`§(§0$N§.§<N§("BOSS_JARL_HELPER_TEAM"),[§8&=§(_loc4_,Race.§+#T§,§,$O§.§`%T§),§8&=§(_loc4_,Race.§1"^§,§,$O§.§,$5§),§8&=§(_loc4_,Race.§+&8§,§,$O§.§%!>§),§8&=§(_loc4_,Race.§#%V§,§,$O§.§?&G§)])];
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_JARL_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_JARL_NAME"),_loc4_.level * 0.9,Race.§ "w§,400 + _loc4_.level * 30,_loc4_.level * 0.95,_loc4_.level * 1.6,§,$O§.BOSS_JARL_HELM,§]!E§.BOSS_JARL_SPEAR)]),new §-!`§(§0$N§.§<N§("BOSS_JARL_HELPER_TEAM"),[§8&=§(_loc4_,Race.§+#T§,§,$O§.§`%T§),§8&=§(_loc4_,Race.§1"^§,§,$O§.§,$5§),§8&=§(_loc4_,Race.§+&8§,§,$O§.§%!>§),§8&=§(_loc4_,Race.§#%V§,§,$O§.§?&G§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_JARL_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_JARL_NAME"),_loc4_.level * 0.9,Race.§ "w§,400 + _loc4_.level * 30,_loc4_.level * 0.95,_loc4_.level * 1.6,§,$O§.BOSS_JARL_HELM,§]!E§.BOSS_JARL_SPEAR)]),new §-!`§(§0$N§.§<N§("BOSS_JARL_HELPER_TEAM"),[§8&=§(_loc4_,Race.§+#T§,§,$O§.§`%T§),§8&=§(_loc4_,Race.§1"^§,§,$O§.§,$5§),§8&=§(_loc4_,Race.§+&8§,§,$O§.§%!>§),§8&=§(_loc4_,Race.§#%V§,§,$O§.§?&G§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc4_:§+%]§ = null;
         this.boss = param1[0].§1!n§()[0];
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.3),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.BLIZZARD,0.2),new §>%Q§(§+%z§.BANDAGE,0.2,2)]);
         var _loc2_:§!%C§ = new §!%C§();
         this.boss.buffs.place(_loc2_);
         _loc2_.charge();
         §-#M§.§&"r§(this.boss);
         var _loc3_:Vector.<§+%]§> = param1[1].§1!n§();
         for each(_loc4_ in _loc3_)
         {
            §§push(_loc4_);
            §§push(§§findproperty(§,%8§));
            var _temp_13:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.AK_47,0.6),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,0.4),new §>%Q§(§+%z§.SOUL_GUN,0.2),new §>%Q§(§+%z§.BANDAGE,0.2,1),new §>%Q§(§+%z§.ANTITOXIN,0.2,1)];
            §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.AK_47,0.6),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,0.4),new §>%Q§(§+%z§.SOUL_GUN,0.2),new §>%Q§(§+%z§.BANDAGE,0.2,1),new §>%Q§(§+%z§.ANTITOXIN,0.2,1)]);
            §-#M§.§&"r§(_loc4_);
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§8%U§ = null;
         var _loc4_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:§!%C§ = null;
         var _loc12_:Vector.<§&!E§> = null;
         var _loc13_:§8%U§ = null;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            _loc4_ = [§4!w§.§0%;§,§4!w§.FIRE,§4!w§.POISON,§4!w§.§=$-§];
            _loc5_ = 0;
            _loc6_ = §8"%§.§?!W§.§4"m§.§="T§(this.boss);
            for each(_loc7_ in _loc6_)
            {
               _loc11_ = new §!%C§();
               _loc7_.buffs.addValue(_loc11_);
               _loc12_ = _loc4_[_loc5_];
               _loc11_.§]O§(_loc12_);
               this.§>#p§[_loc7_] = _loc12_;
               _loc5_++;
            }
            _loc8_ = [[point01,point02,point03,point04,point05,point06],[point10,point11,point12,point13,point14],[point20,point21,point22,point23],[point30,point31,point32,point33,point34,point35,point36,point37]];
            _loc9_ = §""L§.§6$6§(_loc4_,randomSeed);
            for each(_loc10_ in _loc8_)
            {
               _loc13_ = new §8%U§(this.boss,_loc10_,_loc9_.pop());
               _loc13_.addEventListener(§-!6§.§4#"§,this.§4#b§);
               this.§>%e§.push(_loc13_);
            }
         }
         for each(_loc3_ in this.§>%e§)
         {
            _loc3_.§4"7§(!§4"m§.§;#l§());
         }
      }
      
      private function §4#b§(param1:§-!6§) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:§8%U§ = null;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc6_:§!%C§ = null;
         var _loc2_:§8%U§ = §8%U§(param1.currentTarget);
         if(!this.§'%5§)
         {
            for each(_loc4_ in this.§>%e§)
            {
               if(!_loc4_.isActive())
               {
                  _loc4_.setActive(true);
               }
            }
            this.§'%5§ = _loc2_.§[$G§();
            _loc2_.setActive(false);
            _loc5_ = §4"m§.§="T§(this.boss,false,true);
            for each(_loc3_ in _loc5_)
            {
               _loc6_ = _loc3_.buffs.getBuff(§!%C§.NAME) as §!%C§;
               _loc6_.§5!k§(this.§'%5§);
            }
            this.§1"=§();
         }
         else
         {
            _loc3_ = param1.§0#^§();
            §'"$§.§]#I§(null,_loc3_.x,_loc3_.y,_loc3_,100,§<H§.§,%P§,1,false);
         }
      }
      
      private function §1"=§() : void
      {
         var _loc1_:String = §4!w§.§!"n§(this.§'%5§);
         var _loc2_:String = §4!w§.§+"8§(this.§'%5§);
         this.alertId = Application.scene.§7#o§.§1"§.§<#-§(_loc1_,_loc2_);
      }
      
      private function §9%?§() : void
      {
         Application.scene.§7#o§.§1"§.§]& §(this.alertId);
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:§!%C§ = null;
         if(§4"m§.§;#l§())
         {
            this.§'%5§ = null;
            _loc2_ = §8"%§.§?!W§.§4"m§.§="T§(this.boss,false,true);
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = _loc3_.buffs.getBuff(§!%C§.NAME) as §!%C§;
               if(_loc3_ == this.boss)
               {
                  _loc4_.charge();
               }
               else
               {
                  _loc4_.§0%w§();
                  _loc4_.§]O§(this.§>#p§[_loc3_]);
               }
            }
            this.§9%?§();
         }
      }
   }
}

