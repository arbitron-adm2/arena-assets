package §^§
{
   import §"$+§.§^$`§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §0%[§.§""n§;
   import §1!J§.§"t§;
   import §3#T§.§;#Q§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §;&2§.§!#W§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import avmplus.getQualifiedClassName;
   import config.§=%A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<"'§
   {
      
      protected var log:§&`§;
      
      private var §&!>§:Array;
      
      public function §<"'§()
      {
         super();
      }
      
      protected function §%$-§(param1:String) : String
      {
         if(!this.§&!>§)
         {
            this.§&!>§ = [];
         }
         this.§&!>§.push(param1);
         return §<"G§.§%! §(param1,false);
      }
      
      public function §4!E§() : Boolean
      {
         var _loc2_:String = null;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§&!>§)
         {
            if(!§<"G§.§%! §(_loc2_))
            {
               this.log.§3"l§("MSG NOT FOUND BY KEY: " + _loc2_);
               _loc1_ = true;
            }
         }
         return !_loc1_;
      }
   }
}

