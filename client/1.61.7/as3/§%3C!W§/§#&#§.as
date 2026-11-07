package §<!W§
{
   import § &5§.§!$#§;
   import § &5§.§%$O§;
   import §!$Z§.§6=§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§,!<§;
   import §"$+§.§@C§;
   import §#"V§.§8"@§;
   import §##j§.§7,§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1A§.*;
   import §2!-§.NextTurnEvent;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7"Q§.§"&=§;
   import §9%W§.§!7§;
   import §<$q§.§6%b§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §=#g§.§&%5§;
   import §>!_§.§'#m§;
   import §>%S§.§^!V§;
   import §?$7§.§6J§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §[$P§.§[!0§;
   import §]$v§.§1>§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import com.adobe.serialization.json.JSONDecoder;
   import config.§`!a§;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §#&#§ extends §%%o§
   {
      
      public static const NAME:String = "CAT_SHARP_CLAWS_DEBUFF";
      
      public static const §%!y§:int = 3;
      
      private static const R:int = 186 - 140;
      
      private static const G:int = 73 - 140;
      
      private static const B:int = 96 - 140;
      
      private var owner:§+%]§;
      
      private var §=&?§:Boolean;
      
      public function §#&#§(param1:§+%]§, param2:int, param3:int = 3, param4:Boolean = true)
      {
         super(NAME,param3,param2);
         this.owner = param1;
         this.§=&?§ = param4;
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.colorTransform(R,G,B);
         Application.scene.addEventListener(§0%v§.EOT,this.trigger);
         this.owner.addEventListener(§0%v§.DISPOSED,this.§ %4§);
         if(this.§=&?§)
         {
            this.trigger();
         }
      }
      
      private function § %4§(param1:Event) : void
      {
         clear();
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.colorTransform(-R,-G,-B);
         Application.scene.removeEventListener(§0%v§.EOT,this.trigger);
         this.owner.removeEventListener(§0%v§.DISPOSED,this.§ %4§);
         this.owner = null;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §#&#§(this.owner,value.value,§8#z§(),false));
      }
      
      private function trigger(param1:Event = null) : void
      {
         if(!§&%M§)
         {
            this.§0"T§();
         }
      }
      
      private function §0"T§() : void
      {
         var _loc1_:Point = §=z§.§-L§(unit);
         §'"$§.§]#I§(this.owner,unit.x,unit.y + (_loc1_ ? 0 : 10),unit,getValue(),0,0,false,true,null,false,false,false);
         if(_loc1_)
         {
            §=z§.§5!u§(unit,_loc1_);
         }
         if(this.owner.squad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§8n§,getValue());
         }
      }
   }
}

