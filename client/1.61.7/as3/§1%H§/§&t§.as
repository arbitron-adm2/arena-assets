package §1%H§
{
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7"Q§.§0$L§;
   import §8$V§.TeamController;
   import §;#O§.§+%7§;
   import §<"?§.§3>§;
   import §?$L§.§0"-§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.§^"2§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   
   public class §&t§
   {
      
      public static const §-$>§:§&t§ = new §&t§("halloween");
      
      public static const §9$l§:§&t§ = new §&t§("christmas");
      
      public static const §6$^§:§&t§ = new §&t§("firstApril");
      
      public static const §7$s§:§&t§ = new §&t§("firstMay");
      
      public static const §`&G§:§&t§ = new §&t§("firstSeptember");
      
      private var §4"4§:String;
      
      private var §["2§:String;
      
      private var §>#0§:String;
      
      private var §3&=§:String;
      
      public function §&t§(param1:String)
      {
         super();
         this.§4"4§ = param1;
         var _loc2_:String = param1.toLocaleUpperCase();
         this.§["2§ = §0$N§.§%! §(_loc2_ + "_EVENT_TITLE");
         this.§>#0§ = §0$N§.§%! §(_loc2_ + "_EVENT_TEXT");
         this.§3&=§ = §0$N§.§%! §(_loc2_ + "_EVENT_DESCR");
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
      
      public function get title() : String
      {
         return this.§["2§;
      }
      
      public function get text() : String
      {
         return this.§>#0§;
      }
      
      public function get descr() : String
      {
         return this.§3&=§;
      }
   }
}

