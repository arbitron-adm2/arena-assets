package §[%§
{
   import § &5§.§=#P§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §&#h§.§-"F§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §4#2§.§,%g§;
   import §5!9§.§6$,§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §;!Z§.§5"d§;
   import §<!W§.§?$S§;
   import §<%c§.*;
   import §=#g§.*;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import §[$P§.§3%v§;
   import §^"I§.*;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Dragon extends §+%]§
   {
      
      public static const §&%v§:String = "DragonFly";
      
      private var §8"§:§3%v§;
      
      public function Dragon(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         attributes.jump = this.§8"§ = new §3%v§(this,attributes.jump);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         if(param1.getRace().§%§(§`!a§.§#%R§).getLevel() <= param1.getLevel())
         {
            buffs.place(new §?$S§());
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.§8"§.§'!b§();
      }
      
      override public function §3C§() : Boolean
      {
         return Boolean(super.§3C§()) && this.§8"§.§ %y§;
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.§8"§.§3$s§();
      }
      
      override public function §!!>§() : void
      {
         this.§8"§.§!!>§();
         super.§!!>§();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         this.§8"§.§'!b§();
         super.§""0§(param1);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§8"§.§'!b§();
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         super.§[$u§(param1);
      }
      
      public function flyLeftPressed() : void
      {
         turn(§+%]§.LEFT);
         this.§8"§.flyLeftPressed();
      }
      
      public function flyLeftReleased() : void
      {
         this.§8"§.flyLeftReleased();
      }
      
      public function flyRightPressed() : void
      {
         turn(§+%]§.RIGHT);
         this.§8"§.flyRightPressed();
      }
      
      public function flyRightReleased() : void
      {
         this.§8"§.flyRightReleased();
      }
      
      public function flyDownPressed() : void
      {
         this.§8"§.flyDownPressed();
      }
      
      public function flyDownReleased() : void
      {
         this.§8"§.flyDownReleased();
      }
      
      public function jumpPressed() : void
      {
         this.§8"§.jumpPressed();
      }
      
      public function flyUpReleased() : void
      {
         this.§8"§.flyUpReleased();
      }
      
      public function flyUpPressed() : void
      {
         this.§8"§.flyUpPressed();
      }
      
      public function § "]§() : Boolean
      {
         return this.§8"§.§ "]§();
      }
   }
}

