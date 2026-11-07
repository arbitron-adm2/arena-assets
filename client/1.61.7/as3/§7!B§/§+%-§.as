package §7!B§
{
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §[%'§.§<"G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §+%-§ extends §&"T§
   {
      
      private static var §7"A§:Class;
      
      private var arrow:MovieClip = null;
      
      public function §+%-§(param1:int, param2:int, param3:Boolean = false)
      {
         var clipClass:Class;
         var clip:MovieClip;
         var x:int = param1;
         var y:int = param2;
         var toBackground:Boolean = param3;
         super();
         canBeDamaged = true;
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physParams.§0#0§ = §<#`§.§&!c§;
         addEventListener(§0%v§.§&!D§,this.§?$u§);
         addEventListener(§0%v§.§+&=§,function(param1:Event):void
         {
            §@%;§.play(§`!v§.BONUS);
         });
         clipClass = §6#A§.getClass(§+"'§.§4#M§);
         clip = new clipClass();
         this.x = x;
         this.y = y;
         this.clip = clip;
         physParams.§0%m§(0,§4!<§ / 2);
         Application.scene.§@$I§.§1$+§(this,toBackground);
      }
      
      private static function §;p§() : Class
      {
         if(§7"A§ == null)
         {
            §7"A§ = §6#A§.getClass("LearningMissionMarkExplosion");
         }
         return §7"A§;
      }
      
      public function showArrow(param1:uint = 2) : void
      {
         if(stable)
         {
            this.§!&>§(param1);
         }
         else
         {
            §8$a§.§&!#§(physicModel,§9#1§.STABLE,§1%"§.§]$<§(this.§!&>§,this,[param1]));
         }
      }
      
      private function §!&>§(param1:uint) : void
      {
         this.arrow = Application.scene.§[&3§(§+"'§.§]"0§,x,y - clip.height / 2);
         this.arrow.gotoAndStop(param1);
      }
      
      private function §?$u§(param1:Event) : void
      {
         §1"-§.explode(§;p§(),x,y,0,§`!v§.§["s§);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.arrow)
         {
            Application.scene.§9$_§(this.arrow);
         }
      }
   }
}

