package §@&H§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-I§.§'&,§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2#i§.§+%z§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7$t§.§;#_§;
   import §<"?§.§3>§;
   import §<"?§.§6!8§;
   import §<$q§.§?!d§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.SpeedhackDetectedEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §!#D§
   {
      
      private var §&$0§:Array = [§+%z§.SHURIKEN,§+%z§.RIFLE,§+%z§.MINE,§+%z§.§5-§];
      
      private var profile:UserProfile;
      
      public function §!#D§()
      {
         super();
         this.profile = UserProfile.§'#3§("",1,Race.§+&8§,100,10,10);
      }
      
      public function test() : Boolean
      {
         var _loc1_:§+%]§ = null;
         var _loc2_:§;#_§ = null;
         var _loc3_:§?%V§ = null;
         var _loc6_:WeaponStructure = null;
         _loc1_ = new §+%]§(this.profile,0,0,true);
         _loc2_ = §<$c§.§ !=§(§""L§.§=!W§(this.§&$0§));
         _loc3_ = new §?%V§(_loc1_);
         var _loc4_:§7"P§ = new §7"P§(_loc1_,_loc2_);
         var _loc5_:§'&,§ = new §'&,§(_loc3_,_loc1_,new §?!d§());
         this.profile.§>%q§(new §;#X§());
         this.profile.getBattleBackpack().§0%8§(_loc2_,5);
         _loc4_.§=$V§();
         for each(_loc6_ in _loc5_.§?#n§().§%%u§)
         {
            if(_loc6_.getId() == _loc2_.getId())
            {
               return _loc6_.getCount() == 1 && this.profile.getBattleBackpack().§3"3§(_loc2_.getId()) == 4;
            }
         }
         return false;
      }
   }
}

