package §&&6§
{
   import § "d§.§,!c§;
   import §!%6§.§56§;
   import §!%6§.CyborgGenerator;
   import §"%H§.§'%u§;
   import §#",§.§?§;
   import §#%!§.§%&F§;
   import §%"Z§.§'$2§;
   import §%$!§.§@!o§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&#W§.§?#]§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2#H§.§=#[§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@!i§.§5&4§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'%"§ extends §-"o§
   {
      
      private static const §=$m§:uint = 8500;
      
      private var boss:§+%]§;
      
      private var §+!t§:uint;
      
      private var §<#5§:uint;
      
      private const §%s§:Vector.<§56§> = new Vector.<§56§>();
      
      private const §["r§:Vector.<Point> = new Vector.<Point>();
      
      public function §'%"§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("cyborg.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = null;
         this.§+!t§ = this.§<#5§ = param1[0].getTeamId();
         _loc4_ = new §,!c§(13,1.3,0.9,param1);
         var _loc5_:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         var _loc6_:UserProfile = UserProfile.§'#3§(§0$N§.BOSS_CYBORG_NAME,_loc4_.level * 1.3,Race.§-K§,§=$m§ + 8 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§,20 + _loc4_.level * 2,_loc4_.level * 1.2,§,$O§.BOSS_CYBORG,§]!E§.ROBO_SHIELD);
         var _loc7_:UserProfile = UserProfile.§'#3§(§0$N§.BOSS_CYBORG_MINION_NAME,_loc4_.level * 1.3,Race.§-K§,§=$m§ + 8 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§,15 + _loc4_.level * 1.9,20 + _loc4_.level * 1.4,§,$O§.§]#c§);
         if(§^i§)
         {
            _loc5_.push(new §-!`§(§0$N§.BOSS_CYBORG_NAME,[_loc6_,_loc7_]));
         }
         else
         {
            _loc5_.push(new §-!`§(§0$N§.BOSS_CYBORG_NAME,[_loc6_]),new §-!`§(§0$N§.BOSS_CYBORG_MINION_NAME,[_loc7_]));
         }
         return _loc5_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = param1[0].§1!n§()[0];
         _loc2_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.9),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7),new §>%Q§(§+%z§.BAZOOKA_UPG_1,0.1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.3),new §>%Q§(§+%z§.CANNON_UPG_1,0.2),new §>%Q§(§+%z§.BLIZZARD,0.2),new §>%Q§(§+%z§.ANTITOXIN,0.2,1)]);
         §-#M§.§&"r§(_loc2_);
         this.boss = _loc2_;
         _loc2_ = §^i§ ? param1[0].§1!n§()[1] : param1[1].§1!n§()[0];
         §§push(_loc2_);
         §§push(§§findproperty(§,%8§));
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.6),new §>%Q§(§+%z§.AK_47,0.6),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,0.4),new §>%Q§(§+%z§.SOUL_GUN,0.2),new §>%Q§(§+%z§.BANDAGE,0.2,2),new §>%Q§(§+%z§.ANTITOXIN,0.2,1)]);
         §-#M§.§&"r§(_loc2_);
         super.§+$L§(param1);
         var _loc3_:int = 160;
         var _loc4_:int = 210;
         this.§["r§.push(new Point(260 + _loc3_,739 + _loc4_));
         this.§["r§.push(new Point(1295 + _loc3_,1279 + _loc4_));
         this.§["r§.push(new Point(1049 + _loc3_,923 + _loc4_));
         this.§["r§.push(new Point(2096 + _loc3_,570 + _loc4_));
         this.§["r§.push(new Point(2498 + _loc3_,996 + _loc4_));
      }
      
      override public function §6&§(param1:uint) : void
      {
         this.§<#5§ = currentUnit.squad.getTeamId();
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§56§ = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Point = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:CyborgGenerator = null;
         var _loc8_:Boolean = false;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.§ $n§(-1,-1);
            this.§ $n§(1,-1);
            this.§ $n§(-1,1);
            this.§ $n§(1,1);
            _loc3_ = this.§%s§[0];
            _loc3_.activated(true);
            _loc4_ = §6#A§.§!&6§("InjectorCore");
            Application.scene.addChild(_loc4_);
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            for each(_loc5_ in this.§["r§)
            {
               _loc7_ = new CyborgGenerator(this.boss,_loc5_.x,_loc5_.y);
               _loc7_.clip.rotation = randomSeed.§,!q§(0,360);
            }
            for each(_loc6_ in §4"m§.§6"M§(this.boss))
            {
               _loc6_.buffs.place(new §=#[§());
            }
         }
         if(!§4"m§.§;#l§() && this.§<#5§ != this.§+!t§)
         {
            _loc8_ = false;
            for each(_loc3_ in this.§%s§)
            {
               if(_loc3_.§##m§() == §56§.§8#$§)
               {
                  _loc3_.setState(§56§.§,2§);
               }
               else if(_loc3_.§##m§() == §56§.§5!]§)
               {
                  _loc3_.setState(§56§.§8#$§);
                  _loc8_ = true;
               }
            }
            if(!_loc8_)
            {
               _loc9_ = randomSeed.§,!q§(0,this.§%s§.length - 1);
               _loc10_ = 0;
               while(_loc10_ < this.§%s§.length)
               {
                  if(_loc10_ != _loc9_)
                  {
                     this.§%s§[_loc10_].setState(§56§.§8#$§);
                  }
                  _loc10_++;
               }
            }
         }
      }
      
      private function § $n§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         _loc3_ = Application.scene.width / 2;
         _loc4_ = Application.scene.height / 2;
         _loc5_ = new Point(_loc3_ + param1 * §56§.§>!g§,_loc4_ + param2 * §56§.§>!g§);
         _loc6_ = new Point(_loc5_.x + param1 * _loc3_,_loc5_.y + param2 * _loc4_);
         var _loc7_:§56§ = new §56§(this.boss,_loc5_,_loc6_,param1,param2);
         if(param1 == -1)
         {
            if(param2 == 1)
            {
               _loc7_.clip.scaleX = -1;
               _loc7_.clip.scaleY = -1;
            }
            else
            {
               _loc7_.clip.scaleX = -1;
               _loc7_.clip.scaleY = 1;
            }
         }
         else if(param2 == 1)
         {
            _loc7_.clip.scaleX = 1;
            _loc7_.clip.scaleY = -1;
         }
         else
         {
            _loc7_.clip.scaleX = 1;
            _loc7_.clip.scaleY = 1;
         }
         this.§%s§.push(_loc7_);
      }
   }
}

