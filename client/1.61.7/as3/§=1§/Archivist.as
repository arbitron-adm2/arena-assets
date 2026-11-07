package §=1§
{
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §&&6§.§?#m§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §1!J§.§@#%§;
   import §2"L§.§,'§;
   import §7"Q§.§0$L§;
   import §<"?§.§@&#§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattle;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class Archivist extends §@&#§
   {
      
      public static const §10§:Point = new Point(0,-300);
      
      public function Archivist()
      {
         super(56);
         resource = new §@#%§("archivist.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.ARCHIVIST;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §?#m§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc2_:Point = null;
         var _loc3_:§,'§ = null;
         super.§2!9§();
         var _loc1_:Point = new Point(Application.scene.width / 2,Application.scene.height / 2);
         _loc2_ = new Point(_loc1_.x + §10§.x,_loc1_.y + §10§.y);
         _loc3_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
         var _loc4_:Array = §""L§.§6$6§([mapRecord.§8$2§[1],mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§8$2§[8],mapRecord.§?$&§[1]],_loc3_);
         var _loc5_:Array = §""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§?$&§[2]],_loc3_);
         §5"N§ = [[_loc5_[0],_loc5_[1],_loc5_[2],_loc5_[3]],[new Point(_loc2_.x,_loc2_.y - §<H§.§,%P§)],[_loc4_[0],_loc4_[1],_loc4_[2]]];
         §%$D§("ArchivistPlatform",_loc2_.x,_loc2_.y,0,1,1,true);
      }
   }
}

