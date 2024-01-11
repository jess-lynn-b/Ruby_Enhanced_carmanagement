{ pkgs }: {
  deps = [
    pkgs.rubyPackages_3_0.rspec-core
    pkgs.rubyPackages.rspec-core
    pkgs.rubyPackages_3_1.rspec-core
    pkgs.bundle
    pkgs.ruby_3_1
    pkgs.rubyPackages_3_1.solargraph
  ];
}