package §<V§
{
   import §7$t§.§^%%§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §!&-§
   {
      
      §§push(§§findproperty(§@#k§));
      var _temp_4:* = new <§!&-§>[new §!&-§(1,200,6,6,0),new §!&-§(2,200,8,8,5),new §!&-§(3,220,8,8,5,6),new §!&-§(4,240,8,8,5,6,5),new §!&-§(5,260,10,10,5,6,5)];
      
      private static const §@#k§:Vector.<§!&-§> = new <§!&-§>[new §!&-§(1,200,6,6,0),new §!&-§(2,200,8,8,5),new §!&-§(3,220,8,8,5,6),new §!&-§(4,240,8,8,5,6,5),new §!&-§(5,260,10,10,5,6,5)];
      
      public var id:§&$2§;
      
      public var name:String;
      
      public var description:String;
      
      public var §'$s§:§&$2§;
      
      public var §"8§:§&$2§;
      
      public var §?"L§:§&$2§;
      
      public var §]"g§:§&$2§;
      
      public var speedBonus:§&$2§;
      
      public var §="E§:§&$2§;
      
      public function §!&-§(param1:uint, param2:uint, param3:int, param4:int, param5:int, param6:int = 0, param7:int = 0)
      {
         super();
         this.id = new §&$2§(param1);
         this.name = §0$N§.§%! §("BANNER_NAME_" + param1);
         this.description = §0$N§.§%! §("BANNER_DESCRIPTION_" + param1);
         this.§'$s§ = new §&$2§(param2);
         this.§"8§ = new §&$2§(param3);
         this.§?"L§ = new §&$2§(param4);
         this.§]"g§ = new §&$2§(param5);
         this.speedBonus = new §&$2§(param6);
         this.§="E§ = new §&$2§(param7);
      }
      
      public static function valueOf(param1:uint) : §!&-§
      {
         return param1 > 0 && param1 <= §@#k§.length ? §@#k§[param1 - 1] : null;
      }
      
      public function §8R§() : Boolean
      {
         return this.speedBonus.value > 0 || this.§="E§.value > 0;
      }
   }
}

