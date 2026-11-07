package §="z§
{
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import ru.pragmatix.wormix.physics.*;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class §9%1§
   {
      
      public static const §>#T§:int = 16;
      
      public static const §&!A§:int = 65552;
      
      public static const §@%h§:int = 1048592;
      
      public static const §`$R§:int = 16777232;
      
      public static const §!#6§:int = 17891344;
      
      public static const §;%@§:uint = Grenade.§`&#§.value * 2;
      
      protected var §;%h§:Object = {};
      
      protected var §;![§:§&$2§ = new §&$2§(§>#T§);
      
      protected var §,!$§:Boolean = false;
      
      private var §9%E§:Boolean = false;
      
      private var §^$O§:Boolean = false;
      
      private var §-&4§:uint = 0;
      
      protected var §1#7§:§&$2§ = new §&$2§(§<#`§.NONE);
      
      internal var §##f§:§?"&§ = new §?"&§(false);
      
      internal var §3@§:§?"&§ = new §?"&§(false);
      
      internal var §+$8§:Boolean = false;
      
      internal var §=!1§:int;
      
      internal var §8!;§:int;
      
      internal var §'%z§:int = 0;
      
      internal var §[& §:int = 0;
      
      internal var §3#w§:Number;
      
      internal var §4!8§:Number;
      
      internal var dx:Number = 0;
      
      internal var dy:Number = 0;
      
      internal var rotation:Number = 0;
      
      internal var §`#y§:Number = 0;
      
      protected var §@#_§:Boolean = false;
      
      public var §`#&§:Boolean = true;
      
      public function §9%1§(param1:int)
      {
         super();
         this.§1#7§.value = param1;
      }
      
      public function addForce(param1:§]%G§) : void
      {
         this.§;%h§[param1.name] = param1;
      }
      
      public function §"%<§(param1:String) : void
      {
         delete this.§;%h§[param1];
      }
      
      public function hasForce(param1:String) : Boolean
      {
         return this.§;%h§[param1] != null;
      }
      
      public function removeAllForces() : void
      {
         this.§;%h§ = {};
      }
      
      public function §@f§() : void
      {
         var _loc1_:§]%G§ = null;
         for each(_loc1_ in this.§;%h§)
         {
            if(Math.abs(_loc1_.ax) > §<H§.§?O§)
            {
               this.dx += _loc1_.ax;
            }
            if(Math.abs(_loc1_.ay) > §<H§.§?O§)
            {
               this.dy += _loc1_.ay;
            }
         }
      }
      
      public function §9#H§(param1:Number = NaN) : void
      {
         if(isNaN(param1))
         {
            param1 = §<H§.§?O§;
         }
         if(Math.abs(this.dx) < param1)
         {
            this.dx = 0;
         }
         if(Math.abs(this.dy) < param1)
         {
            this.dy = 0;
         }
      }
      
      public function §0%m§(param1:int, param2:int) : void
      {
         this.§=!1§ -= param1 - this.§'%z§;
         this.§8!;§ -= param2 - this.§[& §;
         this.§3#w§ = this.§=!1§;
         this.§4!8§ = this.§8!;§;
         this.§'%z§ = param1;
         this.§[& § = param2;
      }
      
      public function §8B§() : void
      {
         this.§-&4§ = 0;
         this.§9%E§ = true;
         this.§^$O§ = false;
      }
      
      public function §]#s§() : void
      {
         if(this.§9%E§ && this.§^$O§)
         {
            ++this.§-&4§;
            if(this.§-&4§ >= §;%@§)
            {
               this.§9%E§ = false;
            }
         }
      }
      
      public function §7#b§() : void
      {
         if(this.§9%E§)
         {
            this.§^$O§ = true;
         }
      }
      
      public function §1%7§() : void
      {
         if(this.§9%E§ && this.§^$O§)
         {
            if(this.§-&4§ < §;%@§)
            {
               this.§-&4§ = §;%@§;
            }
            this.§9%E§ = false;
         }
      }
      
      public function get §4%I§() : Object
      {
         return this.§;%h§;
      }
      
      public function get §5N§() : int
      {
         return this.§;![§.value;
      }
      
      public function set §5N§(param1:int) : void
      {
         this.§;![§.value = param1;
      }
      
      public function get §0#0§() : int
      {
         return this.§1#7§.value;
      }
      
      public function set §0#0§(param1:int) : void
      {
         this.§1#7§.value = param1;
      }
      
      public function get ignoresTerrain() : Boolean
      {
         return this.§@#_§;
      }
      
      public function set ignoresTerrain(param1:Boolean) : void
      {
         this.§@#_§ = param1;
      }
      
      public function get §7!3§() : Boolean
      {
         return (this.§;![§.value & §&!A§) > §>#T§;
      }
      
      public function get §-z§() : Boolean
      {
         return (this.§;![§.value & §@%h§) > §>#T§;
      }
      
      public function get §0g§() : Boolean
      {
         return (this.§;![§.value & §`$R§) > §>#T§;
      }
      
      public function get §3&I§() : Boolean
      {
         return this.§,!$§;
      }
      
      public function set §3&I§(param1:Boolean) : void
      {
         this.§,!$§ = param1;
      }
      
      public function get §`$Y§() : int
      {
         return this.§'%z§;
      }
      
      public function get §>"o§() : int
      {
         return this.§[& §;
      }
      
      public function get disposed() : Boolean
      {
         return this.§3@§.value;
      }
      
      public function set disposed(param1:Boolean) : void
      {
         this.§3@§.value = param1;
      }
      
      public function get §?$]§() : Boolean
      {
         return this.§9%E§;
      }
      
      public function set §?$]§(param1:Boolean) : void
      {
         this.§9%E§ = param1;
      }
      
      public function get §`!o§() : Boolean
      {
         return this.§^$O§;
      }
      
      public function set §`!o§(param1:Boolean) : void
      {
         this.§^$O§ = param1;
      }
      
      public function get § %A§() : uint
      {
         return this.§-&4§;
      }
   }
}

