atom@{
  type,
  ...
}:
let
  implementations = [ "rust-atom" ];
  implementationExists = std.elem type implementations;

  missingImplementationError = abort "Missing implementation for atom type: ${type}";

  maker = get.${type}.make;

in
assert implementationExists || missingImplementationError;
maker atom
