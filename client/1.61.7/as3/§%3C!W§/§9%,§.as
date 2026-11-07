package §<!W§
{
   import § &5§.§@N§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §4%_§.§6#W§;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §6"'§.§9$Z§;
   import §65§.§=&9§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=&!§.§ "^§;
   import §=1§.*;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import com.greensock.motionPaths.PathFollower;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §9%,§ extends §=&9§
   {
      
      public static const NAME:String = "DRAGON_FIRE_DEBUFF_NAME";
      
      public static const § &G§:uint = 10;
      
      public static const §!$k§:int = 1;
      
      public static const DAMAGE:§&$2§ = new §&$2§(5);
      
      private static const §#%_§:uint = 42;
      
      private static const §7#m§:uint = §#%_§ + 2;
      
      private static const §>"R§:uint = 30;
      
      private static const §;"Z§:uint = 6;
      
      private var owner:§+%]§;
      
      private var §4c§:uint = 0;
      
      private var §-#g§:Boolean;
      
      private var dummy:§&"T§;
      
      private var §5"5§:ColorTransform;
      
      private var §2%e§:int;
      
      public function §9%,§(param1:§+%]§, param2:Boolean = true)
      {
         this.owner = param1;
         this.§-#g§ = param2;
         super(NAME,§ &G§,§!$k§);
      }
      
      override protected function §7$d§() : void
      {
         if(!§&%M§)
         {
            if(this.§`"j§(§#%_§).length == 0)
            {
               this.§-#g§ = false;
               this.clear();
            }
            else if(this.§-#g§)
            {
               if(!this.dummy)
               {
                  this.dummy = Application.scene.§,$z§();
               }
               this.§4c§ += §;"Z§;
               unit.graphics.getClip().transform.colorTransform = new ColorTransform(1,1,1,1,this.§4c§,0,0,0);
            }
         }
      }
      
      override public function clear() : void
      {
         if(this.§-#g§)
         {
            this.§1!2§();
         }
         if(this.dummy)
         {
            this.dummy.disposed = true;
         }
         super.clear();
      }
      
      private function §1!2§() : void
      {
         if(this.§`"j§(§#%_§).length > 0)
         {
            Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§1#'§,false,true,§0%v§.DAMAGE_TRIGGER));
            §'"$§.§]#I§(this.owner,unit.x,unit.y,unit,DAMAGE.value,0,0,false,true,§&!E§.FIRE);
            this.§3Y§();
         }
      }
      
      private function §`"j§(param1:uint) : Vector.<§6#W§>
      {
         var _loc3_:Vector.<§&"T§> = null;
         var _loc4_:Vector.<§&"T§> = null;
         var _loc5_:§6#W§ = null;
         var _loc2_:Vector.<§6#W§> = new Vector.<§6#W§>(0);
         if(unit)
         {
            _loc3_ = Application.scene.§@$I§.§;%a§.§"L§([§6#W§]);
            _loc4_ = §<H§.§3%'§(unit.x,unit.y,param1,_loc3_);
            for each(_loc5_ in _loc4_)
            {
               if(_loc5_.owner == this.owner)
               {
                  _loc2_.push(_loc5_);
               }
            }
         }
         return _loc2_;
      }
      
      private function §3Y§() : void
      {
         var _loc2_:§6#W§ = null;
         var _loc1_:Vector.<§6#W§> = this.§`"j§(§7#m§);
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.owner == this.owner)
            {
               _loc2_.disposed = true;
            }
         }
      }
      
      override protected function §5#F§() : void
      {
         this.§2%e§ = 0;
         this.§4c§ = §>"R§;
         this.§5"5§ = unit.graphics.getClip().transform.colorTransform;
      }
      
      override protected function §0&"§() : void
      {
         this.§4c§ = 0;
         unit.graphics.getClip().transform.colorTransform = this.§5"5§;
      }
      
      public function get §3$k§() : int
      {
         return this.§2%e§;
      }
      
      public function set §3$k§(param1:int) : void
      {
         this.§2%e§ = param1;
      }
   }
}

