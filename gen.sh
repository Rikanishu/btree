#!/usr/bin/env bash

mkdir -p ./ui32 ./i32 ./ui64 ./i64 ./f32 ./f64 ./str

cat ./base/btree.go | genny -pkg="i32" gen "KeyType=int32" > ./i32/btree.go
cat ./base/btree.go | genny -pkg="i64" gen "KeyType=int64" > ./i64/btree.go
cat ./base/btree.go | genny -pkg="ui32" gen "KeyType=uint32" > ./ui32/btree.go
cat ./base/btree.go | genny -pkg="ui64" gen "KeyType=uint64" > ./ui64/btree.go
cat ./base/btree.go | genny -pkg="f32" gen "KeyType=float32" > ./f32/btree.go
cat ./base/btree.go | genny -pkg="f64" gen "KeyType=float64" > ./f64/btree.go
cat ./base/btree.go | genny -pkg="str" gen "KeyType=string" > ./str/btree.go