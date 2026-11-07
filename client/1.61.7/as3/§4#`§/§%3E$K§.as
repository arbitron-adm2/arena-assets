package §4#`§
{
   import § !8§.§`!d§;
   import § m§.§9!^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§`"w§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-&5§.*;
   import §-8§.§3!x§;
   import §0!§.§6#z§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §4!!§.§2&F§;
   import §4#2§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §9"-§.§?!s§;
   import §<!W§.§;#A§;
   import §=&!§.§<$Z§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §>$K§
   {
      
      private static const §5A§:uint = 3;
      
      private static var §"!l§:Array = [];
      
      private static var §4%-§:Array = [];
      
      private static var §>!D§:Array = [];
      
      private static var §[q§:uint = 0;
      
      public function §>$K§()
      {
         super();
      }
      
      public static function init(param1:Array, param2:Array, param3:Array) : void
      {
         §>$K§.§"!l§ = param1;
         §>$K§.§4%-§ = param2;
         §>$K§.§>!D§ = param3;
      }
      
      public static function activate() : void
      {
         if(Application.scene)
         {
            Application.scene.addEventListener(§0%v§.DAMAGE,§>%;§);
         }
         §[q§ = 0;
      }
      
      public static function deactivate() : void
      {
         if(Application.scene)
         {
            Application.scene.removeEventListener(§0%v§.DAMAGE,§>%;§);
         }
      }
      
      public static function §5&?§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(§8"%§.§?!W§.§4"m§.activeUnit) && §8"%§.§&S§.§2%O§())
         {
            _loc1_ = Math.random() * §"!l§.length;
            _loc2_ = String(§"!l§[_loc1_]).replace("%source%",§8"%§.§?!W§.§4"m§.activeUnit.record.getCharName() || §0$N§.TAUNTS_SOURCE);
            §>&-§.§[$9§(_loc2_,true);
         }
         §[q§ = 0;
      }
      
      private static function §>%;§(param1:DamageEvent) : void
      {
         var _loc3_:§6#I§ = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(!§8"%§.§&S§.§2%O§())
         {
            return;
         }
         var _loc2_:§+%]§ = param1.victim as §+%]§;
         if(Boolean(_loc2_) && Boolean(_loc2_.squad) && §[q§++ < §5A§)
         {
            _loc3_ = param1.source as §6#I§;
            _loc4_ = _loc3_ ? _loc3_.owner : null;
            if(_loc4_)
            {
               _loc5_ = _loc4_ == _loc2_ ? §>!D§ : §4%-§;
               _loc6_ = Math.random() * _loc5_.length;
               _loc7_ = String(_loc5_[_loc6_]).replace("%source%",§+%]§(§6#I§(param1.source).owner).record.getCharName() || §0$N§.TAUNTS_SOURCE).replace("%target%",§+%]§(param1.victim).record.getCharName() || §0$N§.TAUNTS_TARGET);
               §>&-§.§[$9§(_loc7_);
            }
         }
      }
   }
}

