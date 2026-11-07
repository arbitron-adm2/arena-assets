package §5$p§
{
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§8"@§;
   import §#%!§.§[N§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§?#S§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §9"-§.§?!s§;
   import §<%k§.§`!v§;
   import §@!N§.§-!Y§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.Rope;
   import §`%&§.§5$1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import org.gestouch.core.*;
   import org.gestouch.gestures.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §4&$§ extends §&"T§
   {
      
      private var ground:MovieClip;
      
      private var victim:§+%]§;
      
      private var owner:§+%]§;
      
      private var damage:uint;
      
      public function §4&$§(param1:§+%]§, param2:§+%]§, param3:Number, param4:Number, param5:uint)
      {
         super();
         this.victim = param2;
         this.damage = param5;
         this.owner = param1;
         canBeDamaged = true;
         param2.buffs.addValue(new §?#S§());
         this.x = param3;
         this.y = param4;
         this.ground = §6#A§.§!&6§("ArchidemonCage");
         clip = §6#A§.§!&6§("CageDamage");
         stable = true;
         §<H§.§"%8§(param2,param3,param4);
         if(!param2.disposed)
         {
            param2.setSpeedXY(0,-5);
         }
         var _loc6_:int = -58;
         var _loc7_:int = -72;
         Application.scene.§+!K§(this.ground,param3 + _loc6_,param4 + _loc7_);
         addEventListener(§0%v§.§&!D§,this.§?$u§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(Boolean(param1.source.owner) && (param1.source.owner == this.victim || param1.source.owner.squad.isAi()))
         {
            this.inflictDamage();
         }
         disposed = true;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed)
         {
            if(!this.victim.disposed)
            {
               if(§-q§.distance(x,y,this.victim.x,this.victim.y) >= 100)
               {
                  disposed = true;
               }
            }
            else
            {
               disposed = true;
            }
         }
      }
      
      private function inflictDamage() : void
      {
         §-#M§.§<$$§(x,y,this.victim,this.damage);
         §'"$§.§]#I§(null,this.victim.x,this.victim.y,this.victim,this.damage,16,8,false,false,§&!E§.FIRE);
         if(!this.victim.disposed)
         {
            this.victim.setSpeedXY(0,-5);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc3_:§&"T§ = null;
         Application.scene.§,#[§(this.ground);
         if(this.victim)
         {
            this.victim.buffs.§6C§(§?#S§.NAME);
            if(!this.victim.disposed)
            {
               this.victim.stable = false;
            }
         }
         this.ground = null;
         this.victim = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§@!_§();
         for each(_loc3_ in _loc2_)
         {
            if(§-q§.distance(_loc3_.x,_loc3_.y,x,y) <= 70 && !(_loc3_ is Rope))
            {
               if(_loc3_ as §+%]§)
               {
                  _loc3_.setSpeedXY(0,-5);
               }
               else
               {
                  _loc3_.disposed = true;
               }
            }
         }
         §1"-§.explode(§;n§.§6#B§,x,y,70);
         super.§[$u§(param1);
      }
      
      public function §>$c§() : §+%]§
      {
         return this.victim;
      }
   }
}

