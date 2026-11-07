package §2#H§
{
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+%S§.§"!q§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §3"@§.*;
   import §3#T§.§+&F§;
   import §4!!§.§ %c§;
   import §4!!§.§!%n§;
   import §4!!§.§]!h§;
   import §65§.§%%o§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §<!W§.§=!6§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §>%S§.§^!V§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.loading.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterPayment;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §'$5§ extends §%%o§
   {
      
      public static const NAME:String = "REVENGE_DAMAGE";
      
      private static const DAMAGE:int = 30;
      
      protected var §1!j§:§6S§;
      
      public function §'$5§(param1:§6S§ = null)
      {
         this.§1!j§ = param1;
         super(NAME,§-"^§);
      }
      
      override protected function §5#F§() : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.appear(unit);
         }
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
         §@%;§.play(§`!v§.§+Q§);
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
            if(this.§1!j§)
            {
               this.§1!j§.§=$5§();
               this.§1!j§ = null;
            }
         }
         if(!Application.scene.§@$I§.§=%d§())
         {
            §@%;§.play(§`!v§.§0&C§);
         }
      }
      
      protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc3_:§=!6§ = null;
         var _loc2_:int = int(param1.power);
         if(Boolean(param1.source.owner) && !param1.source.owner.squad.isAi())
         {
            _loc3_ = unit.buffs.getBuff(§=!6§.NAME) as §=!6§;
            if(Boolean(_loc3_) && _loc3_.§9!T§)
            {
               new §]!h§(unit,unit.x,unit.y,false,param1.source.owner,DAMAGE);
            }
            else
            {
               new §!%n§(unit,unit.x,unit.y,false,param1.source.owner,DAMAGE,§!%n§.§[%]§);
            }
         }
      }
   }
}

