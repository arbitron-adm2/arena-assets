package §3#T§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class AtomBomb extends §6#I§
   {
      
      private static const §!#-§:uint = 3;
      
      private static const §1$ §:§&$2§ = new §&$2§(50);
      
      private static const §+"J§:uint = 8;
      
      private var paramSet:§5$n§;
      
      private var §6$q§:uint = 0;
      
      private var §#%L§:uint = 0;
      
      private var §3#x§:Number;
      
      private var §`"l§:Point;
      
      public function AtomBomb(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:Boolean)
      {
         var self:AtomBomb = null;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var x:int = param3;
         var y:int = param4;
         var vx:int = param5;
         var vy:int = param6;
         var isFake:Boolean = param7;
         this.paramSet = paramSet;
         super(owner,x,y,false);
         initialize(new Point(x,y),paramSet.ammoClassName);
         clip.scaleX = clip.scaleY = 0.74;
         setSpeedXY(vx,vy);
         §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         self = this;
         §8$a§.§&!#§(this,§0%v§.§+&=§,function onceCollideAtomBomb(param1:CollisionEvent):void
         {
            var _loc3_:§+%]§ = null;
            §&"=§(self.x,self.y,paramSet.damage.value);
            var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(self.x,self.y,paramSet.damageRadius.value);
            for each(_loc3_ in _loc2_)
            {
               §7%g§.§>!%§(_loc3_,owner);
            }
            if(!isFake)
            {
               §`"l§ = new Point(self.x,self.y);
               §@%;§.play(§`!v§.§`!Y§);
               Application.scene.addEventListener(§0%v§.FRAME,onFrame);
            }
            else
            {
               §@%;§.play(§`!v§.§4"t§);
            }
            disposed = true;
         });
         this.§3#x§ = paramSet.explosionRadius.value / 2;
         §`4§ = §]$S§;
         §@%;§.play(§`!v§.AIR_STRIKE);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onFrame(param1:Event) : void
      {
         if(++this.§6$q§ >= §+"J§)
         {
            this.§6$q§ = 0;
            this.§&"=§(this.§`"l§.x + this.§3#x§,this.§`"l§.y,§1$ §.value);
            this.§&"=§(this.§`"l§.x - this.§3#x§,this.§`"l§.y,§1$ §.value);
            this.§3#x§ += this.paramSet.explosionRadius.value / 2;
            if(++this.§#%L§ >= §!#-§)
            {
               Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            }
         }
      }
      
      private function §&"=§(param1:int, param2:int, param3:uint) : void
      {
         §'"$§.§]#I§(owner,param1,param2,null,param3,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,false,§&!E§.AIR,true,true,true,true,null,§`#=§);
         §1"-§.explode(§;n§.§@%d§,param1,param2,this.paramSet.explosionRadius.value);
      }
   }
}

