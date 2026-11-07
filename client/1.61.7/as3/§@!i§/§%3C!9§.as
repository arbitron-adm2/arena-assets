package §@!i§
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.Team;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§`"y§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.text.TextFormat;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<!9§
   {
      
      public static const instance:§<!9§ = new §<!9§();
      
      private var §1$-§:Array = [];
      
      public function §<!9§()
      {
         super();
         this.§1$-§.push(new §8"3§(0,0,0,0));
         this.§1$-§.push(new §8"3§(1,100,100,1));
         this.§1$-§.push(new §8"3§(2,200,120,1));
         this.§1$-§.push(new §8"3§(3,300,140,1));
         this.§1$-§.push(new §8"3§(4,400,160,1));
         this.§1$-§.push(new §8"3§(5,500,180,2));
         this.§1$-§.push(new §8"3§(6,600,200,2));
         this.§1$-§.push(new §8"3§(7,700,220,2));
         this.§1$-§.push(new §8"3§(8,800,240,2));
         this.§1$-§.push(new §8"3§(9,900,260,2));
         this.§1$-§.push(new §8"3§(10,1000,280,2));
         this.§1$-§.push(new §8"3§(11,1100,300,2));
         this.§1$-§.push(new §8"3§(12,1200,320,2));
         this.§1$-§.push(new §8"3§(13,1300,340,3));
         this.§1$-§.push(new §8"3§(14,1400,360,3));
         this.§1$-§.push(new §8"3§(15,1500,375,3));
         this.§1$-§.push(new §8"3§(16,1600,390,3));
         this.§1$-§.push(new §8"3§(17,1700,405,3));
         this.§1$-§.push(new §8"3§(18,1800,420,3));
         this.§1$-§.push(new §8"3§(19,1900,435,3));
         this.§1$-§.push(new §8"3§(20,2000,450,3));
         this.§1$-§.push(new §8"3§(21,2100,465,4));
         this.§1$-§.push(new §8"3§(22,2200,480,4));
         this.§1$-§.push(new §8"3§(23,2300,495,4));
         this.§1$-§.push(new §8"3§(24,2400,510,4));
         this.§1$-§.push(new §8"3§(25,2500,525,4));
         this.§1$-§.push(new §8"3§(26,2600,540,4));
         this.§1$-§.push(new §8"3§(27,2700,555,4));
         this.§1$-§.push(new §8"3§(28,2800,570,4));
         this.§1$-§.push(new §8"3§(29,2900,585,4));
         this.§1$-§.push(new §8"3§(30,3000,600,4));
      }
      
      public static function getMaxLevel() : uint
      {
         return instance.§1$-§.length - 1;
      }
      
      public static function §"#4§(param1:uint) : uint
      {
         var _loc2_:§8"3§ = §8"3§(instance.§1$-§[param1]);
         return _loc2_.§"#4§();
      }
      
      public static function §["q§(param1:uint) : uint
      {
         var _loc2_:§8"3§ = §8"3§(instance.§1$-§[param1]);
         return _loc2_.§["q§();
      }
      
      public static function §0r§(param1:uint) : int
      {
         var _loc2_:§8"3§ = null;
         for each(_loc2_ in instance.§1$-§)
         {
            if(_loc2_.§1%d§() == param1)
            {
               return _loc2_.getLevel();
            }
         }
         return -1;
      }
      
      public static function §4p§(param1:uint) : uint
      {
         var _loc2_:§8"3§ = §8"3§(instance.§1$-§[param1]);
         return _loc2_.§1%d§();
      }
      
      public static function §8"N§(param1:uint) : Boolean
      {
         return instance.§1$-§[param1] != null;
      }
   }
}

