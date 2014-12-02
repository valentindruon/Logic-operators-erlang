% The purpose of this module is to learn how to use pattern matching.
% The aim is to write many binary operators as functions.
% The implementations may not be optimal, but this is my first day in functional and Erlang programming :)

-module(bool).

-export ([b_not/1, b_and/2, b_or/2, b_nand/2, b_nor/2, b_xor/2]).

% I've chosen to consider that atoms that are not true/false ones will be evaluated as false.

% Not operator implementation with functions
b_not(false) ->
  true;
b_not(true) ->
  false.

% And operator implementation with functions
% Expression is only evaluated as true if args are true
% Function does only accept atoms, so everything else will be evaluated as false
b_and(true, true) ->
  true;
b_and(_, _) ->
  false.

% Or operator implementation with functions
% Expression is only evaluated as true if one of the args is true
% Function does only accept atoms, so everything else that does not include true as
% at least one of args will be evaluated as false
b_or(true, _) ->
  true;
b_or(_, true) ->
  true;
b_or(_, _) ->
  false.

% Nand operator (Not and) implementation with functions
% Expression is only evaluated as true if one of the args is false
% As non atom values are accepted as false value, only true/true pair
% will be evaluated as false
b_nand(true, true) ->
  false;
b_nand(_, _) ->
  true.

% Nor (Not or) operator implementation with functions
% Expression is only evaluated as true if both argument are false
% As non atom values are accepted as false value, only true/_ and _/true
% pairs will be evaluated as false
b_nor(false, false) ->
  true;
b_nor(true, _) ->
  false;
b_nor(_, true) ->
  false;
b_nor(_, _) ->
  true.

% Xor (Exclusive or) operator implementation with functions
% Returns true only if one of the args is evaluated as true
% So if args are identical, returns false
% If args are other types than true or false atoms, evaluated as false
b_xor(Identical, Identical) ->
  false;
b_xor(true, _) ->
  true;
b_xor(_, true) ->
  true;
b_xor(_, _) ->
  false.
