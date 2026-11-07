package §6"'§
{
   import §2"L§.§,'§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §>"V§
   {
      
      public static const EMPTY:int = 0;
      
      public static const §"#_§:int = 1;
      
      public static const §;#c§:int = 2;
      
      public static const §>"]§:int = 3;
      
      public static const §]$-§:int = 4;
      
      public static const §5$K§:int = 5;
      
      public static const §>"v§:int = 6;
      
      private static const empty:§>"V§ = new §>"V§(EMPTY,0);
      
      private static const §,&4§:§>"V§ = new §>"V§(§"#_§,2);
      
      private static const §4#S§:§>"V§ = new §>"V§(§;#c§,3);
      
      private static const §3I§:§>"V§ = new §>"V§(§>"]§,4);
      
      private static const list:Vector.<§>"V§> = new <§>"V§>[empty,§,&4§,§4#S§,§3I§];
      
      private var _type:int;
      
      private var §]$m§:int;
      
      public function §>"V§(param1:int, param2:int = 0)
      {
         super();
         this._type = param1;
         this.§]$m§ = param2;
      }
      
      public static function §9!J§(param1:int) : int
      {
         var _loc2_:§>"V§ = null;
         for each(_loc2_ in list)
         {
            if(param1 == _loc2_._type)
            {
               return _loc2_.§]$m§;
            }
         }
         return 0;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get §&$T§() : int
      {
         return this.§]$m§;
      }
   }
}

