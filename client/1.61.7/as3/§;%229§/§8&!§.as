package §;"9§
{
   import §!L§.§+"'§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §+$=§.§6#A§;
   import §-&5§.*;
   import §-8§.§3!x§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §8&!§ extends §&"T§
   {
      
      public static const §1!t§:uint = 200;
      
      private static const § "h§:String = "LightningRod";
      
      private var §[!5§:MovieClip;
      
      public function §8&!§(param1:Number, param2:Number)
      {
         super();
         clip = §6#A§.§!&6§(§ "h§);
         physParams.§5N§ = §9%1§.§>#T§;
         physParams.§0#0§ = §<#`§.NONE;
         stable = true;
         this.x = param1;
         this.y = param2;
         this.§[!5§ = §6#A§.§!&6§("PulsingSphere");
         this.§[!5§.width = this.§[!5§.height = §1!t§ * 2;
         clip.addChild(this.§[!5§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         clip.removeChild(this.§[!5§);
      }
   }
}

