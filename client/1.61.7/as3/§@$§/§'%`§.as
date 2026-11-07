package §@$§
{
   import §&"c§.§!!q§;
   import §9%W§.§!"G§;
   import §9%W§.§8#p§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §'%`§ extends §+%>§
   {
      
      public function §'%`§(param1:UserProfile = null, param2:ClanMemberTO = null)
      {
         super(param1,param2);
         §]$e§ = §>%7§;
         §1$W§ = false;
         §%"e§ = false;
      }
      
      private static function §>%7§(param1:String) : void
      {
         §8"%§.§?!W§.§!#S§(param1);
      }
      
      override protected function §5%i§() : void
      {
         if(!isMe)
         {
            §0%C§();
            §7&B§();
            §"&D§();
         }
         if(cells.length > 0)
         {
            cells[cells.length - 1].§+"$§(false);
         }
      }
   }
}

