package § $N§
{
   import § &5§.§@N§;
   import §'!Z§.§[&$§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2#H§.§9$e§;
   import §7!B§.§&"T§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §<%j§ extends §&"T§
   {
      
      public static const §9!"§:uint = 100;
      
      private static const §2"r§:uint = 8;
      
      private static const §]&'§:uint = 120;
      
      private var victim:§+%]§;
      
      private var §6&F§:uint = 0;
      
      private var §=#G§:uint;
      
      private var §`!e§:Boolean = false;
      
      private var §!$;§:§[&$§;
      
      private var allies:Vector.<§+%]§>;
      
      public function §<%j§(param1:§+%]§, param2:Number, param3:Number, param4:uint)
      {
         var _loc6_:§&"T§ = null;
         super(false,§@N§.§@$8§);
         this.victim = param1;
         this.§=#G§ = param4;
         physParams.§3&I§ = false;
         physicModel.stop();
         setSpeedXY(0,0);
         stable = false;
         clip = new MovieClip();
         this.§!$;§ = new §[&$§(clip,"FunnelIdle","FunnelBegin","FunnelEnd");
         this.§!$;§.start();
         this.x = param2;
         this.y = param3;
         Application.scene.§,# §(param2,param3,§9!"§);
         var _loc5_:Vector.<§&"T§> = Application.scene.§@$I§.§@!_§();
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_ != param1 && §-q§.distance(_loc6_.x,_loc6_.y,param2,param3) <= §9!"§)
            {
               if(_loc6_ is §+%]§)
               {
                  _loc6_.§5!?§(0,-5);
               }
               else
               {
                  _loc6_.disposed = true;
               }
            }
         }
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_ != param1 && !_loc6_.stable && §-q§.distance(_loc6_.x,_loc6_.y,param1.x,param1.y) <= §<H§.§-#C§ + 3)
            {
               _loc6_.§5!?§(0,-5);
            }
         }
         param1.buffs.addValue(new §9$e§());
         Application.scene.§,# §(param1.x,param1.y,§<H§.§,%P§);
         if(param1.physParams.hasForce(§]%G§.§0#m§))
         {
            this.§`!e§ = true;
            param1.physParams.§"%<§(§]%G§.§0#m§);
         }
         param1.graphics.damaged();
         param1.addEventListener(§0%v§.§&!D§,this.§?$u§,false,§[!F§.§##c§);
         param1.physParams.§"%<§(§]%G§.§="u§);
         param1.keepUnstable = true;
         Application.scene.addEventListener(§0%v§.EOT,this.§8%^§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         this.§]#7§();
         disposed = true;
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:§+%]§ = null;
         super.§!!>§();
         if(!this.victim.disposed)
         {
            this.victim.clip.rotation += 2;
            if(this.§6&F§ % 5 == 0)
            {
               Application.scene.§,# §(this.victim.x,this.victim.y,§<H§.§-#C§ + 3);
            }
            if(this.§6&F§ >= this.§=#G§)
            {
               if(Boolean(this.§6&F§ >= this.§=#G§ + §]&'§) && Boolean(this.victim) && !this.victim.disposed)
               {
                  this.§]#7§();
                  disposed = true;
               }
               this.victim.§^"F§(Math.atan2(y - this.victim.y,x - this.victim.x),2);
               this.victim.clip.rotation += 2;
               if(frames % 10 == 0 || !this.allies || this.allies.length == 0)
               {
                  this.allies = §8"%§.§?!W§.§4"m§.§="T§(this.victim);
               }
               else
               {
                  §7z§.§7"K§(this.allies);
               }
               for each(_loc1_ in this.allies)
               {
                  if(Boolean(_loc1_) && Boolean(!_loc1_.disposed) && §-q§.distance(_loc1_.x,_loc1_.y,x,y) <= §2"r§ * 2)
                  {
                     _loc1_.§9&2§();
                     _loc1_.disposed = true;
                  }
               }
               if(§-q§.distance(this.victim.x,this.victim.y,x,y) <= §2"r§)
               {
                  this.§]#7§();
                  this.victim.§9&2§();
                  this.victim.disposed = true;
                  disposed = true;
               }
            }
            ++this.§6&F§;
            return;
         }
         disposed = true;
      }
      
      private function §]#7§() : void
      {
         this.victim.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         this.victim.keepUnstable = false;
         this.victim.physParams.addForce(§]%G§.§5$r§);
      }
      
      protected function §8%^§(param1:Event) : void
      {
         this.§6&F§ = 0;
         this.allies = null;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§!$;§.§=$5§(true);
         Application.scene.removeEventListener(§0%v§.EOT,this.§8%^§);
         if(!this.victim.disposed && this.§`!e§)
         {
            this.victim.physParams.addForce(§]%G§.§-4§);
         }
         this.victim = null;
         this.allies = null;
         super.§[$u§(param1);
      }
   }
}

