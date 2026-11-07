package §'!Z§
{
   import § &5§.§0&$§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §@!i§.§8%6§;
   import §@!i§.§;#L§;
   import §^§.§8$y§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class §2!%§
   {
      
      public static const §`#F§:GlowFilter = new GlowFilter(§;#L§.§+"6§,1,10,10,0.6,BitmapFilterQuality.LOW);
      
      public static const §9%6§:GlowFilter = new GlowFilter(§;#L§.§+"6§,1,10,10,0.6,BitmapFilterQuality.LOW,true);
      
      public static const §&%x§:GlowFilter = new GlowFilter(§;#L§.§^&>§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §6$x§:GlowFilter = new GlowFilter(§;#L§.§^&>§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §'#,§:GlowFilter = new GlowFilter(§;#L§.GOLD,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §'&5§:GlowFilter = new GlowFilter(§;#L§.GOLD,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §+$V§:GlowFilter = new GlowFilter(§;#L§.§2!Q§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §!!#§:GlowFilter = new GlowFilter(§;#L§.§2!Q§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §%'§:GlowFilter = new GlowFilter(§;#L§.§%$b§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §0?§:GlowFilter = new GlowFilter(§;#L§.§%$b§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §+&%§:GlowFilter = new GlowFilter(§;#L§.§#^§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const § "f§:GlowFilter = new GlowFilter(§;#L§.§#^§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §6%P§:GlowFilter = new GlowFilter(§;#L§.§5g§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §1#=§:GlowFilter = new GlowFilter(§;#L§.§5g§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §?!w§:GlowFilter = new GlowFilter(§;#L§.§8#r§,1,10,10,1.5,BitmapFilterQuality.LOW);
      
      public static const §@t§:GlowFilter = new GlowFilter(§;#L§.§8#r§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §+-§:GlowFilter = new GlowFilter(§;#L§.§+!c§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §^!L§:GlowFilter = new GlowFilter(§;#L§.§+!c§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §!!z§:GlowFilter = new GlowFilter(§;#L§.§3# §,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §^"=§:GlowFilter = new GlowFilter(§;#L§.§3# §,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §,"-§:GlowFilter = new GlowFilter(§;#L§.§"#=§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §[$n§:GlowFilter = new GlowFilter(§;#L§.§"#=§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §?"5§:GlowFilter = new GlowFilter(§;#L§.§[%a§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §2"S§:GlowFilter = new GlowFilter(§;#L§.§[%a§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §=!+§:GlowFilter = new GlowFilter(§;#L§.§+#p§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §]!B§:GlowFilter = new GlowFilter(§;#L§.§+#p§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const GLOW_DARKRED2:GlowFilter = new GlowFilter(§;#L§.DARKRED2,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const GLOW_DARKRED2_INNER:GlowFilter = new GlowFilter(§;#L§.DARKRED2,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §3Z§:GlowFilter = new GlowFilter(§;#L§.§ B§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §%#H§:GlowFilter = new GlowFilter(§;#L§.§ B§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const § %'§:GlowFilter = new GlowFilter(§;#L§.§?#[§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §,$w§:GlowFilter = new GlowFilter(§;#L§.§?#[§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §1!;§:GlowFilter = new GlowFilter(§;#L§.§^$J§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §]!@§:GlowFilter = new GlowFilter(§;#L§.§^$J§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §`$c§:GlowFilter = new GlowFilter(§;#L§.§#!B§,1,10,10,1,BitmapFilterQuality.LOW);
      
      public static const §`!4§:GlowFilter = new GlowFilter(§;#L§.§#!B§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public static const §1!f§:GlowFilter = new GlowFilter(§;#L§.§"f§,1,10,10,1.5,BitmapFilterQuality.LOW);
      
      public static const §^!r§:GlowFilter = new GlowFilter(§;#L§.§"f§,1,10,10,1,BitmapFilterQuality.LOW,true);
      
      public function §2!%§()
      {
         super();
      }
      
      public static function §;$2§(param1:DisplayObject, param2:§&!e§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         if(§8"%§.§&S§.§ #J§() && (§!#^§.§7%#§(param2.getId()) || §!#^§.§3&5§(param2.getId())) && §#&>§.§^7§(param2.getId()))
         {
            _loc3_ = BitmapFilterQuality.MEDIUM;
            switch(§8"%§.§&S§.§;#b§())
            {
               case StageQuality.BEST:
               case StageQuality.HIGH:
                  _loc3_ = BitmapFilterQuality.HIGH;
                  break;
               case StageQuality.MEDIUM:
                  _loc3_ = BitmapFilterQuality.MEDIUM;
                  break;
               case StageQuality.LOW:
                  _loc3_ = BitmapFilterQuality.LOW;
            }
            _loc4_ = §#&>§.§3Q§(param2.getId()).§9"3§();
            for each(_loc5_ in _loc4_)
            {
               if(_loc5_.hasOwnProperty("quality"))
               {
                  _loc5_.quality = _loc3_;
               }
            }
            param1.filters = _loc4_;
         }
      }
   }
}

