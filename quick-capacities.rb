class QuickCapacities < Formula
  desc "CLI for quickly adding information to Capacities using its API"
  homepage "https://abundantsalmon.com"
  url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.3/qc-osx-arm64"
  sha256 "3cd8cf522ccf79a22b379c1ab499593bd8b19a6a649f4438a1eef04a0b9ea81a"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "qc-osx-arm64" => "qc"
  end

  test do
    system "#{bin}/qc", "--help"
  end
end
