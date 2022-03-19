{ lib }:
lib.makeExtensible (self: {
  rakeLeaves = lib.rakeLeaves;
})
