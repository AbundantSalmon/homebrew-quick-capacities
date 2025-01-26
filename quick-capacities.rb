class QuickCapacities < Formula
  desc "CLI for quickly adding information to Capacities using its API"
  homepage "https://abundantsalmon.com"
  url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.10/qc.tar.gz"
  sha256 "bf8e0e97e690c890acc164e5686979875576f3ad67765ce80c4b9b6e0a9527ae"

  livecheck do
    url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.10/qc.tar.gz"
    strategy :github_latest
  end

  def install
    bin.install "qc"
  end

  test do
    system "#{bin}/qc", "--help"
  end
end
