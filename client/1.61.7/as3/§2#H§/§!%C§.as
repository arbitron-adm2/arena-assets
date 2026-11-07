package §2#H§
{
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §&&6§.§8"O§;
   import §'!Z§.§2!H§;
   import §'!Z§.§6S§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §-%B§.§-"o§;
   import §0%[§.*;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2#8§.§&q§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §4^§.§4!w§;
   import §5!9§.§6$,§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§^#O§;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §?$K§.§3#j§;
   import §@!N§.§3!3§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[%§.Cat;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import config.§5%T§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!%C§ extends §,"R§
   {
      
      public static const NAME:String = "ELEMENTS_BUFF";
      
      private var §+!4§:Array = [];
      
      public function §!%C§(param1:§6S§ = null)
      {
         super(param1,NAME);
      }
      
      public function §]O§(param1:Vector.<§&!E§>) : void
      {
         this.§+!4§.push(param1);
      }
      
      public function §5!k§(param1:Vector.<§&!E§>) : void
      {
         var _loc2_:int = this.§+!4§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§+!4§.splice(_loc2_,1);
         }
      }
      
      public function charge() : void
      {
         this.§+!4§ = [];
         this.§+!4§.push(§4!w§.§0%;§,§4!w§.FIRE,§4!w§.POISON,§4!w§.§=$-§);
      }
      
      public function §0%w§() : void
      {
         this.§+!4§ = [];
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:Vector.<§&!E§> = null;
         var _loc3_:§&!E§ = null;
         loop0:
         for each(_loc2_ in this.§+!4§)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_;
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_ != param1.source.damageType);
            param1.power = 0;
            return;
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc3_:Vector.<§&!E§> = null;
         var _loc2_:§!%C§ = new §!%C§();
         for each(_loc3_ in this.§+!4§)
         {
            _loc2_.§]O§(_loc3_);
         }
         param1.buffs.place(_loc2_);
      }
   }
}

