package §1#p§
{
   public class §+E§
   {
      
      public var teamMemberId:int;
      
      public var state:Boolean = false;
      
      public function §+E§(param1:int, param2:Boolean)
      {
         super();
         this.teamMemberId = param1;
         this.state = param2;
      }
      
      public function toString() : String
      {
         return " (id=" + this.teamMemberId + " state=" + this.state + ")";
      }
   }
}

