package §?#g§
{
   import § !P§.§<#q§;
   import § L§.§`T§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §2#x§.*;
   import §4%_§.§3§;
   import §7$1§.§3&G§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §;!J§.*;
   import §<%E§.§,$2§;
   import §=!p§.§9#n§;
   import §?$7§.§+#N§;
   import §@<§.§+%]§;
   import flash.events.*;
   import flash.net.LocalConnection;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §"&>§
   {
      
      private var id:int;
      
      private var name:String;
      
      private var prefix:String;
      
      private var realprice:int;
      
      public function §"&>§(param1:Object)
      {
         super();
         this.id = param1.id;
         this.name = §0$N§.§%! §(param1.name);
         this.prefix = param1.prefix;
         this.realprice = param1.realprice;
      }
      
      public function toString() : String
      {
         return "SkinMod {" + " id=" + this.id + " name=" + this.name + " prefix=" + this.prefix + " realprice=" + this.realprice + " }";
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function §<%-§() : String
      {
         return this.prefix;
      }
      
      public function §,$1§() : int
      {
         return this.realprice;
      }
   }
}

