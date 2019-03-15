-- This source file is part of the EdgeDB open source project.
--
-- Copyright 2016-present MagicStack Inc. and the EdgeDB authors.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION edbsys" to load this file. \quit


--
-- Return the given attribute value from a row value.
--
CREATE FUNCTION row_getattr_by_num(record, integer, anyelement)
RETURNS anyelement
AS '$libdir/edbsys'
LANGUAGE C CALLED ON NULL INPUT IMMUTABLE PARALLEL SAFE;


--
-- Convert the given record into a jsonb array.
--
CREATE FUNCTION row_to_jsonb_array(record)
RETURNS jsonb
AS '$libdir/edbsys'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;


--
-- Perform floor division of two integers.
--
CREATE FUNCTION int2floordiv(int2, int2)
RETURNS int2
AS '$libdir/edbsys', 'edb_int2floordiv'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION int4floordiv(int4, int4)
RETURNS int4
AS '$libdir/edbsys', 'edb_int4floordiv'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION int8floordiv(int8, int8)
RETURNS int8
AS '$libdir/edbsys', 'edb_int8floordiv'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;


--
-- Perform floor modulo operation of two integers.
--
CREATE FUNCTION int2floormod(int2, int2)
RETURNS int2
AS '$libdir/edbsys', 'edb_int2floormod'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION int4floormod(int4, int4)
RETURNS int4
AS '$libdir/edbsys', 'edb_int4floormod'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION int8floormod(int8, int8)
RETURNS int8
AS '$libdir/edbsys', 'edb_int8floormod'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;


--
-- Perform floor division of two floats.
--
CREATE FUNCTION float4floordiv(float4, float4)
RETURNS float4
AS '$libdir/edbsys', 'edb_float4floordiv'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION float8floordiv(float8, float8)
RETURNS float8
AS '$libdir/edbsys', 'edb_float8floordiv'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;


--
-- Perform floor modulo of two floats.
--
CREATE FUNCTION float4floormod(float4, float4)
RETURNS float4
AS '$libdir/edbsys', 'edb_float4floormod'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION float8floormod(float8, float8)
RETURNS float8
AS '$libdir/edbsys', 'edb_float8floormod'
LANGUAGE C STRICT IMMUTABLE PARALLEL SAFE;
