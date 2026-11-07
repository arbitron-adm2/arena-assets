package §@!W§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%#u§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.Cookie;
   import §2!-§.DamageEvent;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7$t§.§9#x§;
   import §9%W§.§!"G§;
   import §<!W§.§?#L§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8!S§ extends §`&-§
   {
      
      private var §7%F§:§>4§;
      
      private var §>8§:§>4§;
      
      private var orLabel:TextField;
      
      private var §-#x§:Number = 0;
      
      public function §8!S§(param1:DisplayObject)
      {
         super(param1);
         this.§7%F§ = new §>4§(DisplayObjectContainer(getChildByName("price")));
         this.§>8§ = new §>4§(DisplayObjectContainer(getChildByName("realPrice")));
         this.orLabel = TextField(getChildByName("orLabel"));
      }
      
      public function §0f§(param1:String) : void
      {
         this.orLabel.htmlText = param1;
      }
      
      public function §8&;§(param1:§'$2§) : void
      {
         this.§'!`§(param1.ingamePrice,param1.realPrice);
      }
      
      public function §'!`§(param1:uint, param2:uint) : void
      {
         var _loc3_:Boolean = param1 > 0;
         this.§7%F§.setVisible(_loc3_);
         this.§7%F§.setValue(param1);
         var _loc4_:Boolean = param2 > 0;
         this.§>8§.setVisible(_loc4_);
         this.§>8§.setValue(param2);
         if(this.orLabel)
         {
            this.orLabel.visible = _loc4_ && _loc3_;
         }
         if(_loc4_ && _loc3_)
         {
            if(this.orLabel)
            {
               §`o§.§4%4§(this.orLabel,this.§7%F§.getContainer());
               this.§-#x§;
               §`o§.§4%4§(this.§>8§.getContainer(),this.orLabel,this.§-#x§);
            }
            else
            {
               §`o§.§4%4§(this.§>8§.getContainer(),this.§7%F§.getContainer(),this.§-#x§);
            }
         }
         else
         {
            this.§>8§.x = this.§7%F§.x;
         }
      }
      
      public function §=!_§() : Number
      {
         if(this.§>8§.isVisible())
         {
            return this.§>8§.x + this.§>8§.width;
         }
         if(this.§7%F§.isVisible())
         {
            return this.§7%F§.x + this.§7%F§.width;
         }
         return 0;
      }
      
      public function get §2$6§() : Number
      {
         return this.§-#x§;
      }
      
      public function set §2$6§(param1:Number) : void
      {
         this.§-#x§ = param1;
      }
      
      override public function destroy() : void
      {
         this.§7%F§.destroy();
         this.§>8§.destroy();
         super.destroy();
      }
   }
}

