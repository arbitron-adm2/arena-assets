package §3#T§
{
   import § %f§.§##d§;
   import § &5§.§=#P§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §%&6§.§2$v§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4!K§.§^%A§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<!^§.§["l§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import com.adobe.serialization.json.JSONEncoder;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §;'§ extends §6#I§ implements §^%c§
   {
      
      private static const NAME:String = "RADIO_MAST";
      
      private static const § "h§:String = "RadarAm";
      
      private static const HP:int = 100;
      
      private static const §;#<§:§&$2§ = new §&$2§(40);
      
      private var bar:§%&F§;
      
      private var §8<§:§]$q§;
      
      private var §4!l§:MovieClip;
      
      private var §>"<§:MovieClip;
      
      private var squad:§"Z§;
      
      public function §;'§(param1:Point, param2:§+%]§)
      {
         super(param2,param1.x,param1.y,false,0);
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         this.squad = param2.squad;
         clip = §6#A§.§!&6§(§ "h§);
         this.§4!l§ = MovieClip(clip.getChildByName("active"));
         this.§>"<§ = MovieClip(clip.getChildByName("idle"));
         clip.name = § "h§;
         this.§]$r§(false);
         §8%g§ = new §9"u§(this,HP,0,0);
         physParams.§5N§ = §9%1§.§&!A§;
         physParams.§0#0§ = §<#`§.§&!c§;
         canBeDamaged = true;
         physicModel.keepUnstable = false;
         stable = true;
         x = param1.x;
         y = param1.y;
         this.bar = new §[N§(param2,§0$N§.§%! §("RADIO_MAST.NAME"),(height >> 1) + 10);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.§@$I§.§1$+§(this);
         this.§8<§ = new §]$q§(NAME);
         this.§8<§.§3%<§(new §@"I§(Bonus.AIR_DAMAGE,§;#<§.value));
      }
      
      private function §@%D§(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Boolean = this.activate();
         for each(_loc3_ in this.squad.§1!n§())
         {
            if(_loc2_ && !_loc3_.bonuses.§#&$§(NAME))
            {
               _loc3_.bonuses.§]!X§(this.§8<§);
            }
            else if(_loc3_.bonuses.§#&$§(NAME))
            {
               _loc3_.bonuses.§9=§(this.§8<§);
            }
         }
         this.§]$r§(_loc2_);
      }
      
      private function activate() : Boolean
      {
         var _loc4_:§+%]§ = null;
         var _loc1_:Point = §>#9§.§>@§(x,y,0,-y);
         var _loc2_:Vector.<§+%]§> = this.squad.§1!n§();
         var _loc3_:§+%]§ = §8"%§.§?!W§.§4"m§.activeUnit;
         for each(_loc4_ in _loc2_)
         {
            if(_loc3_ == _loc4_)
            {
               return !_loc1_;
            }
         }
         return false;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         for each(_loc2_ in this.squad.§1!n§())
         {
            if(_loc2_.bonuses.§#&$§(NAME))
            {
               _loc2_.bonuses.§9=§(this.§8<§);
            }
         }
         §1"-§.explode(§;n§.§1"E§,x,y - height * 0.5,width * 0.5,§`!v§.§["s§);
         super.§[$u§(param1);
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         super.§%$e§(param1);
         if(!param1.other)
         {
            setSpeedXY(0,0);
            stable = true;
         }
      }
      
      private function §]$r§(param1:Boolean) : void
      {
         this.§4!l§.visible = param1;
         this.§>"<§.visible = !param1;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}

