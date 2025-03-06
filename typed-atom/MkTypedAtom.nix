atom@{
  type,
  ...
}:
let
  implementations = {
    rust = get.rust-atom;
  };

  missingImplementationError = abort "Missing implementation for atom type: ${type}";

in
{ }
