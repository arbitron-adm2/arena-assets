package §2>§
{
   import § $q§.§3U§;
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §3#a§.§[&A§;
   import §4f§.§-&§;
   import §4u§.§;$H§;
   import §4u§.ReagentHint;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class GladiatorAwardItem extends §`&-§
   {
      
      private var §?$"§:§`&-§;
      
      private var §7!Z§:§`&-§;
      
      private var §'e§:§`&-§;
      
      private var §^#w§:§`&-§;
      
      private var §=&<§:§`&-§;
      
      private var §7!]§:§3U§;
      
      public function GladiatorAwardItem()
      {
         super(§6#A§.§!&6§(§+"'§.§^$_§));
         this.§=&<§ = new §`&-§(getChildByName("item"));
         this.§7!]§ = new §3U§(this.§=&<§.getChildByName("icon"),true);
         this.§?$"§ = new §`&-§(this.§=&<§.getChildByName("reaction"));
         this.§'e§ = new §`&-§(this.§=&<§.getChildByName("fuzy"));
         this.§7!Z§ = new §`&-§(this.§=&<§.getChildByName("ruby"));
         this.§^#w§ = new §`&-§(this.§=&<§.getChildByName("exp"));
         this.§?$"§.setVisible(false);
         this.§'e§.setVisible(false);
         this.§7!Z§.setVisible(false);
         this.§^#w§.setVisible(false);
         this.§=&<§.setVisible(false);
         this.§7!]§.setVisible(false);
         MovieClip(getContainer()).stop();
         getContainer().visible = false;
      }
      
      public function setCount(param1:uint) : void
      {
         this.§=&<§.setVisible(true);
         var _loc2_:TextField = §'%s§("item.count");
         if(param1)
         {
            §&$9§.§>&F§(_loc2_,§"-§.§6"j§,param1.toString());
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      public function §!!j§(param1:uint) : void
      {
         this.setCount(param1);
         setQtip(§0$N§.FUZY_QTIP);
         this.§'e§.setVisible(true);
      }
      
      public function §=%=§(param1:uint) : void
      {
         this.setCount(param1);
         setQtip(§0$N§.RUBY_QTIP);
         this.§7!Z§.setVisible(true);
      }
      
      public function §=#6§(param1:uint) : void
      {
         this.setCount(param1);
         setQtip(§0$N§.REACTION_QTIP);
         this.§?$"§.setVisible(true);
      }
      
      public function §;%1§(param1:uint) : void
      {
         this.setCount(param1);
         setQtip(§0$N§.EXPERIENCE);
         this.§^#w§.setVisible(true);
      }
      
      public function setItem(param1:§&!e§, param2:Boolean = false) : void
      {
         var _loc3_:§;$H§ = null;
         if(param1)
         {
            if(param2)
            {
               _loc3_ = new ReagentHint(param1);
            }
            this.§7!]§.setItem(param1,_loc3_);
            this.§7!]§.setVisible(true);
            this.§7!]§.x = this.§7!]§.y = 3;
         }
      }
      
      public function §##;§(param1:uint = 0) : void
      {
         if(!param1)
         {
            this.§!"R§();
         }
         else
         {
            §1%"§.delay(this.§!"R§,this,param1);
         }
      }
      
      private function §!"R§() : void
      {
         getContainer().visible = true;
         MovieClip(getContainer()).play();
      }
   }
}

