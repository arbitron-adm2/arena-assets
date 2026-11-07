package §9%4§
{
   import § $q§.§<"]§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"%H§.§`"w§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2!-§.DamageEvent;
   import §2#H§.§+N§;
   import §2#H§.§`#D§;
   import §2#i§.§+%z§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$1§.§3&G§;
   import §8#a§.§>!o§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §?$K§.§=z§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@"x§.*;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'!T§ extends §]$Z§
   {
      
      §§push(§§findproperty(§3!;§));
      var _temp_3:* = new <int>[§+%z§.FROST_STASIS,§+%z§.DRILL,§+%z§.DRILL_UPG_1,§+%z§.DRILL_UPG_2,§+%z§.BLOW_TORCH,§+%z§.BLOW_TORCH_UPG_1,§+%z§.BLOW_TORCH_UPG_2];
      var _temp_6:* = new <int>[§+%z§.FROST_STASIS,§+%z§.DRILL,§+%z§.DRILL_UPG_1,§+%z§.DRILL_UPG_2,§+%z§.BLOW_TORCH,§+%z§.BLOW_TORCH_UPG_1,§+%z§.BLOW_TORCH_UPG_2];
      
      private static const §3!;§:Vector.<int> = new <int>[§+%z§.FROST_STASIS,§+%z§.DRILL,§+%z§.DRILL_UPG_1,§+%z§.DRILL_UPG_2,§+%z§.BLOW_TORCH,§+%z§.BLOW_TORCH_UPG_1,§+%z§.BLOW_TORCH_UPG_2];
      
      private static const §]!s§:§&$2§ = new §&$2§(2);
      
      private static const §9!"§:uint = 200;
      
      private var sphere:MovieClip;
      
      public function §'!T§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
      }
      
      override protected function setup() : void
      {
         var _loc1_:uint = 0;
         super.setup();
         if(Boolean(this.sphere) && Boolean(this.sphere.parent))
         {
            this.sphere.parent.removeChild(this.sphere);
         }
         if(Application.instance.§#&7§())
         {
            _loc1_ = §5%8§.§75§(owner.squad.getNumber()).§=%%§;
            this.sphere = §1"-§.§!#=§(_loc1_,§9!"§ + §<H§.§,%P§);
            clip.addChild(this.sphere);
         }
      }
      
      override protected function §8$n§(param1:Event) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:Point = null;
         _loc2_ = §8"%§.§?!W§.§4"m§.§5#h§();
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(x,y,§9!"§,_loc2_);
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = §=z§.§-L§(_loc4_);
            §1"-§.§2$O§(this,_loc4_,12,10,6068463,8);
            §1"-§.§`$Q§(_loc4_.x,_loc4_.y,§1"-§.§9a§);
            §'"$§.§]#I§(owner,_loc4_.x,_loc4_.y,_loc4_,paramSet.damage.value,0,0,true,true,§&!E§.§=$-§,true,false);
            if(_loc5_)
            {
               §=z§.§5!u§(_loc4_,_loc5_);
            }
            §7%g§.§-#R§(_loc4_,§]!s§.value,§3!;§.concat());
         }
         if(_loc3_.length)
         {
            §@%;§.play(§`!v§.§`%9§);
            ++§]&#§.value;
         }
         super.§8$n§(param1);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(Boolean(this.sphere) && Boolean(this.sphere.parent))
         {
            this.sphere.parent.removeChild(this.sphere);
         }
      }
   }
}

