{ lib, python3 }:

python3.pkgs.buildPythonApplication rec {
  pname = "pony";
  version = "0.0.1";

  src = ./.;

  propagatedBuildInputs = with python3.pkgs; [ setuptools click ];
}
