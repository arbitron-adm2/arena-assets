package §<!^§
{
   import § &5§.§=#P§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §7"Q§.*;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9"A§ extends §["l§
   {
      
      protected static const §6"m§:Number = 7 * Math.PI / 180;
      
      protected static const §0%>§:int = 10;
      
      protected static const §]&<§:int = 15;
      
      protected var § #`§:Number = 0.12217304763960307;
      
      protected var §1#b§:int = 15;
      
      protected var §'^§:int = 10;
      
      protected var counter:int = 0;
      
      protected var §;& §:uint;
      
      protected var target:§+%]§;
      
      public function §9"A§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§, param7:uint = 350, param8:Number = 1, param9:Object = true)
      {
         super(param1,param2,param3,param4,param5,param6,param8,param9);
         this.§;& § = param7;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§>"n§();
      }
      
      private function §>"n§() : void
      {
         if(this.counter >= this.§'^§)
         {
            if(!this.target)
            {
               this.§^#d§(this.§;& §);
            }
            else if(!this.target.disposed)
            {
               §^"F§(§^$y§.§ !Q§(angle,Math.atan2(this.target.y - y,this.target.x - x),§6"m§),this.§1#b§);
            }
            else
            {
               this.target = null;
               this.§^#d§(this.§;& § >> 1);
            }
         }
         ++this.counter;
      }
      
      public function §?&H§(param1:uint) : void
      {
         this.§'^§ = param1;
      }
      
      public function §0!F§(param1:§+%]§) : void
      {
         this.target = param1;
      }
      
      public function §^$V§(param1:Number) : void
      {
         this.§ #`§ = param1;
      }
      
      public function §&c§(param1:int) : void
      {
         this.§1#b§ = param1;
      }
      
      protected function §^#d§(param1:int) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:uint = 0;
         if(this.§;& § > 0 && this.counter % 3 == 0)
         {
            _loc2_ = [];
            _loc3_ = §<H§.§5"]§(x,y,param1);
            for each(_loc4_ in _loc3_)
            {
               if(!_loc4_.disposed && _loc4_ != owner && _loc4_.squad.getTeamId() != owner.squad.getTeamId())
               {
                  _loc2_.push(_loc4_);
               }
            }
            _loc5_ = uint(§8"%§.randomSeed.§,!q§(0,_loc2_.length));
            this.target = _loc2_[_loc5_];
         }
      }
   }
}

