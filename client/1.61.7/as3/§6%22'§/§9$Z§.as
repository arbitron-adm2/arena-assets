package §6"'§
{
   import § &5§.§%$O§;
   import §#%!§.§^%c§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §-8§.§3!x§;
   import §7!B§.§&"T§;
   import §<$q§.§"%r§;
   import §=&!§.§&$a§;
   import §@!i§.§<!9§;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9$Z§
   {
      
      private static const §'&C§:String = "preview.png";
      
      private static const §%#`§:int = 2800;
      
      private static const §!%E§:int = 1400;
      
      public var id:uint;
      
      public var name:String;
      
      public var className:String;
      
      public var minLevel:uint;
      
      public var maxLevel:uint;
      
      private var §3!b§:Array = [];
      
      private var §@&!§:Array = [];
      
      private var §]k§:Array = [];
      
      private var § !U§:Array = [];
      
      private var §[!t§:Array = [];
      
      private var §3%N§:Array = [];
      
      private var §'!s§:Array = [];
      
      private var §2%g§:Array = [];
      
      private var §@X§:Array = [];
      
      private var §!"U§:Array = [];
      
      private var §%$v§:Array = [];
      
      public var raceFinishRadius:int;
      
      public var clouds:Object;
      
      public var water:Object;
      
      private var §"#$§:Boolean;
      
      public var §8%`§:Number;
      
      public var indentHeight:int;
      
      public var indentWidth:int;
      
      public var §1% §:int;
      
      public var mapHeight:int;
      
      public var §5"w§:int;
      
      public var scaleBg:Number = -1;
      
      public var scaleBgFullscreen:Number = -1;
      
      public var §0"N§:Boolean;
      
      public var mirror:Boolean;
      
      public var version:int = 0;
      
      public var §7j§:String = "preview.png";
      
      public var script:Class;
      
      public var §!#;§:§"%r§;
      
      public var pvpLevels:Vector.<§=$@§> = new Vector.<§=$@§>(0);
      
      public function §9$Z§(param1:Object)
      {
         var _loc2_:§=$@§ = null;
         super();
         this.id = param1.id;
         this.name = param1.name;
         this.className = param1.className;
         this.scaleBg = param1.scaleBg;
         this.scaleBgFullscreen = param1.scaleBgFullscreen;
         this.clouds = param1.clouds ? param1.clouds : null;
         this.water = param1.water ? param1.water : null;
         this.§0"N§ = !param1.notFloodable;
         this.maxLevel = param1.maxLevel ? uint(param1.maxLevel) : §<!9§.getMaxLevel();
         this.minLevel = param1.minLevel ? uint(param1.minLevel) : 1;
         this.§8%`§ = 0;
         if(param1.pvpWithFriend == null)
         {
            param1.pvpWithFriend = true;
         }
         if(param1.pvpWager == null)
         {
            param1.pvpWager = true;
         }
         if(param1.mission == null)
         {
            param1.mission = true;
         }
         if(param1.hotSeat == null)
         {
            param1.hotSeat = true;
         }
         if(param1.scenario == null)
         {
            param1.scenario = true;
         }
         this.§3!b§.push(param1.pvpWithFriend,param1.pvpWager,param1.mission,param1.hotSeat,param1.scenario,param1.ropeRace);
         if(param1.ropeRace)
         {
            this.raceFinishRadius = param1.raceFinishRadius ? int(param1.raceFinishRadius) : 0;
         }
         this.indentHeight = param1.indentHeight ? int(param1.indentHeight) : 0;
         this.indentWidth = param1.indentWidth ? int(param1.indentWidth) : 0;
         this.§1% § = this.indentWidth * 0.5;
         this.§5"w§ = (param1.mapWight ? param1.mapWight : §%#`§) + this.indentWidth;
         this.mapHeight = (param1.mapHeight ? param1.mapHeight : §!%E§) + this.indentHeight;
         if(param1.version)
         {
            this.version = param1.version;
         }
         if(param1.preview)
         {
            this.§7j§ = param1.preview;
         }
         if(param1.script)
         {
            this.script = param1.script;
         }
         if(param1.pvpWaterMode)
         {
            this.§!#;§ = param1.pvpWaterMode;
         }
         if(param1.pvpLevels)
         {
            for each(_loc2_ in param1.pvpLevels)
            {
               this.pvpLevels.push(_loc2_);
            }
         }
      }
      
      public function toString() : String
      {
         return "MapRecord{" + " id=" + this.id + ", minLevel=" + this.minLevel + ", maxLevel=" + this.maxLevel + ", pvpLevels=" + this.pvpLevels + " }";
      }
      
      public function getId() : uint
      {
         return this.id;
      }
      
      public function §#!c§() : Boolean
      {
         return this.§"#$§ && (this.§@&!§ && this.§@&!§.length > 0 && this.§ !U§ && this.§ !U§.length > 0 || Boolean(this.§3%N§) && this.§3%N§.length > 0);
      }
      
      public function §>'§(param1:Boolean) : void
      {
         this.§"#$§ = param1;
      }
      
      public function §&#P§(param1:§&$a§) : Boolean
      {
         return this.§3!b§[param1.id];
      }
      
      public function §%&C§(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:§=$@§ = null;
         if(param1 == §-"P§.§,$^§)
         {
            param1 = §-"P§.§'$L§;
         }
         var _loc5_:int = 0;
         var _loc6_:* = this.pvpLevels;
         for each(_loc5_ in _loc6_)
         {
            var _temp_5:* = _loc5_;
            _loc4_ = _loc5_;
            if(_loc4_.type == param1 && _loc4_.§,#?§ == param3 && _loc4_.minLevel <= param2 && param2 <= _loc4_.maxLevel)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §;&!§() : Array
      {
         return this.§3!b§;
      }
      
      public function get §8$2§() : Array
      {
         return this.mirror ? this.§]k§ : this.§@&!§;
      }
      
      public function get §?$&§() : Array
      {
         return this.mirror ? this.§[!t§ : this.§ !U§;
      }
      
      public function get §0$D§() : Array
      {
         return this.mirror ? this.§@X§ : this.§2%g§;
      }
      
      public function get §7%L§() : Array
      {
         return this.mirror ? this.§%$v§ : this.§!"U§;
      }
      
      public function get §4!c§() : Array
      {
         return this.mirror ? this.§'!s§ : this.§3%N§;
      }
   }
}

