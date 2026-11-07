package com.adobe.serialization.json
{
   public class JSONParseError extends Error
   {
      
      private var _location:int;
      
      private var §>#0§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this._location = param2;
         this.§>#0§ = param3;
      }
      
      public function get location() : int
      {
         return this._location;
      }
      
      public function get text() : String
      {
         return this.§>#0§;
      }
   }
}

