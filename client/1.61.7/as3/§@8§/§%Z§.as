package §@8§
{
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4'§.§`"q§;
   import §7$t§.§;#_§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%Z§
   {
      
      public static const ANTISET_ITEMS:§%Z§ = new §%Z§(-3,"green","#498800",§0$N§.§]%o§);
      
      public static const SET_ITEMS:§%Z§ = new §%Z§(-2,"green","#49AA00",§0$N§.§&!I§);
      
      public static const §<#7§:§%Z§ = new §%Z§(-1,"simple","#7E695A");
      
      public static const NORMAL:§%Z§ = new §%Z§(1,"white","#808080",§0$N§.§?"M§,§0$N§.§&$B§,§0$N§.§8!j§);
      
      public static const SUPERIOR:§%Z§ = new §%Z§(2,"purple","#33ABFF",§0$N§.§&!B§,§0$N§.§8$U§,§0$N§.§#&!§);
      
      public static const AGGRESSIVE:§%Z§ = new §%Z§(3,"blue","#F21DFF",§0$N§.§>%0§,§0$N§.§-"b§,§0$N§.§8&7§);
      
      public static const VIOLENT:§%Z§ = new §%Z§(4,"yellow","#FF9A00",§0$N§.§7A§,§0$N§.§;!k§,§0$N§.§7%t§);
      
      public static const EPIC:§%Z§ = new §%Z§(5,"orange","#FF4600",§0$N§.§<!E§,§0$N§.§=#S§,§0$N§.§6!E§);
      
      public static const LEGENDARY:§%Z§ = new §%Z§(6,"red","#C90000",§0$N§.§[%-§,§0$N§.§%&H§,§0$N§.§+i§);
      
      private var id:int;
      
      private var name:String;
      
      private var §@$%§:String;
      
      private var §[J§:String;
      
      private var §<%t§:String;
      
      private var §5#j§:String;
      
      public function §%Z§(param1:int, param2:String, param3:String, param4:String = "", param5:String = "", param6:String = "")
      {
         super();
         this.id = param1;
         this.name = param4;
         this.§@$%§ = param5;
         this.§[J§ = param6;
         this.§<%t§ = param2;
         this.§5#j§ = param3;
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function §,$l§() : String
      {
         return this.§@$%§;
      }
      
      public function §?!k§() : String
      {
         return this.§[J§;
      }
      
      public function §?"u§() : String
      {
         return this.§<%t§;
      }
      
      public function §1#B§() : String
      {
         return this.§5#j§;
      }
      
      public function §>#]§() : uint
      {
         return uint("0x" + this.§5#j§.substr(1));
      }
   }
}

