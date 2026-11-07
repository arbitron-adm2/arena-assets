package §##j§
{
   import § "%§.*;
   import § "L§.§1%b§;
   import §!$d§.§<$c§;
   import §'$Z§.*;
   import §+#P§.§8"j§;
   import §,$J§.§0%G§;
   import §1#p§.*;
   import §3"@§.§""m§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §]$X§ extends §9x§
   {
      
      private var id:uint;
      
      private var expireHours:uint;
      
      public function §]$X§(param1:uint, param2:int = 0)
      {
         super(1,"equip");
         this.id = param1;
         this.expireHours = param2;
      }
      
      override public function getId() : uint
      {
         return this.id;
      }
      
      public function getExpireHours() : uint
      {
         return this.expireHours;
      }
      
      public function getRecord() : §&!e§
      {
         if(this.id >= §""m§.§;9§)
         {
            return §<$c§.§3"k§(this.id);
         }
         if(this.id > §8"j§.§;9§)
         {
            return §<$c§.§"$h§(this.id);
         }
         if(this.id >= §0%G§.§;9§)
         {
            return §<$c§.§^&1§(this.id,Application.userProfile.getRace());
         }
         return null;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",id=" + this.id + ",expireHours=" + this.expireHours + "}";
      }
   }
}

