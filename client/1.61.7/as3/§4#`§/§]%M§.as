package §4#`§
{
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.*;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §1#p§.§"Z§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]%M§ extends §`&-§
   {
      
      private var bar:DisplayObject;
      
      private var §+!5§:int;
      
      public function §]%M§()
      {
         super(§6#A§.§!&6§(§+"'§.§5$X§));
         this.§+!5§ = §#!`§().getChildByName("back").width - 1;
         this.bar = §#!`§().getChildByName("bar");
      }
      
      public function update(param1:int) : void
      {
         setVisible(§9%1§.§;%@§ != param1);
         this.bar.width = this.§+!5§ / §9%1§.§;%@§ * (§9%1§.§;%@§ - param1);
      }
   }
}

