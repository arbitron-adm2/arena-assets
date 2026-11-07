package
{
   import § #m§.§;#^§;
   import §"$+§.§^$`§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§6!?§;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§!$A§;
   import §3#a§.§-!`§;
   import §7$t§.§;#_§;
   import §?#g§.Race;
   import §?%J§.*;
   import §@"x§.CommonSettingsMenu;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^!]§.TeleportEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   public class §'!x§
   {
      
      public function §'!x§(param1:Stage)
      {
         super();
         param1.addEventListener(KeyboardEvent.KEY_DOWN,this.§,$F§);
      }
      
      private function §,$F§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = §8"%§.§?!W§.inBattle;
         switch(param1.keyCode)
         {
            case §3!f§.PHOTO:
               if(param1.ctrlKey && Social.settings.§2$@§() && !(_loc2_ || §8"%§.§?!W§.§3#r§))
               {
                  Application.instance.§1s§().§!#7§();
               }
               break;
            case §3!f§.§`#E§:
               if(param1.ctrlKey)
               {
                  Application.instance.§+#$§();
               }
               break;
            case §]2§.§"+§:
               break;
            case §3!f§.§="K§:
            case §3!f§.§,!u§:
               if(param1.ctrlKey)
               {
                  §8"%§.§^%W§.§5$q§();
               }
               break;
            case §3!f§.§`$_§:
               if(param1.ctrlKey)
               {
                  Application.§5!>§.§1$i§.§&#"§();
               }
               break;
            case §3!f§.§>%E§:
               if(param1.ctrlKey)
               {
                  Application.§5!>§.§<!z§.§!#9§();
               }
               break;
            case §3!f§.§`%K§:
               if(param1.ctrlKey && _loc2_)
               {
                  Application.scene.§7#o§.chat.§!#9§();
               }
               break;
            case §3!f§.§1-§:
               if(param1.ctrlKey)
               {
                  §8"%§.§&S§.§4"[§();
               }
               break;
            case §3!f§.§8H§:
               if(param1.ctrlKey)
               {
                  CommonSettingsMenu.getInstance().§^2§();
               }
               break;
            case §3!f§.§"&E§:
               if(param1.ctrlKey)
               {
                  CommonSettingsMenu.getInstance().§&%R§();
               }
               break;
            case §3!f§.§@!e§:
               if(param1.ctrlKey)
               {
                  Application.§5!>§.§1$i§.§>$W§();
               }
               break;
            case §3!f§.§"$>§:
               if(param1.ctrlKey)
               {
                  CommonSettingsMenu.getInstance().§!C§();
               }
               break;
            case §3!f§.§7%X§:
            case §3!f§.§]%Y§:
               if(param1.ctrlKey)
               {
                  CommonSettingsMenu.getInstance().§2$E§.§8$o§();
               }
               break;
            case §3!f§.§?%,§:
            case §3!f§.§?&3§:
               if(param1.ctrlKey)
               {
                  CommonSettingsMenu.getInstance().§2$E§.§<$a§();
               }
         }
      }
   }
}

