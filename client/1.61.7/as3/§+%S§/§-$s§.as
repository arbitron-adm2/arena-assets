package §+%S§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"% §.*;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §3#T§.§5!M§;
   import §65§.§%%o§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@#K§.§-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §]$&§.§2&2§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-$s§ extends §%%o§
   {
      
      public static const NAME:String = "ITEM_DISPLACEMENT";
      
      private var owner:§+%]§;
      
      private var oldHat:§^$E§ = null;
      
      private var oldArtifact:§^%%§ = null;
      
      private var damage:uint;
      
      private var §2%>§:int;
      
      private var §7$G§:Boolean;
      
      private var §1%;§:Boolean;
      
      private var §&$_§:Boolean;
      
      private var §"$D§:int;
      
      private var §%%k§:int;
      
      public function §-$s§(param1:§+%]§, param2:int, param3:uint, param4:int, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(NAME,param2,1);
         this.owner = param1;
         this.damage = param3;
         this.§2%>§ = param4;
         this.§7$G§ = param5;
         this.§1%;§ = param6;
         this.§&$_§ = param7;
      }
      
      override protected function §5#F§() : void
      {
         if(!this.§7$G§ || this.§&$_§)
         {
            this.oldHat = unit.§2u§();
            if(this.§1%;§)
            {
               this.oldArtifact = unit.§+!b§();
            }
         }
         var _loc1_:Boolean = unit.graphics.isLocked();
         if(_loc1_)
         {
            unit.graphics.unlock();
         }
         unit.§,#x§(this.§2%>§);
         if(this.§1%;§)
         {
            unit.§;"U§(null);
         }
         if(_loc1_)
         {
            unit.graphics.lock();
         }
         §2$#§.updateDebuffBonus(unit);
         unit.§0!e§ = false;
         §@%;§.play(§`!v§.§-$z§);
         Application.scene.addEventListener(§0%v§.EOT,this.trigger);
         this.§"$D§ = §4!s§.§33§(unit);
         this.§%%k§ = 0;
      }
      
      override protected function §0&"§() : void
      {
         var isLocked:Boolean = false;
         var hatId:int = 0;
         var artifactId:int = 0;
         var tmpUnit:§+%]§ = null;
         if(!unit.disposed)
         {
            isLocked = unit.graphics.isLocked();
            unit.§0!e§ = true;
            if(isLocked)
            {
               unit.graphics.unlock();
            }
            if(this.§7$G§)
            {
               hatId = this.§[#!§(§<$c§.§]&3§(unit.record.getRace()));
               unit.§,#x§(hatId);
               if(this.§1%;§)
               {
                  artifactId = this.§[#!§(§<$c§.§`"u§());
                  unit.§;"U§(§<$c§.§"$h§(artifactId));
               }
               if(this.§&$_§)
               {
                  tmpUnit = unit;
                  §8$a§.§%!E§(1,function():void
                  {
                     var _loc1_:§-$s§ = new §-$s§(owner,duration.value,0,hatId);
                     tmpUnit.buffs.place(_loc1_);
                     _loc1_.§1%;§ = true;
                     _loc1_.oldHat = oldHat;
                     _loc1_.oldArtifact = oldArtifact;
                  });
               }
            }
            else
            {
               unit.§,#x§(this.oldHat ? this.oldHat.getId() : 0);
               if(this.§1%;§)
               {
                  unit.§;"U§(this.oldArtifact);
               }
            }
            if(isLocked)
            {
               unit.graphics.lock();
            }
            §2$#§.updateDebuffBonus(unit);
            §1"-§.explode(§;n§.§6#B§,unit.x,unit.y,30,§`!v§.§+#O§);
         }
         Application.scene.removeEventListener(§0%v§.EOT,this.trigger);
      }
      
      protected function trigger(param1:Event) : void
      {
         if(!§&%M§ && this.damage > 0)
         {
            §'"$§.§]#I§(this.owner,unit.x,unit.y + 10,unit,this.damage,0,0,false,true,this.§7$G§ ? null : §&!E§.POISON);
         }
      }
      
      private function §[#!§(param1:Array) : int
      {
         var _loc2_:§=?§ = param1[§8"%§.randomSeed.§,!q§(0,param1.length - 1)];
         return _loc2_.getId();
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:§-$s§ = new §-$s§(this.owner,§8#z§(),this.damage,this.§2%>§,this.§7$G§,this.§1%;§);
         param1.buffs.place(_loc2_);
         _loc2_.oldHat = this.oldHat;
      }
   }
}

