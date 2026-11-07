package §[%§
{
   import § &5§.§=#P§;
   import §<!W§.§'0§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import config.§`!a§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class Boxer extends §+%]§
   {
      
      public function Boxer(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         if(param1.getRace().§%§(§`!a§.§=#_§).getLevel() <= param1.getLevel())
         {
            buffs.place(new §'0§());
         }
      }
   }
}

