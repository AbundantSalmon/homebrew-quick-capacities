class QuickCapacities < Formula
  desc "CLI for quickly adding information to Capacities using its API"
  homepage "https://abundantsalmon.com"
  url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.9/qc.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  livecheck do
    url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.9/qc.tar.gz"
    strategy :github_latest
  end

  def install
    bin.install "qc-osx-arm64" => "qc"
  end

  test do
    system "#{bin}/qc", "--help"
  end
end
