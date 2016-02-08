"use strict";

var bar = function bar(foo) {
  return 1;
};
var foo = function foo(bar) {
  return 1;
};
var foobar = function foobar() {
  return 1;
};
var foobar1 = function foobar1() {
  return 1;
};
var foobar2 = function foobar2() {
  return 2;
};
var foobar3 = function foobar3() {
  return 3;
};

console.log(foobar());
