package §@8§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§;#&§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5%>§
   {
      
      private var §6#q§:int = 0;
      
      private var name:String = §2"e§.NA;
      
      private var §`%f§:int;
      
      private var §@%W§:§%Z§;
      
      private var §&A§:Object;
      
      private var §8<§:§]$q§;
      
      private var params:Object;
      
      public function §5%>§(param1:uint, param2:§%Z§, param3:Object = null, param4:Object = null)
      {
         super();
         this.§`%f§ = param1;
         this.§@%W§ = param2;
         if(!param3)
         {
            param3 = {};
         }
         this.§8<§ = new §]$q§(§]$q§.NONE);
         §#&>§.§%%Q§(this.§8<§,param3.bonuses || param3);
         this.§&A§ = param3;
         this.params = param4;
      }
      
      public function §!j§(param1:CraftedEquipFamily) : void
      {
         this.§6#q§ = param1.getId();
         if(param1.§,%B§() && Boolean(this.§@%W§.§,$l§()))
         {
            this.name = this.§@%W§.§,$l§();
         }
         else if(param1.§#!o§() && Boolean(this.§@%W§.§?!k§()))
         {
            this.name = this.§@%W§.§?!k§();
         }
         else
         {
            this.name = this.§@%W§.§7%z§();
         }
         this.name += " " + param1.§7%z§().toLocaleLowerCase();
      }
      
      public function §&!H§() : int
      {
         return this.§6#q§ + this.§`%f§;
      }
      
      public function §!%G§() : int
      {
         return this.§`%f§;
      }
      
      public function §4!@§() : int
      {
         return this.§6#q§;
      }
      
      public function §2![§() : String
      {
         return this.name;
      }
      
      public function getType() : §%Z§
      {
         return this.§@%W§;
      }
      
      public function §9P§() : Object
      {
         return this.§&A§;
      }
      
      public function getBonusList() : §]$q§
      {
         return this.§8<§;
      }
      
      public function §@$p§() : Object
      {
         return this.params;
      }
   }
}

