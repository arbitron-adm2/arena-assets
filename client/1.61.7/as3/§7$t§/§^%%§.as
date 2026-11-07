package §7$t§
{
   import §!L§.§+"'§;
   import §"$+§.*;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §7!B§.§&"T§;
   import §8$Z§.§9"t§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §^%%§ extends §=?§
   {
      
      private var handFront:Boolean = true;
      
      private var handVisible:Boolean = true;
      
      public function §^%%§()
      {
         super(§]$q§.OFF_HAND);
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         if(param1.handFront != null)
         {
            this.handFront = param1.handFront;
         }
         if(param1.handVisible != null)
         {
            this.handVisible = param1.handVisible;
         }
         super.initFromConfig(param1);
      }
      
      override public function §%&9§(param1:Object) : void
      {
         super.§%&9§(param1);
         if(param1)
         {
            if(param1.iconClassName)
            {
               §""y§(param1.iconClassName);
            }
            if(param1.menuIcon)
            {
               §#!h§(param1.menuIcon);
            }
         }
      }
      
      public function §'L§() : Boolean
      {
         return this.handFront;
      }
      
      public function §4$ §() : Boolean
      {
         return this.handVisible;
      }
   }
}

