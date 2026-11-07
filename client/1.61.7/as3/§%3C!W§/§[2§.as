package §<!W§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §'$j§.§'-§;
   import §0%[§.Cookie;
   import §1&-§.§]%4§;
   import §4!!§.§6$V§;
   import §6_§.*;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §=!C§.§0"l§;
   import §@!N§.§-!Y§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   use namespace gestouch_internal;
   
   public class §[2§ extends §]%4§
   {
      
      public static const NAME:String = "CAT_DODGE";
      
      public static const §1!=§:§&$2§ = new §&$2§(30);
      
      public static const §&$t§:§&$2§ = new §&$2§(30);
      
      public static const §1%g§:§&$2§ = new §&$2§(35);
      
      private var §3&<§:int;
      
      public function §[2§(param1:int = 0)
      {
         super(§1!=§.value,-1,§9# §,NAME);
         this.§3&<§ = param1 || §1%g§.value;
      }
      
      override protected function §0"y§() : Boolean
      {
         return true;
      }
      
      override protected function §5!z§(param1:§6#I§ = null) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc2_:int = Application.scene.§@$I§.§<#[§();
         var _loc3_:Boolean = unit.buffs.hasBuff(§3#M§.NAME) && param1 && param1.owner && unit != param1.owner && unit.§+&,§(param1.owner);
         if(_loc3_ && _loc2_ != §[%A§ && unit.§0"y§ && !unit.attributes.hp.§?!H§)
         {
            if(param1 is §6$V§ && §6$V§(param1).healing)
            {
               return false;
            }
            §[%A§ = _loc2_;
            return true;
         }
         if(unit.hp < Math.max(§&$t§.value,this.§3&<§ * unit.attributes.hp.§#&"§() / 100))
         {
            return Boolean(super.§5!z§());
         }
         return false;
      }
   }
}

