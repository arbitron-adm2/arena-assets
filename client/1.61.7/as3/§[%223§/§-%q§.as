package §["3§
{
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#"V§.§<"4§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §2o§.§]#;§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8#<§.§!#^§;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §@!N§.§""L§;
   import §`#x§.*;
   import config.§28§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §-%q§ extends §<"4§ implements §?%Q§
   {
      
      private var equip:§&!e§;
      
      private var §6%n§:Boolean;
      
      private var §>#A§:§ V§;
      
      private var §<^§:§ "c§;
      
      private var §?%w§:§`&-§;
      
      private var §%"R§:int;
      
      public function §-%q§(param1:int)
      {
         super(new MovieClip());
         MovieClip(container).buttonMode = false;
         this.§%"R§ = param1;
      }
      
      public function setItem(param1:§&!e§, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         this.equip = param1;
         var _loc3_:Boolean = §!#^§.§7%#§(param1.getId()) || §!#^§.§3&5§(param1.getId());
         if(_loc3_)
         {
            _loc4_ = §#&>§.§1_§(int(param1.getId() / 10) * 10);
            this.§6%n§ = _loc4_ > -1;
         }
         else
         {
            this.§6%n§ = §@&&§.getProfile().§,%o§().§8&E§(param1.getId()) != null;
         }
         if(this.§6%n§)
         {
            this.§!#B§();
         }
         else
         {
            this.§2!U§();
         }
         if(!this.§?%w§)
         {
            _loc5_ = §6#A§.§!&6§(§+"'§.§%&,§);
            this.§?%w§ = new §`&-§(_loc5_);
            this.§?%w§.setQtip(§0$N§.TEMPORAL_ITEM);
            addChild(this.§?%w§);
            this.§?%w§.x = width - _loc5_.width - 3;
         }
         this.§?%w§.setVisible(param1 is §=?§ && §=?§(param1).isTemporalItem());
      }
      
      private function §!#B§() : void
      {
         if(this.§<^§)
         {
            removeChild(this.§<^§);
         }
         this.§>#A§ = new § V§();
         this.§>#A§.setItem(this.equip,1);
         addChild(this.§>#A§);
      }
      
      private function §2!U§() : void
      {
         if(this.§>#A§)
         {
            if(this.§<^§.hasEventListener(§]#;§.BUY_EVENT))
            {
               this.§<^§.removeEventListener(§]#;§.BUY_EVENT,this.§`&1§);
            }
            removeChild(this.§<^§);
         }
         this.§<^§ = new § "c§();
         this.§<^§.setItem(this.equip,this.§%"R§);
         addChild(this.§<^§);
         this.§<^§.addEventListener(§]#;§.BUY_EVENT,this.§`&1§);
      }
      
      private function §`&1§(param1:Event) : void
      {
         this.§<^§.removeEventListener(§]#;§.BUY_EVENT,this.§`&1§);
         this.§!#B§();
         container.dispatchEvent(new §]#;§(null,null,1,true));
      }
      
      public function §7$@§() : Boolean
      {
         return this.§6%n§;
      }
   }
}

