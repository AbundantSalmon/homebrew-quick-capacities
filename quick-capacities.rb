class QuickCapacities < Formula
  desc "CLI for quickly adding information to Capacities using its API"
  homepage "https://abundantsalmon.com"
  url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.7/qc-osx-arm64"
  sha256 "8f347e583abaeaddbfa8ecd376f42fc390fda11ac7ef9b2096d002529545a4f0"

  livecheck do
    url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.7/qc-osx-arm64"
    strategy :github_latest
  end

  def install
    bin.install "qc-osx-arm64" => "qc"
  end

  test do
    system "#{bin}/qc", "--help"
  end
end
