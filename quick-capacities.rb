class QuickCapacities < Formula
  desc "CLI for quickly adding information to Capacities using its API"
  homepage "https://abundantsalmon.com"
  url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.9/qc.tar.gz"
  sha256 "60fca5bc6a3fb6f6c397aa99dfe8e8c5392be52e345819062caf84bbb8db1d33"

  livecheck do
    url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.9/qc.tar.gz"
    strategy :github_latest
  end

  def install
    bin.install "qc"
  end

  test do
    system "#{bin}/qc", "--help"
  end
end
