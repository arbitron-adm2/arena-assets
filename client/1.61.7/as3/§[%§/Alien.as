package §[%§
{
   import § !P§.*;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §%L§.§%%w§;
   import §'!Z§.§6S§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §4#2§.§,%g§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §9"-§.§5#-§;
   import §<!W§.§!"+§;
   import §<%c§.*;
   import §=#g§.*;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class Alien extends §+%]§
   {
      
      public static const §?"m§:String = "Immune";
      
      private const §1!A§:Array = [§,"R§.§5!d§,§2&>§.NAME,§!"+§.NAME];
      
      private const §5#D§:Array = [§2&>§.NAME,§1%I§.NAME,§+m§.NAME];
      
      public function Alien(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         addEventListener(§0%v§.§&!D§,this.§?$u§,false,§[!F§.§##c§);
         addEventListener(§0%v§.UNIT_ACTIVATION,this.§ $r§);
      }
      
      public function §?$u§(param1:DamageEvent) : void
      {
         var _loc3_:§6S§ = null;
         var _loc2_:Boolean = Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeSquad == squad;
         if(!_loc2_ && hp - param1.power < 1 && !buffs.§%%b§(this.§1!A§))
         {
            param1.power = hp - 1;
            _loc3_ = new §6S§("AlienCrystalIdle","AlienCrystalAppear","AlienCrystalFade");
            buffs.place(new §,"R§(_loc3_,§,"R§.§5!d§));
            buffs.place(new §!"+§());
            if(squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.§^!B§ = true;
            }
            graphics.§6w§(graphics.§6%z§().racePrefix + §?"m§,true);
            graphics.lock();
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == this)
         {
            this.§ $r§();
         }
      }
      
      private function § $r§(param1:Event = null) : void
      {
         if(buffs.hasBuff(§,"R§.§5!d§) && !disposed)
         {
            buffs.§6C§(§,"R§.§5!d§);
            graphics.unlock();
            §2!W§();
            if(isImmobile() && !buffs.§%%b§(this.§5#D§))
            {
               §3%1§(false);
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         removeEventListener(§0%v§.UNIT_ACTIVATION,this.§ $r§);
         removeEventListener(§0%v§.§&!D§,this.§?$u§);
         super.§[$u§(param1);
      }
   }
}

