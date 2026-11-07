package §[#I§
{
   import § !P§.§<#q§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §5%S§.§>&-§;
   import §<!^§.§["l§;
   import §<!^§.§]#u§;
   import §=#g§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class NailGrenade extends §`"O§
   {
      
      private static const §[%_§:String = "NailGrenadeRotate";
      
      private static const §1!&§:int = 3;
      
      private static const §'"G§:uint = 350;
      
      private static const §6#j§:uint = 45;
      
      private var §+%H§:Boolean = false;
      
      private var §%""§:uint = 0;
      
      private var §!G§:uint;
      
      private var paramSetEx:§5$n§;
      
      private var targets:Vector.<§+%]§>;
      
      private var §2g§:uint = 0;
      
      public function NailGrenade(param1:§+%]§, param2:§5$n§, param3:§]#u§, param4:uint, param5:Number, param6:uint, param7:Number, param8:String)
      {
         this.§!G§ = param3.shardQuantity.value;
         this.paramSetEx = param3.paramSetEx;
         super(param1,param2,null,§6#j§,param5,param6,param7,param8);
      }
      
      override public function explode() : void
      {
         this.targets = §<H§.§5"]§(x,y,§'"G§);
         if(this.targets.length > 0)
         {
            physParams.removeAllForces();
            setSpeedXY(0,0);
            this.§+%H§ = true;
            frames = 0;
            counter.§?!K§();
            swapClip(§6#A§.§!&6§(§[%_§));
         }
         else
         {
            super.explode();
         }
      }
      
      override protected function §"#<§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(!this.§+%H§)
         {
            super.§"#<§();
         }
         else
         {
            if(frames % §1!&§ == 0)
            {
               _loc1_ = new Vector.<§+%]§>(0);
               for each(_loc2_ in this.targets)
               {
                  if(!_loc2_.disposed)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
               this.targets = _loc1_;
               if(this.targets.length > 0)
               {
                  this.§"#1§();
                  var _loc3_:NailGrenade = this;
                  var _loc4_:Number = _loc3_.§%""§ + 1;
                  _loc3_.§%""§ = _loc4_;
               }
               else
               {
                  this.§%""§ = this.§!G§;
               }
            }
            if(this.§%""§ == this.§!G§)
            {
               super.explode();
            }
         }
      }
      
      private function §"#1§() : void
      {
         var _loc1_:§+%]§ = null;
         if(this.targets.length > 0)
         {
            ++this.§2g§;
            if(this.§2g§ > 15)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"nail grenade hack"));
            }
            _loc1_ = this.targets[§8"%§.randomSeed.§,!q§(0,this.targets.length - 1)];
            new §["l§(owner,x,y,§-q§.§@$H§(this,_loc1_),30,this.paramSetEx).physParams.removeAllForces();
         }
      }
   }
}

