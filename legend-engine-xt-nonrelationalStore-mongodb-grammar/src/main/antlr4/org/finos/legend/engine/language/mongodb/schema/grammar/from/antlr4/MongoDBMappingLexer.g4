// Copyright 2023 Goldman Sachs
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/** Taken from "The Definitive ANTLR 4 Reference" by Terence Parr */
// Derived from http://json.org as starting point.

lexer grammar MongoDBMappingLexer;

import MongoDBSchemaLexer;

VIEW:                                       'View';
FILTER:                                     'Filter';
JOIN:                                       'Join';

FILTER_CMD:                                 '~filter';
DISTINCT_CMD:                               '~distinct';
MAIN_COLLECTION_CMD:                        '~mainCollection';
PRIMARY_KEY_CMD:                            '~primaryKey';

SCOPE:                                      'scope';


EQ:                                         '"' '$eq' '"' |  '$eq';
GT:                                         '"' '$gt' '"'  |  '$gt';
GTE:                                        '"' '$gte' '"' |  '$gte';
LT:                                         '"' '$lt' '"'  |  '$lt';
LTE:                                         '"' '$lte' '"' |  '$lte';
NE:                                         '"' '$ne' '"' |  '$ne';
IN:                                         '"' '$in' '"' |  '$in';
NIN:                                        '"' '$nin' '"' |  '$nin';
AND:                                        '"' '$and' '"' |  '$and';
OR:                                         '"' '$or' '"' |  '$or';
IF_NULL:                                    '"' '$ifNull' '"' | '$ifNull';

MONGODB_FIELD_IDENTIFIER:                   '"$' (ESC | SAFECODEPOINT)* '"' | '$' (ESC | SAFECODEPOINT)*;