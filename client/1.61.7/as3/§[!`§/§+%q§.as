package §[!`§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §02§.§<!v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@!N§.§""L§;
   import §@!i§.§<!9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §+%q§ extends §&"T§
   {
      
      public static const §9%X§:uint = 65280;
      
      public static const §&$A§:uint = 16711680;
      
      public static const §^[§:uint = 255;
      
      public static const §+"6§:uint = 13421772;
      
      public static const §+#"§:uint = 13421568;
      
      private static const colors:Array = [§9%X§,§&$A§,§^[§,§+"6§,§+#"§];
      
      private static const §-$i§:Array = ["CrystalGreen","CrystalRed","CrystalBlue","CrystaWhite","CrystalYellow"];
      
      private static const §1%B§:Array = ["CRYSTAL_GREEN_HINT","CRYSTAL_RED_HINT","CRYSTAL_BLUE_HINT","CRYSTAL_WHITE_HINT","CRYSTAL_YELLOW_HINT"];
      
      private var color:uint;
      
      private var hint:§4#_§;
      
      private var §8#_§:String;
      
      private var §]#n§:Point;
      
      public function §+%q§(param1:Point, param2:uint)
      {
         var _loc3_:int = 0;
         super();
         canBeDamaged = true;
         _loc3_ = Math.max(colors.indexOf(param2),0);
         var _loc4_:MovieClip = §6#A§.§!&6§(§-$i§[_loc3_]);
         if(§8"%§.§&S§.§41§())
         {
            _loc4_.filters = [new GlowFilter(param2,1,25,25,3,2)];
         }
         _loc4_.rotation = §8"%§.randomSeed.§,!q§(0,360);
         _loc4_.cacheAsBitmap = true;
         this.clip = _loc4_;
         this.x = param1.x;
         this.y = param1.y;
         this.color = param2;
         this.§]#n§ = param1;
         addEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.§@$I§.§1$+§(this);
         this.§8#_§ = §0$N§.§%! §(§1%B§[int(colors.indexOf(param2))]);
         this.§<$U§();
      }
      
      public static function create(param1:Point) : §+%q§
      {
         return new §+%q§(param1,§""L§.§=!W§(colors,§8"%§.randomSeed));
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physicModel = new §;$S§(physParams);
         stable = true;
      }
      
      public function §<$U§() : void
      {
         if(this.§8#_§ != "")
         {
            if(this.hint)
            {
               this.hint.destroy();
            }
            this.hint = new §4#_§(clip);
            this.hint.§<"b§ = true;
            this.hint.setQtip(this.§8#_§,§;#^§.DEFAULT,§+"'§.§1$n§);
            §;s§(true);
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         §1"-§.explode(§;n§.§@"W§,x,y,15,§`!v§.§>l§);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.hint)
         {
            this.hint.destroy();
         }
         super.§[$u§(param1);
      }
      
      public function §?!+§() : uint
      {
         return this.color;
      }
      
      public function get point() : Point
      {
         return this.§]#n§;
      }
   }
}

