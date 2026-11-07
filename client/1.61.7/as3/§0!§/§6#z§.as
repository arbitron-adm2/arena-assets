package §0!§
{
   public class §6#z§
   {
      
      private static const list:Vector.<§6#z§> = new Vector.<§6#z§>(0);
      
      public static const §>&2§:§6#z§ = new §6#z§(-1,"t");
      
      public static const DEFAULT:§6#z§ = new §6#z§(0,"DEFAULT");
      
      public static const UPDATE:§6#z§ = new §6#z§(1,"UPDATE");
      
      public static const HEAL:§6#z§ = new §6#z§(2,"HEAL");
      
      public static const REGEN:§6#z§ = new §6#z§(3,"REGEN");
      
      public static const LEECH:§6#z§ = new §6#z§(4,"LEECH");
      
      public static const THEFT:§6#z§ = new §6#z§(5,"THEFT");
      
      public static const DMG_TAKEN:§6#z§ = new §6#z§(6,"DMG_TAKEN");
      
      public static const BOSS_MECH:§6#z§ = new §6#z§(7,"BOSS_MECH");
      
      public static const SCEN_MECH:§6#z§ = new §6#z§(8,"SCEN_MECH");
      
      private var id:int;
      
      private var type:String;
      
      public function §6#z§(param1:int, param2:String)
      {
         super();
         this.id = param1;
         this.type = param2;
         list.push(this);
      }
      
      public function toString() : String
      {
         return this.type;
      }
      
      public function valueOf(param1:int) : §6#z§
      {
         return param1 > -1 && param1 < list.length ? list[param1] : null;
      }
      
      public function §[$M§() : Vector.<§6#z§>
      {
         return list;
      }
   }
}

