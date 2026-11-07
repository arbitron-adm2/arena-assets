package §2#H§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'$Z§.ClanDescriptionPopup;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§73§;
   import §+%S§.§?3§;
   import §+%S§.§[&;§;
   import §,#c§.ArenaMenu;
   import §-"N§.§"k§;
   import §-%B§.*;
   import §0%z§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#0§.§;!L§;
   import §1#p§.*;
   import §1&-§.§-#B§;
   import §2#i§.§+%z§;
   import §2B§.§&!Y§;
   import §3#a§.§-#M§;
   import §4#`§.§+!l§;
   import §4&F§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§`s§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%k§.§0"^§;
   import §<!W§.§#&#§;
   import §<%k§.*;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §>!_§.*;
   import §?#g§.§-!k§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[%§.Dragon;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiServerEvent;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.StatusEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § #1§ extends §%%o§
   {
      
      public static const NAME:String = "RADIATION";
      
      private static const DAMAGE:uint = 100;
      
      private static const §2$2§:uint = 46;
      
      private static const §4"3§:uint = 6;
      
      private const §6!6§:Array = [];
      
      private var §""k§:Boolean = false;
      
      private var count:uint = 0;
      
      private var owner:§+%]§;
      
      public function § #1§(param1:§+%]§)
      {
         super(NAME,-1);
         this.owner = param1;
         this.§6!6§.push(this.§&p§);
         this.§6!6§.push(this.§<M§);
         this.§6!6§.push(this.§]$8§);
         this.§6!6§.push(this.§%#Y§);
         §""L§.§6$6§(this.§6!6§);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§^% §);
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.SOT,this.§^% §);
         }
      }
      
      private function §^% §(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            this.§""k§ = false;
         }
      }
      
      public function activated() : void
      {
         var _loc1_:Function = null;
         if(!this.§""k§)
         {
            this.§""k§ = true;
            ++this.count;
            §'"$§.§]#I§(null,unit.x,unit.y,unit,DAMAGE * this.count,0,0,false,true);
            for each(_loc1_ in this.§6!6§)
            {
               if(_loc1_())
               {
                  return;
               }
            }
         }
      }
      
      private function §<M§() : Boolean
      {
         if(!unit.buffs.hasBuff(§[&;§.NAME))
         {
            unit.buffs.place(new §73§(§2$2§,§4"3§));
            return true;
         }
         return false;
      }
      
      private function §&p§() : Boolean
      {
         if(!unit.buffs.hasBuff(§+m§.NAME))
         {
            unit.buffs.place(new §+m§(this.owner,§4"3§));
            return true;
         }
         return false;
      }
      
      private function §]$8§() : Boolean
      {
         if(!unit.buffs.hasBuff(§ !!§.NAME))
         {
            §7%g§.§>!%§(unit,this.owner,§4"3§);
            return true;
         }
         return false;
      }
      
      private function §%#Y§() : Boolean
      {
         if(!unit.buffs.hasBuff(§[&;§.NAME))
         {
            unit.buffs.place(new §[&;§());
            return true;
         }
         return false;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new § #1§(this.owner));
      }
   }
}

