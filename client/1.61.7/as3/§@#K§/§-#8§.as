package §@#K§
{
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.SupplyPickedUpEvent;
   import §2!-§.§^!9§;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §-#8§ extends §&"T§
   {
      
      public static const §?n§:§&$2§ = new §&$2§(30);
      
      protected var hint:§4#_§;
      
      private var §8#_§:String;
      
      protected var §4#3§:Boolean = true;
      
      protected var §0$g§:§=#?§ = §`!v§.BONUS;
      
      public function §-#8§(param1:int, param2:int, param3:String, param4:String = "")
      {
         super();
         canBeDamaged = true;
         §,q§ = new <§-&§>[§-&§.BURNABLE];
         addEventListener(§0%v§.§&!D§,§""0§);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         var _loc5_:Class = §6#A§.getClass(param3);
         this.clip = new _loc5_();
         this.x = param1;
         this.y = param2;
         Application.scene.§@$I§.§1$+§(this);
         this.§8#_§ = param4;
         this.§<$U§();
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §;$S§(physParams);
      }
      
      public function §<$U§() : void
      {
         if(this.§8#_§ != "")
         {
            if(this.hint)
            {
               this.hint.destroy();
            }
            this.hint = new §4#_§(clip);
            this.hint.§<"b§ = true;
            this.hint.setQtip(this.§8#_§,§;#^§.DEFAULT,§+"'§.§1$n§);
            §;s§(true);
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!§+!x§)
         {
            this.§'"Z§();
         }
      }
      
      protected function §'"Z§() : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:Boolean = false;
         var _loc1_:Vector.<§&"T§> = §<H§.§3%'§(x,y,§?n§.value,Application.scene.§@$I§.§;%a§.§0! §(§-&§.SUPPLY_PICKUPER));
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = null;
            if(_loc2_ is §+%]§ && !_loc2_.disposed)
            {
               _loc3_ = §+%]§(_loc2_);
            }
            else if(_loc2_ is §6#I§ && !§6#I§(_loc2_).owner.disposed)
            {
               _loc3_ = §6#I§(_loc2_).owner;
            }
            if(_loc3_)
            {
               Application.scene.dispatchEvent(new SupplyPickedUpEvent(_loc2_,this));
               if(§^$y§.distance(_loc2_.x - x,_loc2_.y - y) > 1.6 * §?n§.value)
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"supply pickup"));
               }
               _loc4_ = this.§=#z§(_loc3_);
               if(_loc4_)
               {
                  break;
               }
            }
         }
      }
      
      private function §=#z§(param1:§+%]§) : Boolean
      {
         if(!disposed && this.§-%+§(param1))
         {
            this.§0$j§(param1);
            this.§!&<§();
            dispatchEvent(new §^!9§(param1));
            disposed = true;
            return true;
         }
         return false;
      }
      
      protected function §-%+§(param1:§+%]§) : Boolean
      {
         return true;
      }
      
      protected function §0$j§(param1:§+%]§) : void
      {
         §@%;§.play(§`!v§.§;$u§);
         §2#6§.§0%@§(§8"%§.§?!W§.§4"m§.activeUnit);
         if(param1.squad.isLocal() && this.§4#3§)
         {
            §8"%§.§?!W§.§7%@§.increment(§!$L§.§#&<§);
         }
      }
      
      protected function §!&<§() : void
      {
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         §@%;§.play(this.§0$g§);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.hint)
         {
            this.hint.destroy();
         }
         this.§!&<§();
         super.§[$u§(param1);
      }
   }
}

