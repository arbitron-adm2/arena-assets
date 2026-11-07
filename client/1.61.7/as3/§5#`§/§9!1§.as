package §5#`§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§6$V§;
   import §4f§.§-&§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §<!W§.§3#M§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §@<§.§+%]§;
   import §`"p§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §9!1§ extends §&"T§
   {
      
      private var §'%X§:§"Z§;
      
      private var § %<§:§5$n§;
      
      private var §0##§:Boolean = true;
      
      public function §9!1§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean)
      {
         super();
         this.x = param2;
         this.y = param3;
         this.§'%X§ = param1.squad;
         this.§ %<§ = param4;
         canBeDamaged = true;
         stable = true;
         addEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.§0##§ = false;
         if(!disposed && §8"%§.§?!W§.§4"m§.activeSquad == this.§'%X§)
         {
            §'"$§.§]#I§(null,x,y,null,this.§ %<§.damage.value,this.§ %<§.damageRadius.value,this.§ %<§.explosionRadius.value,false);
            §1"-§.explode(§;n§.MEDIUM,x,y,this.§ %<§.explosionRadius.value,§`!v§.§2#u§);
            disposed = true;
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         if(!this.§0##§ && !§>#9§.point(x,y))
         {
            super.§""0§(param1);
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.§'%X§ = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
      }
   }
}

