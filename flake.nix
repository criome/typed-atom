{
  description = "typed-atom";

  inputs = {
    atom.url = "github:LiGoldragon/atom";
    rust-atom.url = "github:criome/rust-atom";
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/typed-atom@.toml");
}
