package §@c§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §4$b§.§6!G§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<$q§.§,%3§;
   import §="z§.§9%1§;
   import §?#g§.§-!k§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§8%R§;
   import §[%§.*;
   import §^#[§.§&$2§;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §;##§ extends §&"T§ implements §^%c§
   {
      
      private static const §5!T§:int = 30;
      
      private static const R:Number = 0.6;
      
      private static const G:Number = 0.6;
      
      private static const B:Number = 1;
      
      private static const A:Number = 0.7;
      
      private var bar:§%&F§;
      
      private var owner:§+%]§;
      
      private var §!%S§:Vector.<§+%]§>;
      
      public function §;##§(param1:§+%]§, param2:int, param3:int, param4:int)
      {
         super();
         this.owner = param1;
         this.§8&8§();
         this.x = param2;
         this.y = param3;
         stable = true;
         §8%g§ = new §9"u§(this,param4,0,0);
         this.bar = new § #3§(param1.squad.getNumber(),§0$N§.§<N§("BOSS_SOUL_PART_NAME"),20);
         this.bar.§]%d§();
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         this.§!%S§ = new <§+%]§>[param1];
      }
      
      public function §8&8§() : void
      {
         var _loc1_:§6!G§ = new §6!G§(this.owner.record.getRace(),this.owner.record.§5"L§());
         _loc1_.§7"i§(this.owner.record.§2u§());
         _loc1_.§;"U§(this.owner.record.§+!b§());
         _loc1_.§!$B§();
         §!%8§ = _loc1_.getClip();
         §!%8§.transform.colorTransform = new ColorTransform(R,G,B,A);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!this.owner.disposed && §<H§.§5"]§(x,y,§5!T§,this.§!%S§).length > 0)
         {
            this.owner.attributes.hp.§#1§(§8%g§.hp.value,false,0);
            disposed = true;
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(!disposed)
         {
            §1"-§.§`$Q§(x,y,this.owner.record.getRace().soulType,0.035,false);
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}

