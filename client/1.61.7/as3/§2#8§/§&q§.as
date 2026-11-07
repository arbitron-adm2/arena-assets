package §2#8§
{
   import § #9§.§9j§;
   import §!!i§.§@&&§;
   import §%$!§.§9$p§;
   import §%L§.§%%w§;
   import §+%S§.§]&§;
   import §,"v§.§9%d§;
   import §1#p§.§2=§;
   import §@$§.§+%>§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&q§ extends §9j§
   {
      
      private var hp:TextField;
      
      private var armor:TextField;
      
      private var attack:TextField;
      
      private var memberType:TextField;
      
      public function §&q§(param1:MovieClip, param2:§+%>§ = null, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.hp = §'%s§("hp");
         this.armor = §'%s§("armor");
         this.attack = §'%s§("attack");
         this.memberType = §'%s§("memberType");
      }
      
      override public function §3%,§(param1:UserProfile) : void
      {
         super.§3%,§(param1);
         var _loc2_:§9$p§ = param1.stats;
         this.hp.text = String(_loc2_.§8+§.value + _loc2_.§3$L§.value);
         this.armor.text = String(_loc2_.§+#+§.value + _loc2_.§>%v§.value);
         this.attack.text = String(_loc2_.§'$Q§.value + _loc2_.§>%Y§.value);
         var _loc3_:Boolean = §4! §.isMe(§@&&§.getProfile());
         switch(param1.§4!^§())
         {
            case §2=§.§0"=§:
               if(_loc3_)
               {
                  this.memberType.text = §<"G§.§%! §("MEMBER.HIMSELF");
               }
               else
               {
                  this.memberType.text = §<"G§.§%! §("MEMBER.FRIEND");
               }
               break;
            case §2=§.FRIEND:
               if(!_loc3_ && param1.getId() == Application.userProfile.getId())
               {
                  this.memberType.text = §<"G§.§%! §("MEMBER.HIMSELF");
               }
               else
               {
                  this.memberType.text = §<"G§.§%! §("MEMBER.FRIEND");
               }
               break;
            case §2=§.MERCENARY:
               this.memberType.text = §<"G§.§%! §("MEMBER.MERCENARY");
               break;
            case §2=§.§"!$§:
            case §2=§.§2f§:
            case §2=§.§^%&§:
               this.memberType.text = §<"G§.§%! §("MEMBER.CLANMATE");
         }
      }
   }
}

