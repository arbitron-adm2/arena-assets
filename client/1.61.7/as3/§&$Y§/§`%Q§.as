package §&$Y§
{
   import § K§.§`!5§;
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §&#h§.§,#;§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §2!-§.NewUnitEvent;
   import §2B§.§#&E§;
   import §4'§.§^"p§;
   import §7"Q§.*;
   import §7$t§.§=?§;
   import §<$q§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5&4§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §`%Q§ implements §`!5§
   {
      
      protected static const §;S§:uint = 5;
      
      protected static const §`%e§:Date = new Date(2024,11,17);
      
      private var §1#v§:Date;
      
      private var §0$f§:§6[§;
      
      public function §`%Q§(param1:Date)
      {
         super();
         this.§1#v§ = param1;
      }
      
      public function §%%+§() : §6[§
      {
         §8"%§.cookies.setValue(§!m§.§3$A§,§2"e§.§^&C§());
         return this.§!"K§();
      }
      
      protected function §!"K§() : §6[§
      {
         throw new IllegalOperationError("не определен метод createNewsPanel()");
      }
      
      public function §]%i§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         _loc1_ = int(§8"%§.cookies.getValue(§!m§.§3$A§,0));
         _loc2_ = _loc1_ != §2"e§.§^&C§();
         return §,! §.§9",§() && _loc2_;
      }
      
      public function get §""U§() : Date
      {
         return this.§1#v§;
      }
      
      public function get isShown() : Boolean
      {
         return Boolean(this.§0$f§) && this.§0$f§.isShown();
      }
      
      public function get §6#b§() : §6[§
      {
         return this.§0$f§;
      }
      
      protected function §!#C§(param1:§6[§) : void
      {
         this.§0$f§ = param1;
      }
   }
}

