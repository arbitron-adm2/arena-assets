package §+%S§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §0&F§.SelectObjectEvent;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §4#2§.§,%g§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §]$v§.§]%_§;
   import §^4§.§@#J§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §#%X§ extends §%%o§
   {
      
      public static const NAME:String = "SWAP_RACE";
      
      private static const §%!y§:int = 2;
      
      private var race:§`!d§;
      
      private var skinId:int;
      
      private var isRevived:Boolean;
      
      public function §#%X§(param1:§`!d§, param2:int, param3:Boolean, param4:int = 2, param5:int = 1)
      {
         super(NAME,param4,param5);
         this.race = param1;
         this.skinId = param2;
         this.isRevived = param3;
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:§+%]§ = null;
         if(!unit.disposed)
         {
            _loc1_ = §5"O§.changeRace(unit,this.race,this.skinId);
            if(this.isRevived)
            {
               _loc1_.§;!s§();
               _loc1_.§=%P§();
            }
         }
      }
      
      public function getRace() : §`!d§
      {
         return this.race;
      }
      
      public function §9K§() : int
      {
         return this.skinId;
      }
      
      public function §;!a§() : Boolean
      {
         return this.isRevived;
      }
   }
}

