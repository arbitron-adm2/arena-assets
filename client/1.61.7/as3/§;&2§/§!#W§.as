package §;&2§
{
   import § "L§.GrenadeTurret;
   import § "L§.RocketTurret;
   import § #m§.§;#^§;
   import § $q§.§-%f§;
   import § &5§.§!$#§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§3%b§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§%$m§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.*;
   import §&x§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+"m§.ElectricSurface;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§%#j§;
   import §+%S§.§?3§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §1%H§.§!"=§;
   import §2!-§.DamageEvent;
   import §2!-§.GameObjectDisposed;
   import §2!-§.NextTurnEvent;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3#a§.§!$6§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§=!?§;
   import §7$1§.StickyMine;
   import §7$t§.§=?§;
   import §8$Z§.*;
   import §8%k§.§^%O§;
   import §<!^§.§]#u§;
   import §<$q§.§6%b§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@"s§.§#&3§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §]$J§.§#"s§;
   import §]$v§.§+%n§;
   import §]$v§.§1>§;
   import §^!]§.MineActivateEvent;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^§.*;
   import §`"p§.*;
   import §`#x§.*;
   import §`v§.§2&H§;
   import com.adobe.serialization.json.JSONEncoder;
   import com.greensock.*;
   import com.greensock.easing.Circ;
   import com.greensock.plugins.*;
   import config.§;"I§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§1W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §!#W§ extends §^%O§
   {
      
      private static const §7#?§:String = "electricSurface";
      
      private static const STICKY_MINE:String = "stickyMine";
      
      private static const §!$c§:String = "Sphere";
      
      private static const §&%r§:String = "rockets";
      
      private static const §2$M§:String = "grenades";
      
      private static const §5"[§:String = "spiders";
      
      private static const §1#S§:int = 3;
      
      private static const §3"Z§:Array = ["SpaceRaceSphere1","SpaceRaceSphere2"];
      
      protected var §4#j§:Number = 0;
      
      protected var §7%B§:Number = 0;
      
      protected var §`& §:Number = 0;
      
      protected var §%%"§:Number = 0;
      
      public var §>e§:int = §1#S§;
      
      protected var §=!=§:Vector.<§@#%§>;
      
      private var §9$y§:int = 0;
      
      public function §!#W§()
      {
         super();
      }
      
      override public function §+$L§() : void
      {
         super.§+$L§();
         this.§4@§();
         this.§!"g§();
      }
      
      protected function §4@§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Point = null;
         var _loc10_:String = null;
         var _loc11_:§=!?§ = null;
         _loc1_ = §6#A§.§!&6§(Application.scene.§^$'§().className);
         var _loc2_:MovieClip = MovieClip(_loc1_.getChildByName("helpers"));
         var _loc3_:§5$n§ = §<$c§.§ !=§(§+%z§.STICKY_MINE).§<$4§.clone();
         var _loc4_:§9$Z§ = Application.scene.§^$'§();
         var _loc7_:int = 0;
         while(_loc7_ < _loc2_.numChildren)
         {
            _loc10_ = _loc2_.getChildAt(_loc7_).name;
            if(_loc10_.indexOf(§7#?§) != -1)
            {
               if(§!$6§.§;$b§(this.§4#j§))
               {
                  _loc6_ = §3%b§.§"!F§(_loc2_,_loc7_,_loc4_);
                  this.§'"1§(_loc6_,_loc10_);
               }
            }
            else if(_loc10_.indexOf(STICKY_MINE) != -1)
            {
               if(§!$6§.§;$b§(this.§`& §))
               {
                  _loc6_ = §3%b§.§"!F§(_loc2_,_loc7_,_loc4_);
                  this.§1!I§(_loc6_.x,_loc6_.y,_loc3_,_loc10_);
               }
            }
            else if(_loc10_.indexOf(§2$M§) != -1)
            {
               _loc6_ = §3%b§.§"!F§(_loc2_,_loc7_,_loc4_);
               _loc5_ = §!$6§.§`&§(_loc2_,_loc7_);
               this.§4&0§(_loc6_,_loc10_,_loc5_);
            }
            else if(_loc10_.indexOf(§&%r§) != -1)
            {
               _loc6_ = §3%b§.§"!F§(_loc2_,_loc7_,_loc4_);
               _loc5_ = §!$6§.§`&§(_loc2_,_loc7_);
               this.§#"S§(_loc6_,_loc10_,_loc5_);
            }
            else if(_loc10_.indexOf(§5"[§) != -1)
            {
               _loc6_ = §3%b§.§"!F§(_loc2_,_loc7_,_loc4_);
               this.§&7§(_loc6_,_loc10_);
            }
            else if(_loc10_.indexOf(§!$c§) != -1)
            {
               _loc6_ = §3%b§.§"!F§(_loc2_,_loc7_,_loc4_);
               this.§>#e§(_loc6_,_loc10_,_loc3_);
            }
            _loc7_++;
         }
         var _loc8_:§5$n§ = §<$c§.§ !=§(§+%z§.GUARDING_BOT).§<$4§.clone();
         var _loc9_:Array = Application.scene.§^$'§().§0$D§;
         for each(_loc6_ in _loc9_)
         {
            _loc11_ = new §=!?§(null,_loc6_.x,_loc6_.y,_loc8_,false);
            _loc11_.§'%y§ = false;
         }
      }
      
      protected function §!"g§() : void
      {
      }
      
      private function §&7§(param1:Point, param2:String) : §#&3§
      {
         return new §#&3§(null,param1.x,param1.y - §#&3§.§`!`§);
      }
      
      private function §'"1§(param1:Point, param2:String) : ElectricSurface
      {
         var _loc3_:Boolean = param2.indexOf("H") != -1;
         return new ElectricSurface(param1.x,param1.y,_loc3_ ? 160 : 110,_loc3_ ? 0 : 90);
      }
      
      private function §4&0§(param1:Point, param2:String, param3:MovieClip) : GrenadeTurret
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:Point = null;
         _loc4_ = param3.getChildByName("base");
         _loc5_ = param3.getChildByName("trigger");
         _loc6_ = new Point(param1.x + _loc5_.x,param1.y + _loc5_.y);
         var _loc7_:Point = new Point(_loc6_.x + _loc5_.width,_loc6_.y + _loc5_.height);
         var _loc8_:int = param1.x + _loc4_.x;
         var _loc9_:int = param1.y + _loc4_.y;
         return new GrenadeTurret(_loc8_,_loc9_,_loc6_,_loc7_);
      }
      
      private function §#"S§(param1:Point, param2:String, param3:MovieClip) : RocketTurret
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:Point = null;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         _loc4_ = param3.getChildByName("base");
         _loc5_ = param3.getChildByName("trigger");
         _loc6_ = new Point(param1.x + _loc5_.x,param1.y + _loc5_.y);
         var _loc7_:Point = new Point(_loc6_.x + _loc5_.width,_loc6_.y + _loc5_.height);
         var _loc8_:int = param1.x + _loc4_.x;
         var _loc9_:int = param1.y + _loc4_.y;
         var _loc10_:§%$m§ = new §%$m§(1,0,§8"%§.randomSeed.§,!q§(30,60),§8"%§.randomSeed.§,!q§(0,15));
         var _loc11_:Array = param2.split("_");
         _loc10_.§`#M§ = param2.indexOf("_RPV") != -1;
         _loc10_.§%#0§ = param2.indexOf("_RPPW") != -1;
         _loc10_.useGravity = param2.indexOf("_G") != -1;
         if(param2.indexOf("_POW") != -1)
         {
            for each(_loc12_ in _loc11_)
            {
               if(_loc12_.indexOf("POW") == 0)
               {
                  break;
               }
            }
            _loc12_ = _loc12_.replace("POW","");
            _loc10_.power = §8"%§.randomSeed.§,!q§(_loc12_.split("$")[0],_loc12_.split("$")[1]);
         }
         if(param2.indexOf("_FWD") != -1)
         {
            for each(_loc12_ in _loc11_)
            {
               if(_loc12_.indexOf("FWD") == 0)
               {
                  break;
               }
            }
            _loc12_ = _loc12_.replace("FWD","");
            _loc10_.§-#E§ = §8"%§.randomSeed.§,!q§(_loc12_.split("$")[0],_loc12_.split("$")[1]);
         }
         if(param2.indexOf("_RWD") != -1)
         {
            for each(_loc12_ in _loc11_)
            {
               if(_loc12_.indexOf("RWD") == 0)
               {
                  break;
               }
            }
            _loc12_ = _loc12_.replace("RWD","");
            _loc10_.§&#H§ = §8"%§.randomSeed.§,!q§(_loc12_.split("$")[0],_loc12_.split("$")[1]);
         }
         if(param2.indexOf("_DEG") != -1)
         {
            for each(_loc12_ in _loc11_)
            {
               if(_loc12_.indexOf("DEG") == 0)
               {
                  break;
               }
            }
            _loc12_ = _loc12_.replace("DEG","");
            _loc10_.angle = §-q§.§7%8§(int(_loc12_));
         }
         if(_loc11_[0].indexOf("L") != -1)
         {
            _loc13_ = 270;
         }
         else if(_loc11_[0].indexOf("R") != -1)
         {
            _loc13_ = 90;
         }
         else if(_loc11_[0].indexOf("U") != -1)
         {
            _loc13_ = 0;
         }
         else if(_loc11_[0].indexOf("D") != -1)
         {
            _loc13_ = 180;
         }
         return new RocketTurret(_loc8_,_loc9_,_loc6_,_loc7_,_loc10_,_loc13_);
      }
      
      protected function §>#e§(param1:Point, param2:String, param3:§5$n§) : Object
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         _loc4_ = §3"Z§[int(§8"%§.randomSeed.§,!q§(0,§3"Z§.length - 1))];
         _loc5_ = §6#A§.§!&6§(_loc4_);
         var _loc6_:int = _loc5_.height >> 1;
         if(param2.indexOf("Small") != -1)
         {
            _loc5_.height = _loc5_.width = _loc6_;
         }
         _loc5_.rotation = §8"%§.randomSeed.§,!q§(0,360);
         param1.x += §8"%§.randomSeed.§,!q§(0,_loc6_) * §-q§.§4&8§();
         param1.y += §8"%§.randomSeed.§,!q§(0,_loc6_) * §-q§.§4&8§();
         Application.scene.§+!K§(_loc5_,param1.x,param1.y,true);
         if(§8"%§.randomSeed.§]#W§(0,0) < this.§7%B§)
         {
            this.§"%N§(param1.x,param1.y,_loc5_.height >> 1,param3);
         }
         return {
            "clip":_loc5_,
            "hh":_loc6_
         };
      }
      
      protected function §1!I§(param1:int, param2:int, param3:§5$n§, param4:String = "") : StickyMine
      {
         var _loc5_:StickyMine = new StickyMine(null,param1,param2,param3);
         _loc5_.§1#I§(new §&$2§(this.§%%"§));
         _loc5_.§'%y§ = false;
         _loc5_.canBeDamaged = false;
         _loc5_.addEventListener(§0%v§.MINE_ACTIVATE,this.§4$;§);
         if(param4.indexOf("Left") != -1)
         {
            _loc5_.setSpeedXY(-100,0);
         }
         else if(param4.indexOf("Right") != -1)
         {
            _loc5_.setSpeedXY(100,0);
         }
         else if(param4.indexOf("Up") != -1)
         {
            _loc5_.setSpeedXY(0,-100);
         }
         else if(param4.indexOf("Down") != -1)
         {
            _loc5_.setSpeedXY(0,10);
         }
         return _loc5_;
      }
      
      private function §4$;§(param1:MineActivateEvent) : void
      {
         var _loc2_:StickyMine = StickyMine(param1.mine);
         _loc2_.removeEventListener(§0%v§.MINE_ACTIVATE,this.§4$;§);
         if(Boolean(param1.triggered) && Boolean(_loc2_.§]N§()) && _loc2_.§]N§().squad.isLocal())
         {
            ++this.§9$y§;
         }
      }
      
      protected function §"%N§(param1:int, param2:int, param3:int, param4:§5$n§) : void
      {
         var _loc5_:Number = NaN;
         _loc5_ = §8"%§.randomSeed.§]#W§(-Math.PI,Math.PI);
         var _loc6_:Point = §-q§.§2!B§(param3,_loc5_);
         this.§1!I§(param1 + _loc6_.x,param2 + _loc6_.y,param4).setSpeedXY(-_loc6_.x,-_loc6_.y);
      }
      
      public function getResources() : Vector.<§@#%§>
      {
         return this.§=!=§;
      }
      
      public function §`!l§() : int
      {
         return this.§9$y§;
      }
   }
}

