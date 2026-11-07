package §?%J§
{
   import § "d§.§,!c§;
   import § %f§.*;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§!#x§;
   import §&#o§.§3#u§;
   import §&#o§.§?!i§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§-$s§;
   import §+%S§.§2!x§;
   import §+%S§.§2$#§;
   import §+%S§.§2&>§;
   import §+%S§.§[`§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-&5§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1&-§.§]%4§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2#H§.§"j§;
   import §2#i§.§+%z§;
   import §3"@§.§#$O§;
   import §3#T§.§5!M§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§&!^§;
   import §4!!§.§2&F§;
   import §4$b§.§2m§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§;$n§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §;$%§.§'%W§;
   import §<$q§.§?!d§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §["3§.§ V§;
   import §[$<§.§;%S§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.Font;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]!J§ extends §-"o§
   {
      
      private static const §-%u§:uint = 4;
      
      private static const §"&8§:Number = 0.35;
      
      private static const §5"r§:uint = 60;
      
      private static const §[#>§:uint = 70;
      
      private static const §,g§:String = "Infection";
      
      private static const §>%o§:String = "BloodRage";
      
      private static const R:int = 73 - 140;
      
      private static const G:int = 166 - 140;
      
      private static const B:int = 96 - 140;
      
      private var symbiote:§+%]§;
      
      private var §]#O§:Boolean = false;
      
      private var dummy:§&"T§;
      
      private var redEyes:MovieClip;
      
      private var §=#Q§:MovieClip;
      
      private var §,"M§:Dictionary = new Dictionary();
      
      private var §"$Y§:uint = 0;
      
      public function §]!J§(param1:Boolean = false)
      {
         super(param1);
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§9!E§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.2,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SYMBIOTE_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SYMBIOTE_NAME"),_loc4_.level,Race.§+#T§,(920 + 4.5 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§) * 0.85,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.BOSS_SYMBIOTE_HELM,§]!E§.BOSS_SYMBIOTE_BIOBLADE,§5%T§.§["§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SYMBIOTE_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SYMBIOTE_NAME"),_loc4_.level,Race.§+#T§,(920 + 4.5 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§) * 0.85,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.BOSS_SYMBIOTE_HELM,§]!E§.BOSS_SYMBIOTE_BIOBLADE,§5%T§.§["§)])];
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A),new §>%Q§(§+%z§.§,!_§,0.8),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)],99);
         §-#M§.§&"r§(param1);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.symbiote = param1[0].§1!n§()[0];
         this.§0!I§(this.symbiote);
         this.symbiote.buffs.place(new §!"t§());
         this.symbiote.buffs.place(new §3#j§());
         this.symbiote.addEventListener(§0%v§.§&!D§,this.§'$R§,false,§[!F§.§##c§);
         this.symbiote.addEventListener(§0%v§.§&!D§,this.§+$§);
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§3#F§);
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.§3#F§();
            _loc3_ = this.symbiote.graphics.§6%z§().hatClip;
            _loc4_ = MovieClip(this.symbiote.graphics.§"?§().getChildByName(_loc3_));
            this.redEyes = MovieClip(DisplayObjectContainer(_loc4_.getChildAt(0)).getChildByName("redEyes"));
            this.§=#Q§ = §6#A§.§!&6§(§>%o§);
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(currentUnit == this.symbiote && !this.symbiote.disposed)
         {
            this.§0$,§();
         }
         if(this.redEyes.visible && currentUnit != this.symbiote)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(this.symbiote);
            for each(_loc3_ in _loc2_)
            {
               this.§?p§(_loc3_);
            }
            this.§9"X§(false);
         }
      }
      
      private function §3#F§(param1:NewUnitEvent = null) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(!param1)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(this.symbiote);
            for each(_loc3_ in _loc2_)
            {
               this.§ $G§(_loc3_);
            }
         }
         else if(!param1.unit.disposed)
         {
            this.§ $G§(param1.unit);
         }
      }
      
      private function § $G§(param1:§+%]§) : void
      {
         param1.addEventListener(§0%v§.§&!D§,this.§<#H§);
         this.§,"M§[param1] = §6#A§.§!&6§(§,g§);
         param1.graphics.§5$#§(§2m§.§-w§,this.§,"M§[param1]);
         param1.graphics.colorTransform(R,G,B);
      }
      
      private function §9"X§(param1:Boolean) : void
      {
         this.redEyes.visible = param1;
         if(param1)
         {
            this.symbiote.graphics.§5$#§(§2m§.§-w§,this.§=#Q§);
         }
         else
         {
            this.symbiote.graphics.detachClip(this.§=#Q§,§2m§.§-w§);
         }
      }
      
      private function §?p§(param1:§+%]§) : void
      {
         var _loc2_:Point = null;
         if(!this.symbiote.disposed)
         {
            _loc2_ = new Point(param1.x,param1.y);
            §'"$§.§]#I§(this.symbiote,this.symbiote.x,this.symbiote.y,param1,§5"r§,0,0,false,true);
            new §2&F§(null,_loc2_.x,_loc2_.y,this.symbiote,§5"r§,false,10027008,10027008);
         }
      }
      
      private function §0$,§() : void
      {
         var _loc3_:Vector.<§&"T§> = null;
         var _loc4_:uint = 0;
         var _loc5_:Point = null;
         var _loc6_:uint = 0;
         var _loc7_:§+%]§ = null;
         var _loc8_:§&!^§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.symbiote);
         var _loc2_:uint = this.§]#O§ ? §-%u§ : _loc1_.length;
         if(_loc2_ > 0)
         {
            _loc3_ = new Vector.<§&"T§>();
            this.dummy = Application.scene.§,$z§();
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               do
               {
                  _loc5_ = §-#M§.§,#e§();
                  if(!_loc5_)
                  {
                     _loc5_ = §-#M§.§,#e§(55,false,20,false);
                  }
               }
               while(_loc6_ = §<H§.§3%'§(_loc5_.x,_loc5_.y,§[#>§,_loc3_).length, _loc6_ > 0);
               _loc3_[_loc4_] = new §&"T§();
               _loc3_[_loc4_].x = _loc5_.x;
               _loc3_[_loc4_].y = _loc5_.y;
               if(_loc5_)
               {
                  _loc7_ = this.§]#O§ ? this.symbiote : _loc1_[_loc4_];
                  _loc8_ = new §&!^§(_loc7_,_loc7_.x,_loc7_.y + 10,true,_loc5_,3368499,3368499,40);
                  _loc8_.addEventListener(§0%v§.DISPOSED,this.§9!a§);
                  ++this.§"$Y§;
               }
               _loc4_++;
            }
         }
      }
      
      private function §9!a§(param1:Event) : void
      {
         var _loc2_:Class = null;
         if(!Application.scene.§@$I§.§=%d§())
         {
            param1.currentTarget.removeEventListener(§0%v§.DISPOSED,this.§9!a§);
            _loc2_ = this.§]#O§ ? §3#u§ : §?!i§;
            new _loc2_(this.symbiote,param1.currentTarget.target.x,param1.currentTarget.target.y);
            if(this.§"$Y§ > 0)
            {
               if(--this.§"$Y§ == 0)
               {
                  this.dummy.disposed = true;
               }
            }
         }
      }
      
      private function §<#H§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.source.owner != this.symbiote)
         {
            _loc2_ = §+%]§(param1.victim);
            _loc3_ = this.symbiote.attributes.hp.§#&"§() * §"&8§;
            _loc4_ = Math.min(Math.abs(this.symbiote.hp - _loc3_),param1.power,_loc2_.hp);
            if(!_loc2_.buffs.hasBuff(§2&>§.NAME))
            {
               if(_loc2_.attributes.hp.§?!H§)
               {
                  _loc4_ = Math.ceil(_loc2_.attributes.hp.§?!H§ ? §]%4§.§;&D§ * param1.power : param1.power);
               }
               §'"$§.§]#I§(this.symbiote,this.symbiote.x,this.symbiote.y,this.symbiote,_loc4_,0,0,true,true);
            }
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         if(!this.§]#O§ && param1.source.owner != this.symbiote)
         {
            §2!H§.§'!i§("(" + int(param1.power) + ")",§2!H§.§?$!§,this.symbiote.x + this.symbiote.width * 0.5,this.symbiote.y + this.symbiote.height * 0.5,20);
            param1.power = 0;
         }
      }
      
      private function §+$§(param1:DamageEvent) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(!this.§]#O§ && this.symbiote.attributes.hp.§9"H§() <= §"&8§)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(this.symbiote);
            for each(_loc3_ in _loc2_)
            {
               _loc3_.removeEventListener(§0%v§.§&!D§,this.§<#H§);
               _loc3_.graphics.detachClip(this.§,"M§[_loc3_],§2m§.§-w§);
               _loc3_.graphics.colorTransform(-R,-G,-B);
               §1"-§.explode(§;n§.§8%a§,_loc3_.x,_loc3_.y,25);
               this.symbiote.removeEventListener(§0%v§.§&!D§,this.§'$R§);
            }
            this.§]#O§ = true;
         }
         if(this.§]#O§ && !this.redEyes.visible)
         {
            this.§9"X§(true);
         }
      }
      
      override public function clear() : void
      {
         this.symbiote.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         this.symbiote.removeEventListener(§0%v§.§&!D§,this.§+$§);
         this.symbiote = null;
      }
   }
}

