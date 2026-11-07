package § "I§
{
   import §&"c§.§5$n§;
   import §2#x§.*;
   import §3#T§.§;#Q§;
   import §4!!§.§'$V§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?#g§.§&"P§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   
   public class §,!D§
   {
      
      private static var instance:§,!D§ = new §,!D§();
      
      private var §&$b§:LocalConnection;
      
      private var channelName:String;
      
      private var §1",§:Boolean = true;
      
      public function §,!D§()
      {
         super();
         this.channelName = "_pragmatix_progress_bar_";
         this.§&$b§ = new LocalConnection();
         this.§&$b§.allowDomain("*");
         this.§&$b§.addEventListener(StatusEvent.STATUS,this.§&!7§);
      }
      
      public static function init(param1:Object) : void
      {
         instance.channelName = param1.channelName || "_pragmatix_progress_bar_";
      }
      
      public static function publish(param1:int) : void
      {
         if(§,!D§.instance.§1",§)
         {
            §,!D§.instance.§&$b§.send(§,!D§.instance.channelName,"progress",param1);
         }
      }
      
      private function §&!7§(param1:StatusEvent) : void
      {
         if(param1.level == "error")
         {
            this.§1",§ = false;
         }
      }
   }
}

