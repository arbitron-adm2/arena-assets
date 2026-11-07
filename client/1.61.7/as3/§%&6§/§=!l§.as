package §%&6§
{
   import § !8§.§`!d§;
   import § "L§.RocketTurret;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&!m§.§-$6§;
   import §&"c§.§%$m§;
   import §&"c§.§5$n§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+%S§.§"!q§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#x§.§0"`§;
   import §3#a§.§-#M§;
   import §4!!§.§ %c§;
   import §4#`§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §;&2§.*;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.*;
   
   public class §=!l§ extends §8!`§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      protected static const §9& §:uint = 40;
      
      protected static const §!"@§:uint = 250;
      
      protected static const §##C§:uint = 25;
      
      private static const §8!T§:String = "AirBlockerIdle";
      
      private static const § &G§:§&$2§ = new §&$2§(10);
      
      protected static const §@;§:uint = 5;
      
      protected var radius:uint = 250;
      
      protected var active:Boolean = false;
      
      protected var §,!o§:Class = §"!q§;
      
      protected var §7!o§:String;
      
      private var anim:DisplayObject;
      
      public function §=!l§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:String = "")
      {
         super(param1,param2,param3,param4,§ &G§);
         this.§7!o§ = param5 || §+"'§.§;"y§;
         §!"-§(§8!T§);
         Application.scene.addEventListener(§0%v§.SOT,this.§@$'§);
         §@%;§.play(§`!v§.§7#O§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.active && stable && Application.scene.§@$I§.§<#[§() % §@;§ == 0)
         {
            this.checkTargets();
         }
      }
      
      protected function checkTargets() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(x,y,this.radius,_loc1_);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc3_.stable && !_loc3_.buffs.hasBuff(§"!q§.NAME))
            {
               _loc3_.buffs.place(new this.§,!o§(this,owner,new Point(x,y),this.radius,§9& §,paramSet.damage.value,this.§7!o§));
            }
         }
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:int = 0;
         §1$^§(§=!l§);
         super.onCollide(param1);
         if(!this.anim)
         {
            _loc2_ = §5%8§.§+#_§(owner.squad.getNumber());
            this.anim = clip.getChildByName("anim" + _loc2_);
            if(!this.anim)
            {
               this.anim = clip.getChildByName("anim1");
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§@$'§);
         if(!Application.scene.§@$I§.§=%d§())
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.buffs.hasBuff(§"!q§.NAME))
               {
                  _loc3_.buffs.§6C§(§"!q§.NAME);
               }
            }
         }
         super.§[$u§(param1);
      }
      
      protected function §@$'§(param1:Event) : void
      {
         if(!disposed)
         {
            this.radius += §##C§;
            if(§8"%§.§?!W§.§4"m§.activeUnit.squad.getTeamId() != owner.squad.getTeamId())
            {
               this.active = true;
               this.anim.visible = true;
               §@%;§.play(§`!v§.§@"6§);
            }
            else
            {
               this.active = false;
               this.anim.visible = false;
            }
         }
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:§ %c§ = null;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && !disposed)
         {
            _loc2_ = param1.source.owner;
            if(_loc2_.squad.getTeamId() != owner.squad.getTeamId())
            {
               if(§-q§.distance(x,y,_loc2_.x,_loc2_.y) < §<H§.§@k§ * 2)
               {
                  §"!q§.§0"4§(this,owner,_loc2_,paramSet.damage.value);
               }
               else
               {
                  _loc3_ = 30;
                  _loc4_ = 340;
                  _loc5_ = new § %c§(owner,x,y,_loc2_,paramSet.damage.value,_loc3_);
                  _loc5_.§^"F§(-PI_HALF,_loc3_);
                  _loc5_.§?"=§(_loc4_);
               }
            }
         }
         disposed = true;
      }
   }
}

