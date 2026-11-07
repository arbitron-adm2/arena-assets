package §@$v§
{
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'$Z§.§2#f§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §4$b§.§2m§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$Z§.§9!&§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=$#§.§1!$§;
   import §@!N§.§3!3§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §%3§ extends §%!w§
   {
      
      public static const §6$m§:String = "/";
      
      public static const §5">§:String = " / ";
      
      private var text:TextField;
      
      private var §,%D§:String = "/";
      
      public function §%3§(param1:DisplayObjectContainer, param2:TextField = null, param3:Boolean = false, param4:Number = 1, param5:Boolean = false)
      {
         super(param1,param3,param4,param5);
         if(param2)
         {
            this.text = param2;
         }
         else
         {
            this.text = getChildByName("text") as TextField;
         }
      }
      
      override protected function §[$'§(param1:Number) : void
      {
         super.§[$'§(param1);
         this.text.text = Math.floor(param1).toString() + this.§,%D§ + Math.floor(maxValue).toString();
      }
      
      public function set separator(param1:String) : void
      {
         this.§,%D§ = param1;
      }
   }
}

