package §+%S§
{
   import § !8§.§`!d§;
   import § %f§.Puppet;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#s§.*;
   import §3#T§.Boomerang;
   import §3#a§.§[&A§;
   import §65§.§%%o§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §=$2§ extends §%%o§
   {
      
      public static const NAME:String = "PUPPET_DEBUFF";
      
      public static const §9%§:int = 150;
      
      private static const §'>§:int = 10;
      
      private var hp:§&$2§;
      
      private var ammoClass:Class;
      
      private var paramSet:§5$n§;
      
      private var attachedClip:String;
      
      private var §]"5§:Boolean;
      
      private var owner:§+%]§;
      
      private var effectClip:MovieClip;
      
      private var back:DisplayObject;
      
      private var textField:TextField;
      
      private var allyTrigger:Boolean;
      
      public function §=$2§(param1:§+%]§, param2:Class, param3:§5$n§, param4:String, param5:int, param6:Boolean)
      {
         super(NAME,§-"^§,1);
         this.ammoClass = param2;
         this.paramSet = param3;
         this.owner = param1;
         this.attachedClip = param4;
         this.hp = new §&$2§(param5);
         this.allyTrigger = param6;
      }
      
      override protected function §5#F§() : void
      {
         this.effectClip = §6#A§.§!&6§(this.attachedClip);
         this.textField = TextField(this.effectClip.getChildByName("text"));
         this.back = this.effectClip.getChildByName("back");
         unit.§#"%§(this.effectClip,0,0,false);
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.addEventListener(§0%v§.UNIT_ACTIVATION,this.§9$+§);
         this.§[#0§();
      }
      
      private function §9$+§(param1:Event) : void
      {
         unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§9$+§);
         unit.addEventListener(§0%v§.UNIT_DEACTIVATION,this.§?!>§);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      private function §?!>§(param1:Event) : void
      {
         unit.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§?!>§);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         if(this.textField)
         {
            this.textField.visible = this.back.visible = true;
         }
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         unit.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§?!>§);
         unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§9$+§);
         unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.§'$§(this.effectClip);
         this.back = null;
         this.textField = null;
         this.effectClip = null;
         this.§]"5§ = true;
      }
      
      private function onFrame(param1:Event) : void
      {
         if(this.textField)
         {
            this.textField.visible = this.back.visible = unit.stable && !unit.crawling && unit.speed == 0;
         }
      }
      
      private function §[#0§() : void
      {
         if(this.textField)
         {
            this.textField.visible = this.back.visible = true;
            §7&5§.§?$k§(this.textField,this.hp.value.toString());
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(Boolean(param1.source) && Boolean(param1.source.owner) && param1.source.owner.§+&,§(unit))
         {
            this.hp.value -= param1.power;
            this.§[#0§();
            if(this.hp.value <= 0)
            {
               this.explode();
            }
         }
      }
      
      private function explode(param1:Event = null) : void
      {
         var _loc2_:Puppet = null;
         if(!this.§]"5§)
         {
            this.§]"5§ = true;
            if(Boolean(unit) && !unit.disposed)
            {
               _loc2_ = new this.ammoClass(this.owner,unit.x,unit.y,this.paramSet,0,0,0);
               _loc2_.inflictDamage(unit,this.paramSet.damage.value,0,0,false);
               _loc2_.disposed = true;
               §1"-§.explode(§;n§.§@"W§,unit.x,unit.y,0,§`!v§.§["s§);
            }
            clear();
         }
      }
      
      public function §7$p§(param1:uint) : void
      {
         if(§8"%§.§&S§.§41§())
         {
            §1"-§.§8"l§(unit,"HealBrakeClip");
            §1"-§.§7",§(unit,"PuppetStealHp",unit.direction > 0 ? int(§<H§.§@k§ - 18) : -12,-§<H§.§,%P§ + 18);
         }
         this.hp.value += param1;
         this.§[#0§();
      }
      
      public function §^!%§() : void
      {
         if(!unit.buffs.§%%b§([§2&>§.NAME,§,"R§.§5!d§]))
         {
            if(unit.hp - §'>§ <= 0)
            {
               §'"$§.§]#I§(null,unit.x,unit.y,unit,§'>§,0,0,false,true,null,false,false,false);
            }
            else
            {
               unit.attributes.hp.change(-§'>§);
               unit.attributes.hp.§@#§(§'>§);
               §2!H§.§;!x§(String(§'>§),§2!H§.§8"<§,unit.x,unit.y - 10,20);
               DamageEvent.§!"2§(null,unit,§'>§,§0%v§.§'%e§);
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(this.§3$h§());
      }
      
      public function §3$h§() : §=$2§
      {
         return new §=$2§(this.owner,this.ammoClass,this.paramSet,this.attachedClip,this.hp.value,this.allyTrigger);
      }
      
      public function get §<#V§() : Boolean
      {
         return this.allyTrigger;
      }
   }
}

