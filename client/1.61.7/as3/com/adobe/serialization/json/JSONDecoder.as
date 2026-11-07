package com.adobe.serialization.json
{
   public class JSONDecoder
   {
      
      private var value:*;
      
      private var §9!;§:JSONTokenizer;
      
      private var token:JSONToken;
      
      public function JSONDecoder(param1:String)
      {
         super();
         this.§9!;§ = new JSONTokenizer(param1);
         this.§-&?§();
         this.value = this.§"%W§();
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §-&?§() : JSONToken
      {
         return this.token = this.§9!;§.getNextToken();
      }
      
      private function §,%'§() : Array
      {
         var _loc1_:Array = new Array();
         this.§-&?§();
         if(this.token.type == JSONTokenType.RIGHT_BRACKET)
         {
            return _loc1_;
         }
         while(true)
         {
            _loc1_.push(this.§"%W§());
            this.§-&?§();
            if(this.token.type == JSONTokenType.RIGHT_BRACKET)
            {
               break;
            }
            if(this.token.type == JSONTokenType.COMMA)
            {
               this.§-&?§();
            }
            else
            {
               this.§9!;§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §%%y§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§-&?§();
         if(this.token.type == JSONTokenType.RIGHT_BRACE)
         {
            return _loc1_;
         }
         while(true)
         {
            if(this.token.type == JSONTokenType.STRING)
            {
               _loc2_ = String(this.token.value);
               this.§-&?§();
               if(this.token.type == JSONTokenType.COLON)
               {
                  this.§-&?§();
                  _loc1_[_loc2_] = this.§"%W§();
                  this.§-&?§();
                  if(this.token.type == JSONTokenType.RIGHT_BRACE)
                  {
                     break;
                  }
                  if(this.token.type == JSONTokenType.COMMA)
                  {
                     this.§-&?§();
                  }
                  else
                  {
                     this.§9!;§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§9!;§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§9!;§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §"%W§() : Object
      {
         if(this.token == null)
         {
            this.§9!;§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case JSONTokenType.LEFT_BRACE:
               return this.§%%y§();
            case JSONTokenType.LEFT_BRACKET:
               return this.§,%'§();
            case JSONTokenType.STRING:
            case JSONTokenType.NUMBER:
            case JSONTokenType.TRUE:
            case JSONTokenType.FALSE:
            case JSONTokenType.NULL:
               return this.token.value;
            default:
               this.§9!;§.parseError("Unexpected " + this.token.value);
               return null;
         }
      }
   }
}

