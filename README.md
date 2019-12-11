This is a fork of [google btree library](https://github.com/google/btree "google btree library") with codegenerated tree versions for primitives. 

The fork supports 7 types - i32, i64, ui32, ui64, f32, f64, str. You can also add your own, it uses genny to generate code.

#### Benchmarks

Benchmarks were executed on macOS 10.13, 2,2 GHz Intel Core i7.
Data for tests: GeoLite2 free database (688196 leafs).

Original version with interfaces:
```
goos: darwin
goarch: amd64
pkg: geoip
BenchmarkFindAvail-8   	      20	  80365754 ns/op	 2806195 B/op	  175387 allocs/op
PASS
ok  	geoip	4.561s
```

Code-generated version with uint32:
```
goos: darwin
goarch: amd64
pkg: geoip
BenchmarkFindAvail-8   	      30	  55911166 ns/op	       2 B/op	       0 allocs/op
PASS
ok  	geoip	4.232s
```
