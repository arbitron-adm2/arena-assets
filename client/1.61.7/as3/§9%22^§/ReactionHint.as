package §9"^§
{
   import § #9§.§"$t§;
   import § #m§.§?A§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§5#E§;
   import §2#i§.§+%z§;
   import §2o§.§]#;§;
   import §3"@§.§##L§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §7"Q§.§0$L§;
   import §7$t§.§2"y§;
   import §8$V§.*;
   import §;!J§.§8!a§;
   import §<$2§.§+$9§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=&!§.§<$!§;
   import §>!_§.*;
   import §@<§.§+%]§;
   import §["3§.CraftEquipInfoHint;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^!"§.§0^§;
   import §^4§.§@#J§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ReactionHint implements §?A§
   {
      
      private var hint:MovieClip;
      
      private var fullName:TextField;
      
      private var headerPanel:DisplayObject;
      
      public function ReactionHint(param1:String, param2:Array)
      {
         super();
         this.hint = §6#A§.§!&6§(§+"'§.§4#P§);
         this.headerPanel = this.hint.getChildByName("headerPanel");
         this.fullName = TextField(this.hint.getChildByName("fullName"));
         this.fullName.text = param1;
         this.setData(param2);
      }
      
      public function setData(param1:Array) : void
      {
         var _loc3_:TextField = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = TextField(this.hint.getChildByName("date" + _loc2_));
            if(param1.length > _loc2_)
            {
               _loc3_.text = this.getDate(param1[_loc2_]);
               _loc3_.autoSize = TextFieldAutoSize.LEFT;
            }
            else
            {
               if(_loc2_ > 0)
               {
                  _loc5_ = this.hint.getChildByName("separator" + (_loc2_ - 1));
                  _loc5_.visible = false;
               }
               _loc4_ = this.hint.getChildByName("panel");
               _loc4_.height = Math.min(_loc4_.height,_loc5_ ? _loc5_.y : _loc4_.height - _loc4_.y);
               _loc3_.visible = false;
               this.hint.getChildByName("bootBack" + _loc2_).visible = false;
            }
            _loc2_++;
         }
      }
      
      private function getDate(param1:Date) : String
      {
         return §5#E§.§^"@§(param1,"ddd, d mmmm yyyy");
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint;
      }
   }
}

