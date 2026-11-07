package §2!0§
{
   import § #m§.§;#^§;
   import § &5§.Water;
   import § K§.§^#V§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §&&6§.*;
   import §'!Z§.§2!%§;
   import §'"N§.*;
   import §+%Q§.§+$#§;
   import §-%B§.*;
   import §0%[§.§%"'§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.§^$y§;
   import §2#H§.§<§;
   import §2#x§.§]s§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §8#`§.§8!&§;
   import §9$-§.§!$W§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §=&6§.§8c§;
   import §?"[§.§6#o§;
   import §?$K§.§`""§;
   import §?>§.§]!V§;
   import §@<§.§+%]§;
   import §[#q§.§",§;
   import §^#[§.§&$2§;
   import §`v§.§!V§;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.social.facebook.controller.§8"x§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §=&%§
   {
      
      public function §=&%§()
      {
         super();
      }
      
      public static function create(param1:§%"'§, param2:§1#+§) : §^#V§
      {
         switch(param2.getType())
         {
            case §7"n§.VK:
               return new §",§(param1,§]s§(param2));
            case §7"n§.OK:
               return new §8c§(param1,param2,new §!$W§());
            case §7"n§.FB:
               return new §8"x§(param1,param2,new §!V§());
            case §7"n§.MM:
               return new §6#o§(param1,param2,new §+$#§());
            default:
               return new §##Z§(param1,param2,new §8!&§(),null);
         }
      }
   }
}

