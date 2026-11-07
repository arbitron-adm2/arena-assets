package §+%S§
{
   import § L§.§`T§;
   import §!$d§.§<$c§;
   import §%"1§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%"§.§[!^§;
   import §0%[§.§%#w§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1&-§.§4!s§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §4%_§.§3§;
   import §7$1§.§3&G§;
   import §7$t§.§[!X§;
   import §;!J§.*;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §?!E§.*;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginErrorType;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §2&>§ extends §,"R§
   {
      
      public static const NAME:String = "FROST_STASIS_BUFF";
      
      private static const HEAL:§&$2§ = new §&$2§(10);
      
      private static const § !I§:String = "FrostStasisIdle";
      
      private static const §,#&§:String = "FrostStasisAppear";
      
      private static const §5#D§:Array = [§1%I§.NAME,§+m§.NAME];
      
      private var faceMaker:§^#%§;
      
      private var §+"w§:int = -1;
      
      public function §2&>§(param1:Boolean = true)
      {
         §@%;§.play(§`!v§.§+Q§);
         this.faceMaker = §^#%§(Application.scene.§@$I§.§5# §(§^#%§));
         var _loc2_:§6S§ = new §6S§(§ !I§,param1 ? §,#&§ : § !I§,§ !I§,false,false);
         super(_loc2_,NAME);
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         this.faceMaker.stop(unit,true);
         unit.buffs.§6C§(§+m§.NAME);
         unit.addEventListener(§0%v§.UNIT_ACTIVATION,this.§=!^§);
         unit.§3%1§(true);
         unit.graphics.§!$B§();
         unit.graphics.lock();
         var _loc1_:§4!s§ = §4!s§(unit.buffs.getBuff(§4!s§.§!!Y§));
         if(_loc1_)
         {
            this.§+"w§ = _loc1_.getValue();
            _loc1_.setValue(HEAL.value);
         }
         else
         {
            unit.buffs.place(new §4!s§(HEAL.value,-1,true,true));
         }
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:§4!s§ = null;
         super.§0&"§();
         if(!§&%M§)
         {
            §1"-§.§8%8§(unit.x,unit.y,20);
            §@%;§.play(§`!v§.§`'§);
            this.faceMaker.stop(unit,false);
            if(!unit.buffs.§%%b§(§5#D§))
            {
               unit.§3%1§(false);
            }
            unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§=!^§);
            unit.graphics.unlock();
            unit.§2!W§();
            _loc1_ = §4!s§(unit.buffs.getBuff(§4!s§.§!!Y§));
            if(Boolean(_loc1_) && this.§+"w§ != -1)
            {
               _loc1_.setValue(this.§+"w§);
            }
            else
            {
               unit.buffs.§6C§(§4!s§.§!!Y§);
            }
         }
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         §1"-§.§8%8§(unit.x,unit.y,5);
         super.§?$u§(param1);
      }
      
      private function §=!^§(param1:Event) : void
      {
         unit.buffs.§6C§(NAME);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §2&>§());
      }
   }
}

